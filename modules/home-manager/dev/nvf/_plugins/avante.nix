{
  programs.nvf.settings.vim = {
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
  };
}
