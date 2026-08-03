{flake, ...}: {
  imports = [
    flake.nixosModules.clientHost

    flake.nixosModules.ollama
    flake.nixosModules.xfce

    flake.inputs.nixos-facter-modules.nixosModules.facter
    {
      config.facter.reportPath = ./facter.json;
    }

    ./hardware-configuration.nix
  ];

  nixpkgs.hostPlatform = "x86_64-linux";

  security.sudo.wheelNeedsPassword = false;

  system.stateVersion = "26.05";
}
