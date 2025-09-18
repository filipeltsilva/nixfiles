{
  programs.nixvim = {
    plugins.nvim-autopairs = {
      enable = true;

      settings = {
        check_ts = true;

        disable_filetype = [
          "TelescopePrompt"
        ];
        
        map_bs = true;
        map_cr = true;
      };
    };
  };
}
