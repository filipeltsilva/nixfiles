{
  lib,
  self,
  ...
}: {
  easy-hosts.hosts.nebuchadnezzar = {
    arch = "x86_64";
    class = "darwin";
    modules = [
      self.modules.darwin.core
      {
        networking.hostName = lib.mkForce "nebuchadnezzar";
        system.stateVersion = 6;
      }
    ];
  };
}
