{
  programs.firefox.profiles.default.bookmarks = {
    force = true;

    settings = [
      {
        name = "Bookmarks Toolbar";
        toolbar = true;
        bookmarks = [
          {
            keyword = "dee";
            name = "Deezer";
            url = "https://www.deezer.com";
          }

          {
            keyword = "dq";
            name = "DQLabs";
            url = "https://dqlabs.memberkit.com.br";
          }

          {
            keyword = "kindle";
            name = "Kindle";
            url = "https://read.amazon.com";
          }

          {
            keyword = "lin";
            name = "LinkedIn";
            url = "https://www.linkedin.com";
          }

          {
            keyword = "udemy";
            name = "Udemy";
            url = "https://www.udemy.com";
          }

          {
            keyword = "wpp";
            name = "WhatsApp";
            url = "https://web.whatsapp.com";
          }
        ];
      }
    ];
  };
}
