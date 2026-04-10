{
  imports = [
    ./servers.nix
  ];

  plugins.lsp = {
    enable = true;
    inlayHints = true;

    keymaps = {
      diagnostic = {
        "<leader>j" = "goto_next";
        "<leader>k" = "goto_prev";
      };
      silent = true;
    };
  };

  plugins.lsp-format = {
    enable = true;
    lspServersToEnable = "all";
  };
}
