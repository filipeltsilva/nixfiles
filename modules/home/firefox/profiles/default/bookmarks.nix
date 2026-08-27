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
# {
#   programs.firefox.profiles.default.bookmarks = {
#     name = "Bookmarks Toolbar";
#     force = true;
#     toolbar = true; # This tells Firefox to display these specific links on the toolbar
#     settings = [
#       {
#         name = "Deezer";
#         url = "https://www.deezer.com";
#       }
#       {
#         name = "DQLabs";
#         keyword = "dq";
#         url = "https://dqlabs.memberkit.com.br";
#       }
#       {
#         name = "Kindle";
#         url = "https://read.amazon.com";
#       }
#       {
#         name = "LinkedIn";
#         url = "https://www.linkedin.com";
#       }
#       {
#         name = "Udemy";
#         url = "https://www.udemy.com";
#       }
#       {
#         name = "WhatsApp";
#         url = "https://web.whatsapp.com";
#       }
#     ];
#   };
# 2. Force the Firefox interface to show the toolbar and load the layout state
# settings = {
#   "browser.toolbars.bookmarks.visibility" = "always";
#   "browser.uiCustomization.state" = builtins.toJSON {
#     currentVersion = 20;
#     placements.PersonalToolbar = ["personal-bookmarks"];
#   };
# };
# }
