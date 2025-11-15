{
  flake.modules.nixos.host_sandbox = {
    fileSystems."/" = {
      device = "/dev/disk/by-uuid/864e76fa-72ce-4c5e-b81e-c935e247acbe";
      fsType = "ext4";
    };

    fileSystems."/boot" = {
      device = "/dev/disk/by-uuid/80DD-5AE1";
      fsType = "vfat";
      options = ["fmask=0022" "dmask=0022"];
    };

    swapDevices = [];
  };
}
