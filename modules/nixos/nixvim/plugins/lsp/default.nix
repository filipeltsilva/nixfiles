{ ... }:

{ 
  imports = [

  ];

  programs.nixvim = {
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

      servers = {
        bashls.enable = true;
        clangd.enable = true;
        # css_variables.enable = true;
        cssls.enable = true;
        # cssmodules_ls.enable = true;
        # cucumber_language_server.enable = true;
        docker_compose_language_service.enable = true;
        dockerls.enable = true;
        emmet_language_server.enable = true;
        eslint.enable = true;
        # graphql.enable = true;
        html.enable = true;
        jsonls.enable = true;
        lsp_ai.enable = true;
        lua_ls.enable = true;
        nixd.enable = true;
        # prismals.enable = true;
        pyright.enable = true;
        ruby_lsp.enable = true;
        superhtml.enable = true;
        tailwindcss.enable = true;
        taplo.enable = true;
        ts_ls.enable = true;
        ts_query_ls.enable = true;
        yamlls.enable = true;
      };
    };
  };
}
