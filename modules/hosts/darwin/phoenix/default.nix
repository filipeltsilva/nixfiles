{
  inputs,
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

        nixpkgs.hostPlatform = "x86_64-darwin";

        system.stateVersion = 6;
      }
    ];
  };
}
