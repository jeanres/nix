{ pkgs, inputs, system, ... }:

{
  programs.kitty = {
    enable = true;
    font = {
      name = "Menlo";
      size = 14;
    };

    theme = "Tokyo Night"; # TODO: Pick a theme

    settings = {
      enable_audio_bell = false;
    };
  };
}
