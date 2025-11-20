{
  imports = [
    ./cmp
    ./treesitter

    ./bufferline.nix
    ./git.nix
    ./indent-blankline.nix
    ./lsp.nix
    ./lualine.nix
    ./neotree.nix
    ./none-ls.nix
    ./nvim-autopairs.nix
    ./telescope.nix
    ./toggleterm.nix
    ./which-key.nix
  ];

  programs.nixvim.plugins = {
    lsp-format = {
      enable = true;
      lspServersToEnable = "all";
    };

    web-devicons.enable = true;
  };
}
