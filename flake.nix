{
  description = "Jeanre's darwin system";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    darwin.url = "github:lnl7/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, darwin, nixpkgs, home-manager }: {
    darwinConfigurations = {
      "JeanresnderLabz"  = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [
          ./hosts/darwin
            home-manager.darwinModules.home-manager {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users."jeanre.swanepoel" = { pkgs, ... }: {
                imports = [
                  ./home/shell
                    ./home/neovim
                    ./home/terminal
                ];
                home.stateVersion = "22.11";
              };
            }
        ];

      };
      "JeanresPersonal" = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [
          ./hosts/darwin
            home-manager.darwinModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users."jeanre.swanepoel" = { pkgs, ... }: {
                imports = [
                  ./home/shell
                    ./home/neovim
                    ./home/terminal
                    ./home/docker
                ];
                home.stateVersion = "22.11";
              };
            }
        ];
      };

    };
  };
}
