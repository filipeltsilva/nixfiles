{
  me,
  self,
  ...
}: {
  flake.modules.darwin.host_phoenix = {
    home-manager.users.${me.user} = {
      imports = with self.modules.homeManager; [
        dev
        firefox
      ];

      home.stateVersion = "26.05";
    };
  };
}
