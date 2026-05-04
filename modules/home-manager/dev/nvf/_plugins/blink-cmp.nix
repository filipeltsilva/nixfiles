{
  programs.nvf.settings.vim = {
    autocomplete.blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;

      mappings = {
        close = "<C-h>";
        confirm = "<C-l>";
        next = "<C-j>";
        previous = "<C-k>";
      };

      setupOpts = {
        completion = {
          documentation.window.border = "rounded";
          menu.border = "rounded";
        };

        sources.default = [
          "lsp"
          "snippets"
          "path"
          "buffer"
        ];
      };
    };
  };
}
