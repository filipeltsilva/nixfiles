{
  flake.modules.homeManager.dev = {
    lib,
    pkgs,
    ...
  }: {
    programs.mise = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
      enableZshIntegration = true;

      globalConfig = {
        tools = {
          node = "lts";
          perl = "system";
          python = "system";
          ruby = "system";
          shellcheck = "latest";
        };
      };
    };

    # xdg.configFile."mise/default-npm-packages".text = ''
    #   gitignore
    #   neovim
    #   npm
    # '';

    # run mise install automatically after install mise
    home.activation.miseToolsInstall = lib.hm.dag.entryAfter ["writeBoundary"] ''
      echo "Installing mise tools"
      ${pkgs.mise}/bin/mise install

      echo "Installing global npm packages"
      ${pkgs.mise}/bin/mise exec node@lts -- npm install -g \
        github \
        neovim \
        npm
    '';
  };
}
