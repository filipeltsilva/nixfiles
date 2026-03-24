{
  flake.modules.darwin.ollama = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [
      ollama
    ];

    launchd.user.agents.ollama = {
      serviceConfig = {
        KeepAlive = true;
        ProgramArguments = ["${pkgs.ollama}/bin/ollama" "serve"];
        RunAtLoad = true;
      };
    };
  };
}
