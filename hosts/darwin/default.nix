{pkgs, ... }:

{
  nix = {
    package = pkgs.nixUnstable;
    extraOptions = ''
      extra-platforms = aarch64-darwin
      experimental-features = nix-command flakes
    '';
  };

  programs.zsh.enable = true;

  services.nix-daemon.enable = true;
}
