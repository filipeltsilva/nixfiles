{
  me,
  self,
  ...
}: {
  flake.modules.darwin.host_phoenix = {
    home-manager.users.${me.user} = {
      imports = with self.modules.homeManager; [
        cli
        firefox
        ghostty
        nvf
      ];

      home.stateVersion = "26.05";
    };
  };
}
