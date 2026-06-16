{
  inputs,
  me,
  ...
}: {
  flake.modules.darwin.core = {pkgs, ...}: {
    imports = [
      inputs.nix-homebrew.darwinModules.nix-homebrew
      {
        nix-homebrew = {
          autoMigrate = true;
          enable = true;
          enableRosetta = pkgs.stdenv.system == "aarch64-darwin";

          taps = {
            "homebrew/homebrew-core" = inputs.homebrew-core;
            "homebrew/homebrew-cask" = inputs.homebrew-cask;
          };

          user = "${me.user}";
        };
      }
    ];
    homebrew = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;

      brews = [
        "mas"
      ];

      casks = [
        "windows-app"
      ];

      onActivation = {
        autoUpdate = true;
        upgrade = true;
      };
    };
  };
}
