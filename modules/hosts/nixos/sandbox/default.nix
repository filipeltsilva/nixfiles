{
  lib,
  inputs,
  pkgs,
  self,
  ...
}: {
  easy-hosts.hosts.sandbox = {
    arch = "x86_64";
    class = "nixos";
    modules = with (self.modules.nixos);
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

          environment.systemPackages = with pkgs; [
            neovim
          ];

          system.stateVersion = "25.05";
        }
      ];
  };
}
