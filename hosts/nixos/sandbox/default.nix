{
  flake,
  inputs,
  ...
}: {
  imports = [
    flake.nixosModules.clientHost
    flake.nixosModules.defaultSettings

    flake.nixosModules.ollama
    flake.nixosModules.xfce

    inputs.nixos-facter-modules.nixosModules.facter
    {
      config.facter.reportPath = ./facter.json;
    }
  ];

  system.stateVersion = "26.05";
}
