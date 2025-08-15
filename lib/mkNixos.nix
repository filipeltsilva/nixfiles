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
        ./helpers/machines/nixos
        ./helpers/nixpkgs.nix
        ../machines/nixos/${hostname}
      ];
    };
}
