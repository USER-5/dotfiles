{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.opencode
    pkgs.ollama
  ];
}
