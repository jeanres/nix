{pkgs, ... }:

{
  nix = {
    package = pkgs.nixUnstable;
    extraOptions = ''
      extra-platforms = aarch64-darwin
      experimental-features = nix-command flakes
    '';
  };

  fonts.enableFontDir = true;
  fonts.fonts = with pkgs; [
    recursive
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  programs.zsh.enable = true;

  services.nix-daemon.enable = true;
}
