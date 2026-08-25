{
  shellAliases = {
    cat = "bat";
    ncg = "nix-collect-garbage -d";
    nfc = "nix flake check --all-systems";
    nfu = "nix flake update";
    nrb = "sudo nixos-rebuild switch --flake .";
    q = "exit";
  };
}
