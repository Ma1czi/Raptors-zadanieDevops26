{ config, pkgs, ... }:

{
  networking.hostName = "bulzacki-vm"; 

  environment.systemPackages = with pkgs; [
    fastfetch
  ];

  programs.zsh = {
    enable = true;
    shellAliases = {
      fast = "fastfetch";
    };
  };

  users.defaultUserShell = pkgs.zsh;
}
