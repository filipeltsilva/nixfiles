{
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
}
