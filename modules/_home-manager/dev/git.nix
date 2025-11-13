{
  flake.homeModules = {
    dev.git = {
      config,
      lib,
      me,
      ...
    }: {
      options.homeManager.modules.dev.git = {
        enable = lib.mkEnableOption "Enabling Git";
      };

      config = lib.mkIf config.homeManager.modules.dev.git.enable {
        programs.gh.enable = true;

        programs.git = {
          enable = true;
          userName = "${me.userFullName}";
          userEmail = "${me.userEmail}";

          delta.enable = true;
          lfs.enable = true;

          extraConfig = {
            init.defaultBranch = "main";
          };

          ignores = [
            ".DS_Store"
            ".env"
            ".sass-cache"
            "*~"
            "*.local.*"
            "*.map"
            "*.swp"
            "bower_components"
            "node_modules"
          ];
        };
      };
    };
  };
}
