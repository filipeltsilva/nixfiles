{
  flake.modules.darwin.core = {
    nix = {
      gc = {
        automatic = true;
        interval = {
          Hour = 12;
          Minute = 00;
        };
        options = "--delete-older-than 7d";
      };

      linux-builder = {
        enable = true;
        systems = [
          "x86_64-linux"
          "aarch64-linux"
        ];
      };
    };
  };
}
