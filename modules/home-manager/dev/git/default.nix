{
  programs.gh.enable = true;

  programs.git = {
    enable = true;
    userName = "Filipe Lemos";
    userEmail = "contato@filipelemos.com";

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
}
