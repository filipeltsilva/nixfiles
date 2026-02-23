{inputs, ...}: {
  flake.modules.homeManager.dev = {pkgs, ...}: {
    imports = [inputs.nixvim.homeModules.nixvim];

    programs.nixvim = {
      enable = true;

      extraPackages = with pkgs; [
        fd
        ripgrep
        tree-sitter
      ];

      defaultEditor = true;
      editorconfig.enable = true;
      enableMan = true;

      imports = [
        ./_core
        ./_plugins
      ];

      performance = {
        byteCompileLua = {
          enable = true;
          nvimRuntime = true;
          plugins = true;
        };
        combinePlugins.enable = true;
      };

      viAlias = true;
      vimAlias = true;

      withNodeJs = true;
      withPerl = true;
    };
  };
}
