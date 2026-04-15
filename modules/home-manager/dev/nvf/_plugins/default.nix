{
  imports = [
    ./avante.nix
    ./git.nix
    ./languages.nix
    ./lsp.nix
    ./mini.nix
    ./neo-tree.nix
    ./snacks.nix
    ./telescope.nix
    ./ui.nix
  ];

  programs.nvf.settings.vim = {
    # autopairs.nvim-autopairs.enable = true;
    binds.whichKey.enable = true;
    statusline.lualine.enable = true;
    treesitter.enable = true;
    ui.borders.enable = true;
  };
}
