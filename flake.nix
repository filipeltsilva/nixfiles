{
  description = "The good and old dotfiles, but written in Nix this time.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixGL = {
      url = "github:nix-community/nixGL";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, nixGL, ... }:
    let
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        overlays = [
          nixGL.overlay
        ];
      };
    in {
      homeConfigurations = {
        "filipelemos" = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          modules = [ ./home.nix ];
          extraSpecialArgs = {
            inherit nixGL;
            withGUI = true;
          };
        };
      };
    };
}
