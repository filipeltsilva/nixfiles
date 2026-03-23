{
  flake.modules.generic.core = {pkgs, ...}: {
    environment = {
      shellAliases = {
        cat = "bat";
        ncg = "nix-collect-garbage -d";
        nfc = "nix flake check --all-systems";
        nfu = "nix flake update";
        q = "exit";
      };
    };
  };
}
