{flake, ...}: {
  imports = [
    flake.nixosModules.clientHost

    flake.nixosModules.ollama
    flake.nixosModules.xfce

    flake.inputs.disko.nixosModules.disko
    ./disk.nix

    flake.inputs.nixos-facter-modules.nixosModules.facter
    {
      config.facter.reportPath = ./facter.json;
    }
  ];

  nixpkgs.hostPlatform = "x86_64-linux";

  system.stateVersion = "26.05";
}
