{
  pkgs,
  self,
  ...
}: {
  flake.modules.nixos = {
    hosts.sandbox = {
      imports = 
        [
          self.modules.common
          self.nixosModules.common
        ]
        ++ [
          ./hardware-configuration.nix
        ];

      networking.hostName = "sandbox";

      environment.systemPackages = with pkgs; [
        neovim
      ];

      system.stateVersion = "25.05";
    };
  };
}
