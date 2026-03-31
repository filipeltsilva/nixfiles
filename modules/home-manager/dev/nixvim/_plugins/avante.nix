{
    plugins.avante = {
      enable = true;

      settings = {
        provider = "ollama";

        providers = {
          ollama = {
            endpoint = "http://127.0.0.1:11434";
            model = "qwen3.5:4b";
          };
        };

        # Reduz chamadas constantes (CRÍTICO pra evitar lag)
        behaviour = {
          auto_suggestions = false;
        };

        # (se suportado pela sua versão do avante)
        hints = {
          enabled = false;
        };
      };
    };
  }
