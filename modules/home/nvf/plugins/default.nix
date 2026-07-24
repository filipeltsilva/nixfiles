{inputs, ...}: {
  imports = inputs.nix-wire.lib.autoImport ./.;

  programs.nvf.settings.vim = {
    binds.whichKey.enable = true;
    statusline.lualine.enable = true;
    treesitter.enable = true;
    ui.borders.enable = true;
  };
}
