{
  programs.nixvim = {
    plugins.toggleterm = {
      enable = true;

      settings = {
        auto_scroll = true;
        autochdir = true;
        close_on_exit = true;
        direction = "horizontal";
        hide_numbers = true;
        insert_mappings = true;
        open_mapping = "[[<M-t>]]";
        size = 20;
        start_in_insert = true;
      };
    };
  };
}
