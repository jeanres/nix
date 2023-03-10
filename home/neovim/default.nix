{ pkgs, inputs, system, ... }:

{
  home.packages = with pkgs; [ neovim ];
  xdg.configFile = {
    "nvim/init.lua" = {
      source = ./init.lua;
    };
    "nvim/lua" = {
      source = ./lua;
      recursive = true;
    };
    "nvim/ftplugin" = {
      source = ./ftplugin;
      recursive = true;
    };

    "nvim/after" = {
      source = ./after;
      recursive = true;
    };
  };
}
