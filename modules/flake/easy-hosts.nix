{
  inputs,
  self,
  ...
}: {
  imports = [
    inputs.easy-hosts.flakeModule
  ];

  easy-hosts.shared.modules = [
    self.modules.generic.core
  ];
}
