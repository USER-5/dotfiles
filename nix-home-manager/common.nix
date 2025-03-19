{ config, pkgs, ... }:

{

  programs.direnv.enable = true;

  programs.eza = {
    enable = true;
    icons = "auto";
  };

  programs.git = {
    enable = true;
    delta.enable = true;
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

  programs.starship = {
    enable = true;
    settings.git_status.disabled = true;
  };

  programs.bash.enable = true;
  programs.zsh = {
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

  programs.fd.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.packages = [
    pkgs.fzf
    pkgs.htop
    pkgs.jq
    pkgs.nixfmt-rfc-style
    pkgs.ripgrep
    pkgs.yq-go
    pkgs.zellij
  ];

  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
  ];

  home.shellAliases = {
    ls = "eza --icons";
    ll = "eza --icons -l";
    zellij-clean = "for SESS in $(zellij ls -s -n); do zellij delete-session \"$SESS\"; done";
  };

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
}
