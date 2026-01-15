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
      self.modules.darwin.host_nebuchadnezzar
      {
        networking.hostName = lib.mkForce "nebuchadnezzar";
        system.stateVersion = 6;
      }
    ];
  };
}
