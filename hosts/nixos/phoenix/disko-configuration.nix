{flake, ...}: {
  imports = [
    flake.inputs.disko.nixosModules.disko
  ];
  disko.devices = {
    disk = {
      main = {
        # IMPORTANTE: Confirme este ID com 'ls -la /dev/disk/by-id/' ao dar boot no LiveUSB
        device = "/dev/disk/by-id/ata-Samsung_SSD_850_EVO_250GB_S21NNSAG404090T";
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            # Partição EFI / Boot
            ESP = {
              size = "1G";
              type = "EF00"; # Código de tipo GPT para partição de sistema EFI
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                # Otimizações de montagem para FAT32 em SSD (evita gravações desnecessárias)
                mountOptions = ["defaults" "noatime" "nodiratime" "fmask=0077" "dmask=0077"];
              };
            };
            # Partição Criptografada LUKS para o Sistema
            luks = {
              size = "100%";
              content = {
                type = "luks";
                name = "crypted"; # Nome do mapeamento em /dev/mapper/crypted
                # Deixa em branco para o instalador solicitar a senha manualmente no boot
                passwordFile = null;
                # Otimizações do LUKS para SSD (permite TRIM passar pela camada criptografada)
                extraOpenArgs = ["--allow-discards"];
                content = {
                  type = "filesystem";
                  format = "ext4";
                  mountpoint = "/";
                  # Otimizações EXT4 para SSD (TRIM contínuo e redução de escritas de data/hora)
                  mountOptions = ["defaults" "noatime" "nodiratime" "discard" "errors=remount-ro"];
                };
              };
            };
          };
        };
      };
    };
  };
}
