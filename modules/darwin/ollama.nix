{pkgs, ...}: {
  launchd.user.agents.ollama = {
    serviceConfig = {
      KeepAlive = true;
      ProgramArguments = ["${pkgs.ollama}/bin/ollama" "serve"];
      RunAtLoad = true;
    };
  };
}
