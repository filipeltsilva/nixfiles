{
  description = "The good and old dotfiles, but written in Nix!";

  inputs = {
    # easy-hosts.url = "github:tgirlcloud/easy-hosts";
    # ez-configs.url = "github:ehllie/ez-configs";

    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    flake-parts.url = "github:hercules-ci/flake-parts";

    homebrew-cask.url = "github:homebrew/homebrew-cask";
    homebrew-cask.flake = false;

    homebrew-core.url = "github:homebrew/homebrew-core";
    homebrew-core.flake = false;

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    home-manager-darwin.url = "github:nix-community/home-manager/release-26.05";
    home-manager-darwin.inputs.nixpkgs.follows = "nixpkgs-darwin";

    # import-tree.url = "github:vic/import-tree";

    nix-darwin.url = "github:nix-darwin/nix-darwin/nix-darwin-26.05";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs-darwin";

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";

    nixos-facter-modules.url = "github:nix-community/nixos-facter-modules";

    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixpkgs-darwin.url = "github:nixos/nixpkgs/nixpkgs-26.05-darwin";

    nix-wire.url = "github:semi710/nix-wire";

    # nixvim.url = "github:nix-community/nixvim";
    # nixvim.inputs.nixpkgs.follows = "nixpkgs";

    nvf.url = "github:notashelf/nvf";
    nvf.inputs.nixpkgs.follows = "nixpkgs";

    nvf-darwin.url = "github:notashelf/nvf";
    nvf-darwin.inputs.nixpkgs.follows = "nixpkgs-darwin";

    sops-nix.url = "github:Mic92/sops-nix";
    sops-nix.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:nix-community/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";

    stylix-darwin.url = "github:nix-community/stylix/release-26.05";
    stylix-darwin.inputs.nixpkgs.follows = "nixpkgs-darwin";
  };

  outputs = inputs: inputs.nix-wire.mkFlake {inherit inputs;};
}
