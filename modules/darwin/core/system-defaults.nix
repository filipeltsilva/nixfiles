{
  flake.modules.darwin.core = {
    system.defaults = {
      dock = {
        autohide = true;
        show-recents = false;
      };

      loginwindow = {
        GuestEnabled = false;
      };

      NSGlobalDomain = {
        _FxSortFoldersFirst = true;
        _FxSortFoldersFirstOnDesktop = true;
        AppleInterfaceStyle = "Dark";
        AppleShowAllExtensions = true;
        FxEnableExtensionChangeWarning = false;
        FxRemoveOldTrashItems = true;
        NSDocumentSaveNewDocumentsToCloud = false;
        ShowPathbar = true;
      };

      screencapture = {
        location = "~/Pictures/Screenshots";
        type = "jpg";
      };
    };
  };
}
