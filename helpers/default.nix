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
    machineConfiguration ? ../nixos/machines/${machineName},
  }:
    inputs.nixos-client.lib.nixosSystem {
      modules = [
        machineConfiguration
      ];

      specialArgs = {inherit inputs outputs user userEmail userFullName;};
    };
}
