{
  flake,
  pkgs,
  ...
}: {
  imports = [
    flake.nixosModules.clientHost

    flake.nixosModules.ollama
    flake.nixosModules.xfce

    flake.inputs.nixos-facter-modules.nixosModules.facter
    {
      config.facter.reportPath = ./facter.json;
    }

    ./disko-configuration.nix
    ./hardware-configuration.nix
  ];

  console.useXkbConfig = true;

  environment.systemPackages = with pkgs; [
    brightnessctl
  ];

  nixpkgs.hostPlatform = "x86_64-linux";

  security.sudo.wheelNeedsPassword = false;

  system.stateVersion = "26.05";
}
