{
  flake.modules.homeManager.dev = {pkgs, ...}: {
    programs.mise = {
      enable = true;
      # Use wrapper script on Darwin to delegate to Homebrew installation
      package = if pkgs.stdenv.isDarwin then 
        pkgs.writeShellScriptBin "mise" ''
          #!/bin/sh
          exec /opt/homebrew/bin/mise "$@"
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
          node = "lts";
          perl = "latest";
          # python = "latest";
          # ruby = "latest";
          shellcheck = "latest";
        };
      };
    };
  };
}
