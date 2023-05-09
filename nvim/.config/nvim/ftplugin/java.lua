local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local config = {
	cmd = {
		'java',

		'-Declipse.application=org.eclipse.jdt.ls.core.id1',
		'-Dosgi.bundles.defaultStartLevel=4',
		'-Declipse.product=org.eclipse.jdt.ls.core.product',
		'-Dlog.protocol=true',
		'-Dlog.level=ALL',
		'-Xmx1g',
		'--add-modules=ALL-SYSTEM',
		'--add-opens', 'java.base/java.util=ALL-UNNAMED',
		'--add-opens', 'java.base/java.lang=ALL-UNNAMED',
		'-javaagent:/opt/jdtls/deps/lombok.jar',

		'-jar', '/opt/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',

		'-configuration', '/opt/jdtls/config_linux',
		'-data', '/opt/jdtls/workspaces/' .. project_name
	},
	root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew', 'gradle', 'build.gradle'}),
	settings = {
		java = {
			configuration = {
				runtimes = {
					{
						name = 'JavaSE-11',
						path = '/usr/lib/jvm/java-11-openjdk-amd64/',
					},
					{
						name = 'JavaSE-17',
						path = '/usr/lib/jvm/java-17-openjdk-amd64/',
					}
				}
			},
			import = {
				gradle = {
					wrapper = {
						checksums = {
							{sha256 = '91a239400bb638f36a1795d8fdf7939d532cdc7d794d1119b7261aac158b1e60', allowed = true}
						}
					}
				}
			},
			format = {
				settings = {
					url = '/var/formatter.xml'
				}
			},
			signatureHelp = { enabled =  true}
		}
	}
}

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, noremap)
vim.keymap.set('n', '<leader>.', vim.lsp.buf.code_action, noremap)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, noremap)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, noremap)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, noremap)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, noremap)
vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, noremap)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, noremap)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, noremap)
vim.keymap.set('n', '<leader>o',
	function()
		vim.lsp.buf.format()
		require('jdtls').organize_imports()
	end, noremap)

require('jdtls').start_or_attach(config)
