{inputs, ...}: {
  imports = [
    inputs.easy-hosts.flakeModule
  ];

  config.easy-hosts = {
    hosts = {
      sandbox = {
        arch = "x86_64";
        class = "nixos";
        path = ./nixos/sandbox;
      };
    };
  };
}
