{pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    vscode
    jetbrains-toolbox
    kicad
    arduino-ide
    bambu-studio
    wget
    uv
    distrobox
    podman

    firefox
    discord
    deezer-enhanced
    steam
    slack

    libreoffice
    inkscape
    vlc
    zoom-us
    _1password-gui
    _1password-cli
    mullvad
    mullvad-vpn

    htop
    btop
    fastfetch
  ];

  programs.steam = {
   enable = true;
   remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
   dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
   localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

}
