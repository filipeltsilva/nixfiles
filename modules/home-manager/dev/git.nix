{
  flake.modules.homeManager.dev = {me, ...}: {
    programs.gh.enable = true;

    programs.git = {
      enable = true;
      settings = {
        extraConfig = {
          init.defaultBranch = "main";
        };

        user = {
          name = "${me.userFullName}";
          email = "${me.userEmail}";
        };
      };

      lfs.enable = true;

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

    programs.delta.enable = true;
  };
}
