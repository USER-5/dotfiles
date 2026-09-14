{ config, pkgs, ... }:

{
  programs.git.settings.user = {
    email = "yousirfive@gmail.com";
    name = "USER-5";
  };
}
