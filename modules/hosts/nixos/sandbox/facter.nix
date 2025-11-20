{inputs, ...}: {
  flake.modules.nixos.host_sandbox = {
    imports = [
      inputs.nixos-facter-modules.nixosModules.facter
      {
        config.facter.reportPath = ./facter.json;
      }
    ];
  };
}
