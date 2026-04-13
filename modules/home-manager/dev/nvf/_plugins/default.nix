{
  imports = [
    ./avante.nix
    ./git.nix
    ./languages.nix
    ./lsp.nix
    ./neo-tree.nix
  ];

  programs.nvf.settings.vim = {
    statusline.lualine.enable = true;
    treesitter.enable = true;
  };
}
