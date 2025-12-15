{
  imports = [
    ./cmp
    ./treesitter

    ./bufferline.nix
    ./git.nix
    ./indent-blankline.nix
    ./lsp.nix
    ./neotree.nix
    ./none-ls.nix
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
