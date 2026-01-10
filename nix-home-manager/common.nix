{ config, pkgs, ... }:

{

  programs = {
    direnv.enable = true;

    eza = {
      enable = true;
      icons = "auto";
    };

    bat.enable = true;

    git = {
      enable = true;
      settings = {
        push.autosetupremote = "true";
        color.diff.new = "blue";
        delta.plus-style = "auto darkblue";
        alias = {
          ci = "commit";
          lg = "log --oneline --decorate --graph";
          pl = "!git pull origin $(git rev-parse --abbrev-ref HEAD)";
        };
      };
      lfs.enable = true;
    };

    delta = {
      enable = true;
      enableGitIntegration = true;
    };

    zoxide = {
      enable = true;
      options = [ "--cmd cd" ];
    };

    starship = {
      enable = true;
      settings.git_status.disabled = true;
    };

    bash.enable = true;

    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

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

    };

    fd.enable = true;

    neovim = {
      enable = true;
      defaultEditor = true;
    };
  };

  home = {
    sessionPath = [
      "$HOME/.local/bin"
      "$HOME/.cargo/bin"
    ];

    sessionVariables = {
      PNPM_HOME = "$HOME/.local/bin";
    };

    packages = [
      pkgs.fzf
      pkgs.htop
      pkgs.jq
      pkgs.nixfmt-rfc-style
      pkgs.vtsls
      pkgs.vscode-langservers-extracted
      pkgs.lua-language-server
      pkgs.pyright
      pkgs.ruff
      pkgs.jdt-language-server
      pkgs.ripgrep
      pkgs.yq-go
      pkgs.zellij
    ];

    shellAliases = {
      ls = "eza --icons";
      ll = "eza --icons -l";
      zellij-clean = "for SESS in $(zellij ls -s -n); do zellij delete-session \"$SESS\"; done";
    };
  };

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
}
