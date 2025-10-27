{me, ...}:
{
flake.nixosModules.security.openssh = {
  me.userFullName,
  me.userEmail,
  ...
}: {
  services.openssh = {
    enable = true;
  };
}
}
