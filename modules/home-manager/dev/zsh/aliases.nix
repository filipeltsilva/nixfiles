{
  programs.zsh.shellAliases = {
    nfc = "nix flake check";
    nfu = "nix flake update";
    nrb = "sudo nixos-rebuild switch --flake .";
    q = "exit";
  };
}
