{
  programs.zsh.shellAliases = {
    cat = "bat";
    nfc = "nix flake check";
    nfu = "nix flake update";
    nrb = "sudo nixos-rebuild switch --flake .";
    q = "exit";
  };
}
