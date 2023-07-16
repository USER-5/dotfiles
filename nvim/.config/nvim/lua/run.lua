-- "run" keybind
vim.keymap.set("n", "<leader>r", ":lua NvimRun()<CR>")

local runFileBase = ".nvim-run"
local fSRoot = "etc"

-- traverse upwards through the filesystem until either:
-- - <runFileBase> is found, or
-- - <FSRoot> is found (indicating the filesystem root)
local function findRunFile()
	local relativePath = ""
	while (vim.fn.filereadable(relativePath .. runFileBase) == 0) do
		relativePath = "../" .. relativePath
		if (vim.fn.isdirectory(relativePath .. fSRoot) == 1) then
			return false
		end
	end
	return relativePath .. runFileBase
end

local function tryCreateRunFile()
	print("Current base directory is " .. vim.fn.getcwd())
	vim.ui.input({
		prompt = "No runfile detected. Choose a directory for the file ('" .. runFileBase .. "') to live in, relative to the base directory: ",
		completion = "dir",
		default = ".",
	}, function(input)
		if input ~= nil then
			input = input .. "/" .. runFileBase
			vim.cmd(':silent ! echo "\\#\\!/usr/bin/env bash" > ' .. input)
			vim.cmd(":silent ! chmod +x " .. input)
			vim.cmd.edit(input)
		end
	end)
end

-- "Run" command - will try to run <project-root>/.nvim-run if it exists, otherwise will prompt you to make a file
function _G.NvimRun()
	local runfile = findRunFile()
	if (runfile == false) then
		-- Prompt to create one.
		tryCreateRunFile()
	else
		-- run the script
		print("Running '" .. runfile .. "'")
		vim.cmd(":!COLUMNS=" .. vim.o.co .. " ./" .. runfile)
	end
end
