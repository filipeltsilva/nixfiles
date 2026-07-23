{
  flake,
  inputs,
  ...
}: {
  imports = with flake.nixosModules;
    [
      defaultSettings
      xfce
    ]
    ++ [
      inputs.nixos-facter-modules.nixosModules.facter
      {
        config.facter.reportPath = ./facter.json;
      }
    ];

  system.stateVersion = "25.05";
}
