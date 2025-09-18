{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps = [
      # NeoTree
      {
        action = "<cmd>Neotree toggle<CR>";
        key = "<leader>e";
        mode = "n";
        options = {
          desc = "Open File Explorer";
        };
      }

      #Telescope
      {
        action = "<cmd>Telescope buffers<CR>";
        key = "<leader>fb";
        mode = "n";
        options = {
          desc = "Telescope Find Buffers";
        };
      }

      {
        action = "<cmd>Telescope find_files<CR>";
        key = "<leader>ff";
        mode = "n";
        options = {
          desc = "Telescope Find Files";
        };
      }

      {
        action = "<cmd>Telescope live_grep<CR>";
        key = "<leader>fg";
        mode = "n";
        options = {
          desc = "Telescope Live Grep";
        };
      }

      {
        action = "<cmd>Telescope help_tags<CR>";
        key = "<leader>fh";
        mode = "n";
        options = {
          desc = "Telescope Neovim's Help Tags";
        };
      }

      {
        action = "<cmd>Telescope man_pages<CR>";
        key = "<leader>fm";
        mode = "n";
        options = {
          desc = "Telescope Man Pages";
        };
      }
    ];
  };
}
