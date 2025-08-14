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
        ./helpers/machines/nixos.nix
        ../machines/nixos/${hostname}
      ];
    };
}
