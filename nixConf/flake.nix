{
  description = "Zadanie Raptorsowe";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        mikolaj-vm = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hardware-configuration.nix
            ./common.nix
            ./mikolaj-vm.nix
          ];
        };

        bulzacki-vm = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hardware-configuration.nix
            ./common.nix
            ./bulzacki-vm.nix
          ];
        };
      };
    };
}
