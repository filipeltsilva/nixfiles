# {config, inputs, pkgs, ...}: {
#   easy-hosts.hosts.sandbox = {
#     arch = "x86_64";
#     class = "nixos";
#
#     modules = [
#       config.flake.modules.nixos.common
#       ./hardware-configuration.nix
#       {
#         networking.hostName = "sandbox";
#
#         environment.systemPackages = with pkgs; [
#           neovim
#         ];
#
#         system.stateVersion = "25.05";
#       }
#     ];
#   };
# }
{
  lib,
  pkgs,
  self,
  ...
}: {
  flake.modules.nixos.sandbox = {
    imports = with (self.modules.nixos); [
      core
    ]++[
      {
        networking.hostName = lib.mkForce "sandbox";

        environment.systemPackages = with pkgs; [
          neovim
        ];

        system.stateVersion = "25.05";
      }
    ];
  };
}
