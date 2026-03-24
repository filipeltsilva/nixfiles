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
          perl = "latest";
          # python = "latest";
          # ruby = "latest";
          shellcheck = "latest";
        };
      };
    };

    # xdg.configFile."mise/default-npm-packages".text = ''
    #   neovim
    #   npm
    # '';
    #
    # xdg.configFile."mise/default-python-packages".text = ''
    #   pip
    #   pynvim
    # '';
    #
    # xdg.configFile."mise/default-ruby-gems".text = ''
    #   bundler
    #   neovim
    # '';

    # post-install script
    home.activation.miseToolsInstall = lib.hm.dag.entryAfter ["writeBoundary"] ''
      export PATH="$HOME/.local/share/mise/shims:$PATH"

      echo "Installing mise tools"
      ${pkgs.mise}/bin/mise install

      echo "Setting mise global tools versions"
      ${pkgs.mise}/bin/mise use -g node@lts
      ${pkgs.mise}/bin/mise use -g perl@latest
      ${pkgs.mise}/bin/mise use -g python@latest
      ${pkgs.mise}/bin/mise use -g shellcheck@latest

      echo "Installing global npm packages"
      ${pkgs.mise}/bin/mise exec node@lts -- npm install -g \
        neovim \
        npm
    '';
  };
}
