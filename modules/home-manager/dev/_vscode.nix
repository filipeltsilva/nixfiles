{
  flake.modules.homeManager.dev = {pkgs, ...}: {
    let
    isDarwin = pkgs.stdenv.isDarwin;

  vscodeUserDir =
    if isDarwin then
      "$HOME/Library/Application Support/Code/User"
    else
      "$HOME/.config/Code/User";

  vscodeRootDir =
    if isDarwin then
      "$HOME/Library/Application Support/Code"
    else
      "$HOME/.config/Code";
    in
    programs.vscode = {
      enable = true;

      # User settings
      profiles.default = {
        enableExtensionUpdateCheck = false;
        enableUpdateCheck = false;

        extensions = with pkgs.vscode-extensions; [
          bbenoist.nix
          #continue.continue
          eamodio.gitlens
          #golang.go
          ms-python.python
          # twxs.cmake
          vscode-icons-team.vscode-icons
          vscodevim.vim
        ];

        userSettings = {
          "editor.formatOnSave" = true;
          "editor.wordWrap" = true;

          "files.autoSave" = "afterDelay";
          "files.autoSaveDelay" = 3000;

          "workbench.iconTheme" = "vscode-icons";
        };
      };

      # Global settings
      userSettings = {
        "editor.fontSize" = 12;
        "editor.fontLigatures" = true;

        "settingsSync.enable" = false;

        "telemetry.telemetryLevel" = "off";
      };
    };
  };
}
