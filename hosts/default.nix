{inputs, ...}: {
  imports = [
    inputs.easy-hosts.flakeModule
  ];

  easy-hosts = {
    hosts = {
      sandbox = {
        arch = "x86_64";
        class = "nixos";
        path = ./nixos/sandbox;
      };
    };
    shared.modules = [(import inputs.import-tree ../modules)];
  };
}
