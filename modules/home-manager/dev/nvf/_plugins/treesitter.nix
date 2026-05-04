{
  programs.nvf.settings.vim = {pkgs, ...}: {
    extraPackages = with pkgs.vimPlugins.nvim-treesitter-parsers; [
      nix
    ];
    treesitter = {
      addDefaultGrammars = true;
      autotagHtml = true;
    };
  };
}
