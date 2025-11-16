{
  config,
  inputs,
  lib,
  ...
}: {
  easy-hosts.hosts.sandbox = {
    arch = "x86_64";
    class = "nixos";
    modules = with config.flake.modules.nixos;
      [
        core_settings
        core_host
        host_sandbox
      ]
      ++ [
        inputs.nixos-facter-modules.nixosModules.facter
        {
          config.facter.reportPath = ./facter.json;
        }

        {
          networking.hostName = lib.mkForce "sandbox";

          system.stateVersion = "25.05";
        }
      ];
  };
}
