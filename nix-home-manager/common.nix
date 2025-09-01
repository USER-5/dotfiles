{ config, pkgs, ... }:

{

  programs.direnv.enable = true;

  programs.eza = {
    enable = true;
    icons = "auto";
  };

  programs.bat = {
    enable = true;
  };

  programs.git = {
    enable = true;
    delta.enable = true;
    aliases = {
      ci = "commit";
      lg = "log --oneline --decorate --graph";
      pl = "!git pull origin $(git rev-parse --abbrev-ref HEAD)";
    };
    extraConfig = {
      push.autosetupremote = "true";
      color.diff.new = "blue";
      delta.plus-style = "auto darkblue";
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

  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
  ];

  home.packages = [
    pkgs.fzf
    pkgs.htop
    pkgs.jq
    pkgs.nixfmt-rfc-style
    pkgs.vtsls
    pkgs.vscode-langservers-extracted
    pkgs.lua-language-server
    pkgs.pyright
    pkgs.ruff
    pkgs.java-language-server
    pkgs.ripgrep
    pkgs.yq-go
    pkgs.zellij
  ];

  home.shellAliases = {
    ls = "eza --icons";
    ll = "eza --icons -l";
    zellij-clean = "for SESS in $(zellij ls -s -n); do zellij delete-session \"$SESS\"; done";
    copy = "printf '\\033]52;c;%s\\a' \"$(cat | base64 | tr -d '\\n')\"";
  };

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
}
