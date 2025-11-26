{
  lib,
  self,
  ...
}: {
  easy-hosts.hosts.sandbox = {
    arch = "x86_64";
    class = "nixos";
    modules = with self.modules.nixos;
      [
        core_settings
        base
        host_sandbox
        xfce
      ]
      ++ [
        {
          networking.hostName = lib.mkForce "sandbox";
          system.stateVersion = "25.05";
        }
      ];
  };
}
