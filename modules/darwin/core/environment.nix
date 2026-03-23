{
  flake.modules.darwin.core = {pkgs, ...}: {
    environment = {
      shellAliases = {
        drb = "sudo darwin-rebuild switch --flake .";
      };
      systemPackages = with pkgs; [
        oterm
      ];
    };
  };
}
