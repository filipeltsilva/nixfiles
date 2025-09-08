{
  inputs,
  outputs,
  user,
  userEmail,
  userFullName,
  ...
}: {
  createDarwinMachine = {
    machineName,
    machineConfiguration ? ../machines/darwin/${machineName},
  }:
    inputs.darwin.lib.darwinSystem {
      modules = [
        ../machines/darwin
        machineConfiguration
      ];

      specialArgs = {inherit inputs outputs user userEmail userFullName;};
    };

  createNixosMachine = {
    machineName,
    machineConfiguration ? ../machines/nixos/${machineName},
  }:
    inputs.nixpkgs.lib.nixosSystem {
      modules = [
        ../machines/nixos
        machineConfiguration
      ];

      specialArgs = {inherit inputs outputs user userEmail userFullName;};
    };
}
