{
  plugins.neo-tree = {
    enable = true;
    settings = {
      enable_diagnostics = true;
      enable_refresh_on_write = true;
      filesystem = {
        filtered_items = {
          hide_dotfiles = false;
          hide_hidden = false;
        };
        never_show = [
          ".DS_Store"
        ];
      };
    };
  };
}
