{
  description = "The good and old dotfiles, but written in Nix!";

  nixConfig = {
    builders-use-substitutes = true;
    connect-timeout = 300;
    download-attempts = 3;
    http-connections = 0;
    use-xdg-base-directories = true;
    warn-dirty = false;
  };

  inputs = {
    nixos.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    
    darwin.url = "github:nix-darwin/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs-unstable";
    
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs-unstable";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs-unstable";

    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs-unstable";
  };

  outputs = {self, ...} @ inputs: let
    inherit (self) outputs;

    user = "filipelemos";
    userEmail = "contato@filipelemos.com";
    userFullName = "Filipe Lemos";

    myLib = import ./helpers {inherit inputs outputs user userEmail userFullName;};
  in {
    nixosConfigurations = {
      sandbox = myLib.createNixosMachine {machineName = "sandbox";};
    };
  };
}
