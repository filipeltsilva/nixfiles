{pkgs, ...}: {
  flake.modules.nixos.hosts.sandbox = {
    stylix = {
      enable = true;
      base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-mirage.yaml";
      polarity = "dark";

      cursor = {
        name = "Banana";
        package = pkgs.banana-cursor;
        size = 24;
      };

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
          package = pkgs.noto-fonts-emoji;
        };
      };
    };
  };
}
