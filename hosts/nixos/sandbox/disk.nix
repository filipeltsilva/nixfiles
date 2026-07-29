{
  disko.devices = {
    disk = {
      main = {
        device = "/dev/vda";
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              name = "ESP";
              size = "512M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                extraArgs = ["-n" "BOOT"];
                mountpoint = "/boot";
                mountOptions = ["umask=0077"];
              };
            };
            root = {
              name = "root";
              size = "100%";
              content = {
                type = "filesystem";
                format = "ext4";
                extraArgs = ["-L" "NixOS" "-O" "dir_index,extent"];
                mountpoint = "/";
                mountOptions = [
                  "noatime"
                  "nodiratime"
                  "discard"
                ];
              };
            };
          };
        };
      };
    };
  };
}
