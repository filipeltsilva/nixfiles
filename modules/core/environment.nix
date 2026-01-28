{
  flake.modules.generic.core = {
    environment.shellAliases = {
      cat = "bat";
      nfc = "nix flake check --all-systems";
      nfu = "nix flake update";
      nrb = "sudo nixos-rebuild switch --flake .";
      q = "exit";
    };
  };
}
