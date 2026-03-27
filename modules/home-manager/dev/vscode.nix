{
  flake.modules.homeManager.dev = {pkgs, ...}: {
    programs.vscode = {
      enable = true;

      profiles.default = {
        enableExtensionUpdateCheck = false;
        enableUpdateCheck = false;

        extensions = with pkgs.vscode-extensions; [
          bbenoist.nix
          eamodio.gitlens
          #golang.go
          ms-python.python
          # twxs.cmake
          vscodevim.vim
        ];
      };
    };
  };
}
