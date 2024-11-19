{ config, pkgs, ... }:

{

  programs.direnv.enable = true;

  programs.eza = {
    enable = true;
    icons = "auto";
  };

  programs.git = {
    enable = true;
    diff-so-fancy.enable = true;
    aliases = {
      ci = "commit";
      lg = "log --oneline --decorate --graph";
    };
    extraConfig = {
      push.autosetupremote = "true";
      color.diff.new = "blue";
    };
    lfs.enable = true;
  };

  programs.zoxide = {
    enable = true;
    options = [ "--cmd cd" ];
  };

  programs.starship.enable = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "eza --icons";
      ll = "eza --icons -l";
    };

    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/.histfile";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      extraConfig = ''
        zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
        zstyle ':completion:*' matcher-list ""
      '';
    };

    envExtra = ''
      . "$HOME/.cargo/env"
    '';

  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.packages = [
    pkgs.nixfmt-rfc-style
    pkgs.fd
    pkgs.ripgrep
    pkgs.zellij
  ];

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
}
