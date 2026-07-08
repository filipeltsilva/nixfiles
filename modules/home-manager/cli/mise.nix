{
  flake.modules.homeManager.cli = {pkgs, ...}: {
    programs.mise = {
      enable = true;
      # Use wrapper script on Darwin to delegate to Homebrew installation
      package =
        if pkgs.stdenv.isDarwin
        then
          pkgs.writeShellScriptBin "mise" ''
            #!/bin/sh
            # Detect Homebrew path based on architecture
            if [ -d "/opt/homebrew/bin" ] && [ -x "/opt/homebrew/bin/mise" ]; then
              HOMEBREW_MISE="/opt/homebrew/bin/mise"
            elif [ -d "/usr/local/bin" ] && [ -x "/usr/local/bin/mise" ]; then
              HOMEBREW_MISE="/usr/local/bin/mise"
            else
              # Fallback to PATH-based lookup
              HOMEBREW_MISE="$(which mise)"
            fi

            # Execute Homebrew's mise if found, otherwise show error
            if [ -n "$HOMEBREW_MISE" ] && [ -x "$HOMEBREW_MISE" ]; then
              exec "$HOMEBREW_MISE" "$@"
            else
              echo "Error: Homebrew mise not found" >&2
              exit 1
            fi
          ''
        else pkgs.mise;
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;

      globalConfig = {
        settings = {
          experimental = true;
          yes = true;
        };

        tools = {
          go = "latest";
          node = "lts";
          perl = "latest";
          shellcheck = "latest";
        };
      };
    };
  };
}
