{
  flake.modules.homeManager.dev = {
    programs.kitty = {
      enable = true;

      settings = {
        confirm_os_window_close = false;
        os_window_state = "maximized";
        shell = "zsh";
        strip_trailing_spaces = "always";
        window_padding_width = 3;
      };

      shellIntegration = {
        enableBashIntegration = true;
        enableFishIntegration = true;
        enableZshIntegration = true;
      };
    };
  };
}
