{inputs, ...}: {
  flake.modules.darwin.base = {pkgs, ...}: {
    imports = [
      inputs.stylix.darwinModules.stylix
    ];

    stylix = {
      enable = true;
      base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-mirage.yaml";
      polarity = "dark";

      fonts = {
        serif = {
          name = "Noto Serif";
          package = pkgs.noto-fonts;
        };
        sansSerif = {
          name = "Noto Sans";
          package = pkgs.noto-fonts;
        };
        monospace = {
          name = "Hack";
          package = pkgs.hack-font;
        };
        emoji = {
          name = "Noto Color Emoji";
          package = pkgs.noto-fonts-color-emoji;
        };
      };
    };
  };
}
