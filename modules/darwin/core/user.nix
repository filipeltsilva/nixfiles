{me, ...}: {
  flake.modules.darwin.core = {
    users.users.${me.user} = {
      description = "${me.userFullName}";
      home = "/Users/${me.user}";
    };

    # Allow run homebrew without requiring password during darwin-rebuild
    security.sudo.extraConfig = ''
      %admin ALL=(ALL) NOPASSWD: /run/current-system/sw/bin/darwin-rebuild
      %admin ALL=(ALL) NOPASSWD: /run/current-system/sw/bin/nix*
      %admin ALL=(ALL) NOPASSWD: /usr/local/bin/brew, /opt/homebrew/bin/brew
    '';
  };
}
