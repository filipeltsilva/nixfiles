{
  programs.firefox = {
    enable = true;

    policies = {
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
        "devtools.chrome.enabled" = true;
        "geo.enabled" = false;
      };
      PromptForDownloadLocation = false;
      SanitizeOnShutdown = true;
      SearchBar = "unified";
      ShowHomeButton = false;
    };

    profiles.default = {
      id = 0;
      isDefault = true;
      name = "Default";

      settings = {
        "browser.newtabpage.pinned" = [
          {
            title = "ChatGPT";
            url = "https://chatgpt.com";
          }

          {
            title = "Deezer";
            url = "https://www.deezer.com";
          }

          {
            title = "Kindle";
            url = "https://read.amazon.com";
          }

          {
            title = "LinkedIn";
            url = "https://www.linkedin.com";
          }

          {
            title = "Udemy";
            url = "https://www.udemy.com";
          }

          {
            title = "WhatsApp";
            url = "https://web.whatsapp.com";
          }

          {
            title = "YouTube";
            url = "https://www.youtube.com";
          }

          {
            title = "NixOS Configurations";
            url = "https://nixos.wiki/wiki/COnfiguration_Collection";
          }
        ];
      };

      search = {
        default = "ddg";
        engines = {
          home-manager = {
            name = "Home Manager Options";
            definedAliases = ["@hm"];
            urls = [
              {
                template = "https://home-manager-options.extranix.com?release=master&query={searchTerms}";
              }
            ];
          };

          nixos-flakes = {
            name = "NixOS Flakes";
            definedAliases = ["@nixf"];
            urls = [
              {
                template = "https://search.nixos.org/flakes?channel=unstable&query={searchTerms}";
              }
            ];
          };

          nixos-options = {
            name = "NixOS Options";
            definedAliases = ["@nixo"];
            urls = [
              {
                template = "https://search.nixos.org/options?channel=unstable&query={searchTerms}";
              }
            ];
          };

          nixos-packages = {
            name = "NixOS Packages";
            definedAliases = ["@nixp"];
            urls = [
              {
                template = "https://search.nixos.org/packages?channel=unstable&query={searchTerms}";
              }
            ];
          };

          nixos-wiki = {
            name = "NixOS Wiki";
            definedAliases = ["@nixw"];
            urls = [
              {
                template = "https://wiki.nixos.org/w/index.php";
                params = [
                  {
                    name = "search";
                    value = "{searchTerms}";
                  }
                ];
              }
            ];
          };

          youtube = {
            name = "YouTube";
            definedAliases = ["@yt"];
            urls = [
              {
                template = "https://www.youtube.com/results?search_query={searchTerms}";
              }
            ];
          };
        };

        force = true;

        order = [
          "ddg"
          "youTube"
          "NixOS Flakes"
          "NixOS Options"
          "NixOS Packages"
          "NixOS Wiki"
          "Home Manager Options"
          "google"
          "Wikipedia"
        ];
      };
    };
  };
}
