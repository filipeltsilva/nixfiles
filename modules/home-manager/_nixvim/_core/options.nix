let
  defaultEncoding = "utf-8";
  tabSize = 2;
in {
  opts = {
    encoding = defaultEncoding;
    fileencoding = defaultEncoding;

    number = true;
    numberwidth = 4;
    relativenumber = true;

    autoindent = true;
    expandtab = true;
    shiftround = true;
    shiftwidth = tabSize;
    softtabstop = tabSize;
    tabstop = tabSize;

    hlsearch = true;
    ignorecase = true;
    incsearch = true;

    cmdheight = tabSize;

    confirm = true;

    cursorline = true;

    history = 10000;

    mouse = "a";

    updatetime = 100;

    completeopt = "menu,menuone,noselect";
  };
}
