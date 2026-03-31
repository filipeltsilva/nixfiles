{
  imports = [
    ./cmp
    ./lsp
    ./treesitter

    # ./avante.nix
    ./bufferline.nix
    ./codecompanion.nix
    ./git.nix
    ./indent-blankline.nix
    ./neotree.nix
    # ./none-ls.nix
    ./nvim-autopairs.nix
    ./telescope.nix
    ./toggleterm.nix
  ];

  plugins = {
    lualine.enable = true;
    web-devicons.enable = true;
    which-key.enable = true;
  };
}
