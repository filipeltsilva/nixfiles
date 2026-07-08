{
  me,
  self,
  ...
}: {
  flake.modules.nixos.host_sandbox = {
    home-manager.users.${me.user} = {
      imports = with self.modules.homeManager; [
        cli
        firefox
        ghostty
        nvf
      ];

      programs.ghostty = {
        enable = true;
        enableZshIntegration = true;

        settings = {
          command = "zsh";
          confirm-close-surface = false;
          maximize = true;
        };
      };

      home.stateVersion = "25.11";
    };
  };
}
