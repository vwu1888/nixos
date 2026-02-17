{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    # These fix the "undefined symbol" and path issues for asammdf [cite: 177-178]
    bashrcExtra = ''
      if [ -f /run/.containerenv ]; then
        export PATH="$HOME/.local/bin:$PATH"
        export QT_PLUGIN_PATH="$HOME/.local/lib/python3.12/site-packages/PySide6/Qt/plugins"
        export QT_QPA_PLATFORM_PLUGIN_PATH="$HOME/.local/lib/python3.12/site-packages/PySide6/Qt/plugins/platforms"
        export QT_QPA_PLATFORM=xcb
      fi
    '';
    # Bridges the login shell vs interactive shell gap [cite: 180-181]
    profileExtra = ''
      if [ -f /run/.containerenv ]; then
        source ~/.bashrc
      fi
    '';
  };
}
