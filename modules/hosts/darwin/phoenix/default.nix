{
  lib,
  self,
  ...
}: {
  easy-hosts.hosts.phoenix = {
    arch = "x86_64";
    class = "darwin";
    modules = [
      self.modules.darwin.core
      self.modules.darwin.host_phoenix
      {
        networking.computerName = lib.mkForce "phoenix";
        networking.hostName = lib.mkForce "phoenix";
        networking.localHostName = lib.mkForce "phoenix";

        system.stateVersion = 6;
      }
    ];
  };
}
