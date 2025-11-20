{me, ...}: {
  flake.modules.homeManager.firefox = {
    programs.firefox.profiles.${me.user}.settings = {
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
  };
}
