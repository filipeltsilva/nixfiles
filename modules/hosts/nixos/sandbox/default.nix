{inputs, self, ...}:{
  easy-hosts.hosts.sandbox = {
    lib,
    # pkgs,
    ...
  }: {
    arch = "x86_64";
    class = "nixos";
    modules = [
      self.modules.nixos.core_settings
      self.nixosModules.core_host
      self.modules.nixos.host_sandbox

      inputs.nixos-facter-modules.nixosModules.facter
      {
        config.facter.reportPath = ./facter.json;
      }

      {
        networking.hostName = lib.mkForce "sandbox";

        # environment.systemPackages = with pkgs; [
        #   neovim
        # ];

        system.stateVersion = "25.05";
      }
    ];
  };
}
