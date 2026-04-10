{inputs, ...}: {
  flake.modules.homeManager.dev = {pkgs, ...}: {
    imports = [
      inputs.nvf.homeManagerModules.default
    ];

    programs.nvf = {
      enable = true;

      settings.vim = {
        extraPackages = with pkgs; [
          alejandra
          nixd
          ripgrep
          tree-sitter
        ];

        viAlias = true;
        vimAlias = true;

        assistant.avante-nvim = {
          enable = true;
          setupOpts = {
            auto_suggestions_provider = "ollama";
            provider = "ollama";

            providers.ollama = {
              endpoint = "http://127.0.0.1:11434";
              model = "qwen3-coder:480b-cloud";
              timeout = 30000;
              extra_request_body = {
                options = {
                  keep_alive = "5m";
                  num_ctx = 65536;
                  temperature = 0.2;
                };
              };
            };
          };
        };

        lsp = {
          enable = true;
          formatOnSave = true;
          inlayHints.enable = true;
          lspconfig.enable = true;
        };

        languages = {
          enableDAP = true;
          enableExtraDiagnostics = true;
          enableFormat = true;
          enableTreesitter = true;

          nix = {
            enable = true;
            format.type = ["alejandra"];
            lsp.servers = ["nixd"];
          };
        };

        statusline.lualine.enable = true;

        filetree.neo-tree = {
          enable = true;
          setupOpts = {
            enable_cursor_hijack = true;
          };
        };

        treesitter = {
          enable = true;
        };

        keymaps = [
          {
            action = "<cmd>Neotree toggle<CR>";
            desc = "Show/Hide File Tree";
            key = "<leader>e";
            mode = "n";
            silent = true;
          }
        ];
      };
    };
  };
}
