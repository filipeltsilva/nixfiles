{
  flake.homeModules = {
    dev.fish = {
      config,
      lib,
      ...
    }: {
      options.homeManager.modules.dev.fish = {
        enable = lib.mkEnableOption "Enable Fish shell";
      };

      config = lib.mkIf config.homeManager.modules.dev.fish.enable {
        programs.fish = {
          enable = true;

          functions = {
            fish_greeting = "";
          };

          shellAliases = {
            cat = "bat";
            nfc = "nix flake check";
            nfu = "nix flake update";
            nrb = "sudo nixos-rebuild switch --flake .";
            q = "exit";
          };
        };
      };
    };
  };
}
