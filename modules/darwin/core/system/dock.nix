{
  flake.modules.darwin.core = {
    system.defaults.dock = {
      autohide = true;
      magnification = true;
      mru-spaces = false;

      persistent-apps = [
        "/System/Applications/App Store.app"
        "/System/Applications/System Settings.app"
        "/System/Applications/Calendar.app"
        "/System/Applications/Notes.app"
        "/System/Applications/Maps.app"
        "/System/Applications/Music.app"
        "/System/Applications/Chess.app"
        "/System/Applications/Utilities/Terminal.app/"
        "~/Applications/Home Manager Apps/Firefox.app"
        "/Applications/Safari.app"
      ];

      show-recents = false;
      tilesize = 40;
    };
  };
}
