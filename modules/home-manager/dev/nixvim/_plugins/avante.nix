{
  plugins.avante = {
    enable = true;

    settings = {
      provider = "ollama";
      providers = {
        ollama = {
          endpoint = "localhost:ollama";
          model = "gpt-oss:20b-cloud";
        };
      };
    };
  };
}
