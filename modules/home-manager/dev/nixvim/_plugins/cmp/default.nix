let
  myKeywordLength = 3;
in {
  imports = [
    ./lspkind.nix
    ./luasnip.nix
  ];

  programs.nixvim = {
    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;

        cmdline = {
          ":" = {
            mapping = {__raw = "cmp.mapping.preset.cmdline()";};
            sources = [
              {name = "buffer";}
              {name = "cmdline";}
              {name = "path";}
            ];
          };

          "/" = {
            mapping = {__raw = "cmp.mapping.preset.cmdline()";};
            sources = [
              {name = "buffer";}
              {name = "cmdline";}
              {name = "path";}
            ];
          };
        };

        settings = {
          experimental.ghost_text = true;

          formatting.fields = ["abbr" "kind" "menu"];

          mapping = {
            "<C-h>" = "cmp.mapping(cmp.mapping.abort(), { 'i', 'c' })";
            "<C-j>" = "cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' })";
            "<C-k>" = "cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' })";
            "<C-l>" = "cmp.mapping(cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }))";
            # "<C-n>" = "cmp.mapping(cmp.mapping.scroll_docs(4))";
            # "<C-p>" = "cmp.mapping(cmp.mapping.scroll_docs(-4))";
          };

          performance = {
            debounce = 50;
          };

          snippet.expand = ''function(args) require('luasnip').lsp_expand(args.body) end '';

          sources = [
            {
              name = "buffer";
              keyWordLength = myKeywordLength;
            }
            {name = "emoji";}
            {name = "luasnip";}
            {
              name = "path";
              keywordLength = myKeywordLength;
            }
            {name = "nvim_lsp";}
            {name = "nvim_lsp_signature_help";}
            {name = "nvim_lua";}
          ];

          window = {
            completion.border = "rounded";
            documentation.border = "rounded";
          };
        };
      };
    };
  };
}
