{
  flake.modules.homeManager.dev = {
    programs.wezterm = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;

      extraConfig = "
        config.front_end = \"WebGpu\"
      ";
    };
  };
}
