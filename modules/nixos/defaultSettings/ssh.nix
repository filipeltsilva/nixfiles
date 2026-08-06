{
  flake,
  pkgs,
  ...
}: let
  cfg = import (flake + "./config.nix");
  me = cfg.me;
in {
  # 1. Garante que o OpenSSH está ativo
  services.openssh.enable = true;

  # 2. Cria a chave privada/pública do usuário caso ela não exista
  systemd.services.generate-user-ssh-key = {
    before = ["sshd.service"];
    description = "Gera chave SSH para o usuario no primeiro boot";

    script = ''
      USER_HOME="/home/${me.user}"
      SSH_DIR="$USER_HOME/.ssh"

      # Cria o diretório .ssh se não existir
      mkdir -p "$SSH_DIR"

      # Gera a chave Ed25519 apenas se o arquivo não existir
      if [ ! -f "$SSH_DIR/id_ed25519" ]; then
        ${pkgs.openssh}/bin/ssh-keygen -t ed25519 -f "$SSH_DIR/id_ed25519" -N "" -C "${me.userFullName} - ${me.userEmail}"

        # Ajusta as permissões corretas para o dono do usuário
        chown -R seu-usuario:users "$SSH_DIR"
        chmod 700 "$SSH_DIR"
        chmod 600 "$SSH_DIR/id_ed25519"
        chmod 644 "$SSH_DIR/id_ed25519.pub"
      fi
    '';

    serviceConfig = {
      Type = "oneshot";
      RemainAfterExit = true;
    };

    wantedBy = ["multi-user.target"];
  };
}
