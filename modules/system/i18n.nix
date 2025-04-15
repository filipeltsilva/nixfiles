{
  config,
  lib,
  pkgs,
  ...
}: {
  time.timeZone = "America/Sao_Paulo";

  i18n = {
    defaultLocale = "pt_BR.UTF-8";
    extraLocaleSettings = {
      LANG = "en_US.UTF-8";
      ALL = "pt_BR.UTF-8";
    };
    # console = {
    #   font = "Lat2-Terminus16";
    #   keyMap = "us";
    #   useXkbConfig = true; # use xkb.options in tty.
    # };
  };
}
