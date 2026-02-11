{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };

    home-manager = {
    	url = "github:nix-community/home-manager";
    	inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
       url = "github:nix-community/plasma-manager";
       inputs.nixpkgs.follows = "nixpkgs";
       inputs.home-manager.follows = "home-manager";
    };

  };

  outputs = { self, nixpkgs, ... }@inputs: 
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {

      nixosConfigurations = {
        lappy = nixpkgs.lib.nixosSystem {
          specialArgs = {inherit inputs;};
            modules = [
              ./hosts/lappy/configuration.nix
              inputs.nixos-hardware.nixosModules.framework-16-7040-amd
          ];
        };
      };
    };

}
