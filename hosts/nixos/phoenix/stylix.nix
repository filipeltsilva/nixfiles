{
  flake,
  pkgs,
  ...
}: let
  fontSize = 11;
  theme = "dracula";
in {
  imports = [
    flake.inputs.stylix.nixosModules.stylix
  ];

  # Disable kmscon to prevent conflicts with Stylix font management
  # services.kmscon.enable = false;

  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/${theme}.yaml";
    polarity = "dark";

    cursor = {
      name = "Banana";
      package = pkgs.banana-cursor;
      size = 24;
    };

    fonts = {
      emoji = {
        name = "Noto Color Emoji";
        package = pkgs.noto-fonts-color-emoji;
      };

      monospace = {
        name = "Hack Nerd Font Mono";
        package = pkgs.nerd-fonts.hack;
      };

      sansSerif = {
        name = "Noto Sans";
        package = pkgs.noto-fonts;
      };

      serif = {
        name = "Noto Serif";
        package = pkgs.noto-fonts;
      };

      sizes = {
        applications = fontSize;
        desktop = fontSize - 1;
        popups = fontSize - 1;
        terminal = fontSize - 1;
      };
    };

    icons = {
      enable = true;
      dark = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    targets.kmscon.enable = false;
  };
}
