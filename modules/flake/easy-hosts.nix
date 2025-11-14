{
  inputs,
  self,
  ...
}: {
  imports = [
    inputs.easy-hosts.flakeModule
  ];

  easy-hosts = {
    hosts.sandbox = {
      arch = "x86_64";
      class = "nixos";
      modules = [
        self.modules.nixos.sandbox
      ];
    };
  };
}
