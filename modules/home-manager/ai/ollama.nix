{
  flake.modules.homeManager.ollama = {
    services.ollama = {
      enable = true;
    };
  };
}
