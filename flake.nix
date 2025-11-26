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
    nixos-client.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    easy-hosts.url = "github:tgirlcloud/easy-hosts";

    flake-parts.url = "github:hercules-ci/flake-parts";

    import-tree.url = "github:vic/import-tree";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nix-darwin.url = "github:nix-darwin/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";

    homebrew-cask.url = "github:homebrew/homebrew-cask";
    homebrew-cask.flake = false;

    homebrew-core.url = "github:homebrew/homebrew-core";
    homebrew-core.flake = false;

    nixos-facter-modules.url = "github:nix-community/nixos-facter-modules";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs: let
    me = {
      user = "filipelemos";
      userEmail = "contato@filipelemos.com";
      userFullName = "Filipe Lemos";
    };
  in
    inputs.flake-parts.lib.mkFlake {
      inherit inputs;
      specialArgs = {inherit me;};
    } (inputs.import-tree ./modules);
}
