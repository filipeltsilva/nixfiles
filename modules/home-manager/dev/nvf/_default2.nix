{inputs, ...}: {
  flake.modules.homeManager.dev = {pkgs, ...}: {
    imports = [
      inputs.nvf.homeManagerModules.default
    ];

    programs.nvf = {
      enable = true;

      settings.vim = {
        # Basic configuration
        viAlias = true;
        vimAlias = true;

        # Extra packages
        extraPackages = with pkgs; [
          alejandra
          clang-tools
          docker-compose-language-service
          dockerls
          emmet-language-server
          eslint
          fd
          html-tidy
          jq
          lua-language-server
          nixd
          nodePackages.prettier
          prettierd
          pyright
          ripgrep
          rubocop
          ruby_lsp
          stylua
          tailwindcss-language-server
          taplo
          tree-sitter
          yaml-language-server
        ];

        # Editor options (replicating _core/options.nix)
        opts = {
          encoding = "utf-8";
          fileencoding = "utf-8";

          number = true;
          numberwidth = 4;
          relativenumber = true;

          autoindent = true;
          expandtab = true;
          shiftround = true;
          shiftwidth = 2;
          softtabstop = 2;
          tabstop = 2;

          hlsearch = true;
          ignorecase = true;
          incsearch = true;

          cmdheight = 2;

          confirm = true;

          cursorline = true;

          history = 10000;

          mouse = "a";

          updatetime = 100;

          completeopt = "menu,menuone,noselect";
        };

        # Keymaps (replicating _core/keymaps.nix)
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
            silent = true;
            desc = "Open File Explorer";
          }

          # Telescope
          {
            action = "<cmd>Telescope buffers<CR>";
            key = "<leader>fb";
            mode = "n";
            silent = true;
            desc = "Telescope Find Buffers";
          }

          {
            action = "<cmd>Telescope find_files<CR>";
            key = "<leader>ff";
            mode = "n";
            silent = true;
            desc = "Telescope Find Files";
          }

          {
            action = "<cmd>Telescope live_grep<CR>";
            key = "<leader>fg";
            mode = "n";
            silent = true;
            desc = "Telescope Live Grep";
          }

          {
            action = "<cmd>Telescope help_tags<CR>";
            key = "<leader>fh";
            mode = "n";
            silent = true;
            desc = "Telescope Neovim's Help Tags";
          }

          {
            action = "<cmd>Telescope man_pages<CR>";
            key = "<leader>fm";
            mode = "n";
            silent = true;
            desc = "Telescope Man Pages";
          }

          # CodeCompanion
          {
            action = "<cmd>CodeCompanionChat<CR>";
            key = "<leader>cc";
            mode = "n";
            silent = true;
            desc = "CodeCompanion Chat";
          }

          {
            action = "<cmd>CodeCompanionInline<CR>";
            key = "<leader>ci";
            mode = "n";
            silent = true;
            desc = "CodeCompanion Inline";
          }

          {
            action = "<cmd>CodeCompanionAgent<CR>";
            key = "<leader>ca";
            mode = "n";
            silent = true;
            desc = "CodeCompanion Agent";
          }

          {
            action = "<cmd>:'<,'>CodeCompanionChat<CR>";
            key = "<leader>cc";
            mode = "v";
            silent = true;
            desc = "CodeCompanion Chat (Visual)";
          }

          {
            action = "<cmd>:'<,'>CodeCompanionInline<CR>";
            key = "<leader>ci";
            mode = "v";
            silent = true;
            desc = "CodeCompanion Inline (Visual)";
          }

          {
            action = "<cmd>:'<,'>CodeCompanionAgent<CR>";
            key = "<leader>ca";
            mode = "v";
            silent = true;
            desc = "CodeCompanion Agent (Visual)";
          }
        ];

        # LSP Configuration
        lsp = {
          enable = true;
          formatOnSave = true;
          inlayHints.enable = true;
          lspconfig.enable = true;

          keymaps = {
            diagnostic = {
              "<leader>j" = "goto_next";
              "<leader>k" = "goto_prev";
            };
            silent = true;
          };

          servers = {
            bashls.enable = true;
            clangd.enable = true;
            cssls.enable = true;
            docker_compose_language_service.enable = true;
            dockerls.enable = true;
            emmet_language_server.enable = true;
            eslint.enable = true;
            html.enable = true;
            jsonls.enable = true;
            lsp_ai.enable = true;
            lua_ls.enable = true;
            nixd.enable = true;
            pyright.enable = true;
            ruby_lsp.enable = true;
            superhtml.enable = true;
            tailwindcss.enable = true;
            taplo.enable = true;
            yamlls.enable = true;
          };
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

        # Completion (nvim-cmp)
        completion = {
          enable = true;
          max_menu_height = 10;
          auto_enlist_in_cmp = true;
          completeopt = "menu,menuone,noselect";

          sources = {
            buffer.enable = true;
            emoji.enable = true;
            luasnip.enable = true;
            nvim_lua.enable = true;
            nvim_lsp.enable = true;
            nvim_lsp_signature_help.enable = true;
            path.enable = true;
          };
        };

        # Snippets (LuaSnip)
        snippets = {
          luasnip = {
            enable = true;
          };
        };

        # Treesitter
        treesitter = {
          enable = true;
          autotagHtml = true;

          grammars = [
            "bash"
            "c"
            "comment"
            "cpp"
            "css"
            "dockerfile"
            "graphql"
            "html"
            "javascript"
            "json"
            "lua"
            "luadoc"
            "make"
            "markdown"
            "markdown_inline"
            "nix"
            "python"
            "query"
            "regex"
            "ruby"
            "sql"
            "tmux"
            "toml"
            "tsx"
            "typescript"
            "vim"
            "vimdoc"
            "yaml"
          ];

          context_commentstring.enable = true;
          indent.enable = true;
        };

        # UI Plugins
        ui = {
          borders.enable = true;
          illuminate.enable = true;
          smartcolumn.enable = true;
          colorizer.enable = true;
        };
        # Telescope
        telescope = {
          enable = true;
          setupOpts = {
            defaults = {
              initial_mode = "normal";
            };
          };
        };

        # Additional plugins
        visuals = {
          bufferline.enable = true;
          indent-blankline.enable = true;
          web-devicons.enable = true;
        };

        pairs = {
          nvim-autopairs.enable = true;
        };

        terminal = {
          toggleterm = {
            enable = true;
            setupOpts = {
              auto_scroll = true;
              autochdir = true;
              close_on_exit = true;
              direction = "horizontal";
              hide_numbers = true;
              insert_mappings = true;
              open_mapping = "[[<M-t>]]";
              size = 20;
              start_in_insert = true;
            };
          };
        };


      # Formatting
      formatting = {
        enable = true;
        format = {
          python = {
            type = "black";
          };
          nix = {
            type = "alejandra";
          };
          web = {
            type = "prettier";
          };
          sql = {
            type = "sql-formatter";
          };
        };
      };

      # Which-key
      binds = {
        whichKey.enable = true;
      };
    };
  };
}
