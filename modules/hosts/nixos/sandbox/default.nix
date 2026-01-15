{
  lib,
  self,
  ...
}: {
  easy-hosts.hosts.sandbox = {
    arch = "x86_64";
    class = "nixos";
    modules = [
      self.modules.nixos.core
      self.modules.nixos.host_sandbox
      self.modules.nixos.xfce
      {
        networking.hostName = lib.mkForce "sandbox";
        system.stateVersion = "25.05";
      }
    ];
  };
}
