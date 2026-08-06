{
  flake,
  pkgs,
  ...
}: let
  cfg = import (flake + "./config.nix");
  me = cfg.me;
in {
  system.activationScripts.postActivation.text = ''
    echo "Verificando chaves SSH..."
    # No macOS, a variável $USER e o diretório home já apontam para o seu usuário atual
    SSH_DIR="$HOME/.ssh"

    # Cria o diretório .ssh se não existir
    mkdir -p "$SSH_DIR"
    chmod 700 "$SSH_DIR"

    # Gera a chave Ed25519 apenas se o arquivo NÃO existir
    if [ ! -f "$SSH_DIR/id_ed25519" ]; then
      echo "Nenhuma chave encontrada. Gerando chave SSH pela primeira vez..."
      ${pkgs.openssh}/bin/ssh-keygen -t ed25519 -f "$SSH_DIR/id_ed25519" -N "" -C "${me.userFullName} - ${me.userEmail}"

      # Garante as permissões corretas exigidas pelo SSH no macOS
      chmod 600 "$SSH_DIR/id_ed25519"
      chmod 644 "$SSH_DIR/id_ed25519.pub"
    else
      echo "Chave SSH já existente. Pulando geração para evitar sobrescrita."
    fi
  '';
}
