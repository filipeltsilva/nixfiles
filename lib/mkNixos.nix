{
  inputs,
  outputs,
  ...
}: {
  mkNixos = {hostname}:
    inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs outputs;
      };
      modules = [
        ../machines/${hostname}
      ];
    };
}
