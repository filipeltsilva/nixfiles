{lib, ...}: {
  flake.modules.homeManager.dev = {pkgs, ...}: {
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
          "editor.fontSize" = lib.mkForce 12;
          "editor.fontLigatures" = true;
          "settingsSync.enable" = false;
          "telemetry.telemetryLevel" = "off";
        };
      };
    };
  };
}
