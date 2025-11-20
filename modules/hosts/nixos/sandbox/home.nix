{
  me,
  self,
  ...
}: {
  flake.modules.nixos.host_sandbox = {
    home-manager.users.${me.user} = {
      imports = with self.modules.homeManager; [
        dev
        firefox
      ];
    
      home.stateVersion = "25.11";
    };
  };
}
