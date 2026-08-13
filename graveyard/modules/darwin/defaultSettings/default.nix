{
  flake,
  pkgs,
  ...
}: {
  imports = flake.inputs.nix-wire.lib.autoImport ./.;

  environment = {
    shellAliases = {
      drb = "sudo darwin-rebuild switch --flake .";
    };
    systemPackages = with pkgs; [
      goose-cli
      ollama
    ];
  };

  home-manager.backupFileExtension = "hm_backup";

  # Allow run homebrew without requiring password during darwin-rebuild
  security.sudo.extraConfig = ''
    %admin ALL=(ALL) NOPASSWD: /run/current-system/sw/bin/darwin-rebuild
    %admin ALL=(ALL) NOPASSWD: /run/current-system/sw/bin/nix*
    %admin ALL=(ALL) NOPASSWD: /usr/local/bin/brew, /opt/homebrew/bin/brew
  '';

  time.timeZone = "America/Sao_Paulo";
}
