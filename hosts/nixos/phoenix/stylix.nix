{
  flake,
  pkgs,
  ...
}: {
  imports = [
    flake.inputs.stylix.nixosModules.stylix
  ];

  # Disable kmscon to prevent conflicts with Stylix font management
  # services.kmscon.enable = false;

  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/dracula.yaml";
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
        package = pkgs.noto-fonts-color-emoji;
      };
    };

    targets.kmscon.enable = false;
  };
}
