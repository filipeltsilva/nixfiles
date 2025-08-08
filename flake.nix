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
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nix-darwin.url = "github:nix-darwin/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {self, ...} @ inputs: let
    inherit (self) outputs;
    libx = import ./lib {inherit inputs outputs;};
  in {
    nixosConfigurations = {
      sandbox = libx.mkNixos {hostname = "sandbox";};
    };
  };
}
