{
  imports = [
    ./avante.nix
    ./blink-cmp.nix
    # ./git.nix
    ./languages.nix
    ./lsp.nix
    ./mini.nix
    ./neo-tree.nix
    ./snacks.nix
    ./telescope.nix
    ./treesitter.nix
    ./ui.nix
  ];

  programs.nvf.settings.vim = {
    binds.whichKey.enable = true;
    statusline.lualine.enable = true;
    treesitter.enable = true;
    ui.borders.enable = true;
  };
}
