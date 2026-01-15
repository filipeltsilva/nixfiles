{
  flake.modules.darwin.core = {
    system.defaults.dock = {
      autohide = true;
      magnification = true;
      mru-spaces = false;

      persistent-apps = [
        "/Applications/App Store.app"
        "/Applications/System Preferences.app"
        "/Applications/Calendar.app"
        "/Applications.Maps.app"
        "/Applications/Music.app"
        "/Applications/Notes.app"
        "/Applications/Safari.app"
        # "ghostty"
        # "firefox"
      ];

      show-recents = false;
      tilesize = 40;
    };
  };
}
