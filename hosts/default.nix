{self, ...}: {
  easy-hosts = {
    # hosts = {
    #   sandbox = {
    #     arch = "x86_64";
    #     class = "nixos";
    #     path = ./nixos/sandbox;
    #   };
    # };
    shared.modules = [
      self.flakeModules.default
    ];
  };
}
