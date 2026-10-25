{ config, pkgs, ... }:

{
  services.ollama.enable = true;
  home.packages = [
    pkgs.opencode
  ];

  home.shellAliases = {
    llm = "ollama launch opencode --model qwen3.5:9b";
    llmtiny = "ollama launch opencode --model qwen3.5:0.8b";
    llmsmall = "ollama launch opencode --model qwen3.5:2b";
    llmlarge = "ollama launch opencode --model qwen3.5:27b";
  };
}
