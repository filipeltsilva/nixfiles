{
  programs.nixvim = {
    plugins.neo-tree = {
      enable = true;
      enableDiagnostics = true;
      enableRefreshOnWrite = true;
    };
  };
}
