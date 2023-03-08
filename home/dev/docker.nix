{ pkgs, inputs, system, ... }:

{
  programs.docker = {
    enable = true;
  };
}
