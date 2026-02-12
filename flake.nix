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

    zephyr.url = "github:zephyrproject-rtos/zephyr/";
    zephyr.flake = false;

    zephyr-nix = {
      url = "github:nix-community/zephyr-nix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.zephyr.follows = "zephyr";
    };

  };

  outputs = { self, nixpkgs, zephyr-nix, ... }@inputs: 
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      zephyr = zephyr-nix.packages.${system};
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

      devShells.${system} = {
        zephyr = import ./modules/apps/zephyr-shell.nix {
	  inherit pkgs zephyr;
	};
      };

    };

}
