{
  programs.nvf.settings.vim = {
    languages = {
      enableDAP = true;
      enableExtraDiagnostics = true;
      enableFormat = true;
      enableTreesitter = true;

      nix = {
        enable = true;
        extraDiagnostics.types = [
          "deadnix"
          "statix"
        ];
        format.type = ["alejandra"];
        lsp.servers = ["nixd"];
      };
    };
  };
}
