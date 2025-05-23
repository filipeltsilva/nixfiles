{
  description = "The good and old dotfiles, but written in Nix!";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    disko,
    home-manager,
    nixvim,
    stylix,
    ...
  }: {
    nixosConfigurations = {
      sandbox = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          hosts/sandbox

          inputs.home-manager.nixosModules.home-manager
          {
            home-manager = {
              backupFileExtension = "hm-backup";
              useGlobalPkgs = true;
              useUserPackages = true;
              users.filipelemos = import ./home-manager/sandbox.nix;
              extraSpecialArgs = {inherit inputs;};
            };
          }
        ];
      };
    };
  };
}
