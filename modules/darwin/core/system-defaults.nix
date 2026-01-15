{
  flake.modules.darwin.core = {
    system.defaults = {
      finder = {
        _FxSortFoldersFirst = true;
        AppleShowAllExtensions = true;
        FxEnableExtensionChangeWarning = false;
        FxPreferredViewStyle = "icnv"; # Icons view in Finder
        FxRemoveOldTrashItems = true;
        NewWindowTarget = "Home";
        QuitMenuItem = true;
        ShowExternalHardDrivesOnDesktop = false;
        ShowPathbar = true;
        ShowRemovableMediaOnDesktop = false;
        ShowStatusBar = true;
      };

      loginwindow = {
        GuestEnabled = false;
      };

      NSGlobalDomain = {
        AppleICUForce24HourTime = true;
        AppleInterfaceStyle = "Dark";
        AppleMeasuremenmtUnits = "Centimeters";
        AppleMetricUnits = 1;
        AppleShowScrollbars = "Automatic";
        AppleTemperatureUnit = "Celsius";
        NSDocumentSaveNewDocumentsToCloud = false;
      };

      screencapture = {
        location = "~/Pictures/Screenshots";
        type = "jpg";
      };

      trackpad = {
        ActuationStrength = 0;
        Clicking = true;
        TrackpadPinch = true; # Two-finger pinch to zoom-in and zoom-out
        TrackpadRightClick = true;
        TrackpadThreeFingerDrag = true; # Drag windows with three-finger
        TrackpadTwoFingerDoubleTapGesture = true; # Smart zoom
      };
    };
  };
}
