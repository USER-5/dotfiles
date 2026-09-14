{ config, pkgs, ... }:

{
  programs = {
    ghostty = {
      enable = true;
      enableBashIntegration = true;
      settings = {
        theme = "Nightfox";
        font-family = "JetBrainsMono Nerd Font Mono";
        font-size = 10;
        macos-option-as-alt = true;
      };
    };
  };

  home.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];
}
