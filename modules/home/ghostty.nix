{pkgs, ...}: {
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      command = "${pkgs.zsh}/bin/zsh";
      confirm-close-surface = false;
      maximize = true;
    };

    package =
      if pkgs.stdenv.hostPlatform.isDarwin
      then
        pkgs.writeShellScriptBin "ghostty" ''
          #!/bin/sh
          # Detect Homebrew path based on architecture
          if [ -d "/opt/homebrew/bin" ] && [ -x "/opt/homebrew/bin/ghostty" ]; then
            HOMEBREW_GHOSTTY="/opt/homebrew/bin/ghostty"
          elif [ -d "/usr/local/bin" ] && [ -x "/usr/local/bin/ghostty" ]; then
            HOMEBREW_GHOSTTY="/usr/local/bin/ghostty"
          else
            # Fallback to PATH-based lookup
            HOMEBREW_GHOSTTY="$(which ghostty)"
          fi

          # Execute Homebrew's ghostty if found, otherwise show error
          if [ -n "$HOMEBREW_GHOSTTY" ] && [ -x "$HOMEBREW_GHOSTTY" ]; then
            exec "$HOMEBREW_GHOSTTY" "$@"
          else
            echo "Error: Homebrew ghostty not found" >&2
            exit 1
          fi
        ''
      else pkgs.ghostty;
  };
}
