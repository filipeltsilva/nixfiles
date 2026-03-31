{
  plugins.codecompanion = {
    enable = true;

    settings = {
      adapters = {
        ollama = {
          url = "http://localhost:11434";
          model = "qwen3-coder:480b-cloud";
        };
      };

      strategies = {
        chat = {
          adapter = "ollama";
        };
        inline = {
          adapter = "ollama";
        };
        agent = {
          adapter = "ollama";
        };
      };
    };

    keymaps = {
      n = {
        "<leader>cc" = "<cmd>CodeCompanionChat<CR>";
        "<leader>ci" = "<cmd>CodeCompanionInline<CR>";
        "<leader>ca" = "<cmd>CodeCompanionAgent<CR>";
      };
      v = {
        "<leader>cc" = "<cmd>:'<,'>CodeCompanionChat<CR>";
        "<leader>ci" = "<cmd>:'<,'>CodeCompanionInline<CR>";
        "<leader>ca" = "<cmd>:'<,'>CodeCompanionAgent<CR>";
      };
    };
  };
}
