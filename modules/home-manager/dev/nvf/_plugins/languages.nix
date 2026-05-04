{
  programs.nvf.settings.vim = {
    languages = {
      enableDAP = true;
      enableExtraDiagnostics = true;
      enableFormat = true;
      enableTreesitter = true;

      bash.enable = true;
      markdown.enable = true;

      nix = {
        enable = true;
        extraDiagnostics.types = [
          "deadnix"
          "statix"
        ];
        format.type = ["alejandra"];
        lsp.servers = ["nixd"];
      };

      python.enable = true;
      ruby.enable = true;
    };
  };
}
