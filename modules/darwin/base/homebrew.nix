{
  inputs,
  me,
  ...
}: {
  flake.modules.darwin.base = {
    imports = [
      inputs.nix-homebrew.darwinModules.nix-homebrew
      {
        nix-homebrew = {
          enable = true;

          taps = {
            "homebrew/homebrew-core" = inputs.homebrew-core;
            "homebrew/homebrew-cask" = inputs.homebrew-cask;
          };

          user = "${me.user}";
        };
      }
    ];
  };
}
