{
  flake,
  pkgs,
  ...
}: {
  imports = [
    flake.inputs.nix-homebrew.darwinModules.nix-homebrew
    {
      nix-homebrew = {
        autoMigrate = true;
        enable = true;
        enableRosetta = pkgs.stdenv.system == "aarch64-darwin";

        taps = {
          "homebrew/homebrew-core" = flake.inputs.homebrew-core;
          "homebrew/homebrew-cask" = flake.inputs.homebrew-cask;
        };
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
      "mise"
    ];

    casks = [
      "claude"
      # "firefox"
      # "ghostty"
      "telegram"
      "whatsapp"
      "windows-app"
    ];

    onActivation = {
      autoUpdate = true;
      upgrade = true;
    };
  };
}
