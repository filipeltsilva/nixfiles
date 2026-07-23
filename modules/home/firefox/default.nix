{
  inputs,
  pkgs,
  ...
}: {
  imports = inputs.nix-wire.lib.autoImport ./.;

  home.packages = [pkgs.firefox-bin];

  programs.firefox = {
    enable = true;
    package = pkgs.firefox-bin;

    policies = {
      AutofillAddressEnabled = false;
      AutofillCreditCardEnabled = false;
      BackgroundAppUpdate = false;
      DisableAccounts = true;
      DisableFirefoxAccounts = true;
      DisableFirefoxStudies = true;
      DisableFormHistory = true;
      DisablePasswordReveal = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DisplayBookmarksToolbar = "never";
      DontCheckDefaultBrowser = true;
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        EmailTracking = true;
        Fingerprinting = true;
      };
      FirefoxHome = {
        SponsoredTopSites = false;
        SponsoredPocket = false;
      };
      HardwareAcceleration = true;
      HttpsOnlyMode = "enabled";
      NoDefaultBookmarks = true;
      OfferToSaveLoginsDefault = false;
      PasswordManagerEnabled = false;
      Preferences = {
        "browser.aboutConfig.showWarning" = false;
        "geo.enabled" = false;
      };
      PromptForDownloadLocation = false;
      SanitizeOnShutdown = true;
      SearchBar = "unified";
      ShowHomeButton = false;
    };
  };
}
