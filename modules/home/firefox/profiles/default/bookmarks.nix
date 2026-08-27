{
  programs.firefox.profiles.default.bookmarks = {
    force = true;

    settings = [
      {
        name = "Deezer";
        url = "https://www.deezer.com";
      }

      {
        name = "Kindle";
        url = "https://read.amazon.com";
      }

      {
        name = "LinkedIn";
        url = "https://www.linkedin.com";
      }

      {
        name = "Udemy";
        url = "https://www.udemy.com";
      }

      {
        name = "WhatsApp";
        url = "https://web.whatsapp.com";
      }
    ];
  };
}
