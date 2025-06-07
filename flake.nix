{
  description = "The good and old dotfiles, but written in Nix!";

  nixConfig = {
    auto-optimise-store = true;
    builders-use-substitutes = true;
    connect-timeout = 300;
    cores = 0;
    download-attempts = 3;
    http-connections = 0;
    sandbox = true;
    use-xdg-base-directories = true;
    warn-dirty = false;
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixvim,
    stylix,
    ...
  } @ inputs: let
    inherit (self) outputs;
  in {
    nixosConfigurations = {
      sandbox = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs outputs;};
        modules = [
          ./machines/sandbox
          # inputs.home-manager.nixosModules.home-manager
          # {
          #   home-manager = {
          #     backupFileExtension = "hm_backup";
          #     useGlobalPkgs = true;
          #     useUserPackages = true;
          #     users.filipelemos = {
          #       import = [./home/sandbox];
          #
          #       home = {
          #         username = "Filipe Lemos";
          #         homeDirectory = "/home/filipelemos";
          #         stateVersion = "25.11";
          #       };
          #
          #       programs.home-manager.enable = true;
          #     };
          #     extraSpecialArgs = {inherit inputs;};
          #   };
          # }
        ];
      };
    };
  };
}
