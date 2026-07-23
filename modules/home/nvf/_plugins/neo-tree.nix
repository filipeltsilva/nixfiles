{
  programs.nvf.settings.vim = {
    filetree.neo-tree = {
      enable = true;
      setupOpts = {
        enable_cursor_hijack = true;
        filesystem = {
          filtered_items = {
            hide_by_name = [
              "flake.lock"
              "package-lock.json"
            ];
            hide_dotfiles = false;
            hide_hidden = false;
            hide_ignored = true;
          };
          never_show = [
            ".git"
            ".DS_Store"
            "thumbs.db"
          ];
        };
      };
    };

    keymaps = [
      {
        action = "<cmd>Neotree toggle<CR>";
        desc = "File Explorer [Neo-tree]";
        key = "<leader>e";
        mode = "n";
        silent = true;
      }
    ];
  };
}
