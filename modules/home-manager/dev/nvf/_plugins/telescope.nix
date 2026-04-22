{
  programs.nvf.settings.vim = {
    telescope = {
      enable = true;

      setupOpts.defaults = {
        initial_mode = "normal";
      };
    };

    keymaps = [
      {
        action = "<cmd> Telescope man_pages<CR>";
        desc = "Manual Pages [Telescope]";
        key = "<leader>fmp";
        mode = "n";
        silent = true;
      }
    ];
  };
}
