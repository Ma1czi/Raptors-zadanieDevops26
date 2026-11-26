{ config, pkgs, ... }:

{
  networking.hostName = "mikolaj-vm";

  environment.systemPackages = with pkgs; [
    btop
  ];

  services.openssh.settings.PermitRootLogin = "yes";
}
