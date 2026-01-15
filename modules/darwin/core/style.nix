{inputs, ...}: {
  flake.modules.darwin.core = {pkgs, ...}: {
    imports = [
      inputs.stylix.darwinModules.stylix
    ];

    stylix = {
      enable = true;
      base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-mirage.yaml";
      polarity = "dark";

      fonts = {
        monospace = {
          name = "JetBrains Mono";
          package = pkgs.nerd-fonts.jetbrains-mono;
        };
      };
    };
  };
}
