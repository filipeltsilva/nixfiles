{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./colorscheme.nix
    ./keymaps.nix
    ./options.nix

    ./plugins
  ];

  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    editorconfig.enable = true;
    enableMan = true;
    viAlias = true;
    vimAlias = true;

    withNodeJs = true;
    withPerl = true;

    performance = {
      byteCompileLua = {
        enable = true;
        configs = true;
        nvimRuntime = true;
        plugins = true;
      };
      combinePlugins.enable = true;
    };
  };
}
