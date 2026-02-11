{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "vwu";
  home.homeDirectory = "/home/vwu";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/vwu/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.plasma = {
    enable = true;
    shortcuts = {
      ActivityManager.switch-to-activity-5a35321d-da56-4e6f-81a3-4fc1a3a4158a = [ ];
      "KDE Keyboard Layout Switcher"."Switch to Last-Used Keyboard Layout" = "Meta+Alt+L";
      "KDE Keyboard Layout Switcher"."Switch to Next Keyboard Layout" = "Meta+Alt+K";
      kaccess."Toggle Screen Reader On and Off" = "Meta+Alt+S";
      kmix.decrease_microphone_volume = "Microphone Volume Down";
      kmix.decrease_volume = "Volume Down";
      kmix.decrease_volume_small = "Shift+Volume Down";
      kmix.increase_microphone_volume = "Microphone Volume Up";
      kmix.increase_volume = "Volume Up";
      kmix.increase_volume_small = "Shift+Volume Up";
      kmix.mic_mute = ["Microphone Mute" "Meta+Volume Mute"];
      kmix.mute = "Volume Mute";
      ksmserver."Halt Without Confirmation" = [ ];
      ksmserver."Lock Session" = ["Meta+L" "Screensaver"];
      ksmserver."Log Out" = "Ctrl+Alt+Del";
      ksmserver."Log Out Without Confirmation" = [ ];
      ksmserver.LogOut = [ ];
      ksmserver.Reboot = [ ];
      ksmserver."Reboot Without Confirmation" = [ ];
      ksmserver."Shut Down" = [ ];
      kwin."Activate Window Demanding Attention" = "Meta+Ctrl+A";
      kwin."Cycle Overview" = [ ];
      kwin."Cycle Overview Opposite" = [ ];
      kwin."Decrease Opacity" = [ ];
      kwin."Edit Tiles" = "Meta+T";
      kwin.Expose = "Ctrl+F9";
      kwin.ExposeAll = ["Ctrl+F10" "Launch (C)"];
      kwin.ExposeClass = "Ctrl+F7";
      kwin.ExposeClassCurrentDesktop = [ ];
      kwin."Grid View" = "Meta+G";
      kwin."Increase Opacity" = [ ];
      kwin."Kill Window" = "Meta+Ctrl+Esc";
      kwin."Move Tablet to Next Output" = [ ];
      kwin.MoveMouseToCenter = "Meta+F6";
      kwin.MoveMouseToFocus = "Meta+F5";
      kwin.MoveZoomDown = [ ];
      kwin.MoveZoomLeft = [ ];
      kwin.MoveZoomRight = [ ];
      kwin.MoveZoomUp = [ ];
      kwin.Overview = "Meta+W";
      kwin."Setup Window Shortcut" = [ ];
      kwin."Show Desktop" = "Meta+D";
      kwin."Switch One Desktop Down" = "Meta+Ctrl+Down";
      kwin."Switch One Desktop Up" = "Meta+Ctrl+Up";
      kwin."Switch One Desktop to the Left" = "Meta+Ctrl+Left";
      kwin."Switch One Desktop to the Right" = "Meta+Ctrl+Right";
      kwin."Switch Window Down" = "Meta+Alt+Down";
      kwin."Switch Window Left" = "Meta+Alt+Left";
      kwin."Switch Window Right" = "Meta+Alt+Right";
      kwin."Switch Window Up" = "Meta+Alt+Up";
      kwin."Switch to Desktop 1" = "Ctrl+F1";
      kwin."Switch to Desktop 10" = [ ];
      kwin."Switch to Desktop 11" = [ ];
      kwin."Switch to Desktop 12" = [ ];
      kwin."Switch to Desktop 13" = [ ];
      kwin."Switch to Desktop 14" = [ ];
      kwin."Switch to Desktop 15" = [ ];
      kwin."Switch to Desktop 16" = [ ];
      kwin."Switch to Desktop 17" = [ ];
      kwin."Switch to Desktop 18" = [ ];
      kwin."Switch to Desktop 19" = [ ];
      kwin."Switch to Desktop 2" = "Ctrl+F2";
      kwin."Switch to Desktop 20" = [ ];
      kwin."Switch to Desktop 3" = "Ctrl+F3";
      kwin."Switch to Desktop 4" = "Ctrl+F4";
      kwin."Switch to Desktop 5" = [ ];
      kwin."Switch to Desktop 6" = [ ];
      kwin."Switch to Desktop 7" = [ ];
      kwin."Switch to Desktop 8" = [ ];
      kwin."Switch to Desktop 9" = [ ];
      kwin."Switch to Next Desktop" = [ ];
      kwin."Switch to Next Screen" = [ ];
      kwin."Switch to Previous Desktop" = [ ];
      kwin."Switch to Previous Screen" = [ ];
      kwin."Switch to Screen 0" = [ ];
      kwin."Switch to Screen 1" = [ ];
      kwin."Switch to Screen 2" = [ ];
      kwin."Switch to Screen 3" = [ ];
      kwin."Switch to Screen 4" = [ ];
      kwin."Switch to Screen 5" = [ ];
      kwin."Switch to Screen 6" = [ ];
      kwin."Switch to Screen 7" = [ ];
      kwin."Switch to Screen Above" = [ ];
      kwin."Switch to Screen Below" = [ ];
      kwin."Switch to Screen to the Left" = [ ];
      kwin."Switch to Screen to the Right" = [ ];
      kwin."Toggle Night Color" = [ ];
      kwin."Toggle Window Raise/Lower" = [ ];
      kwin."Walk Through Windows" = ["Meta+Tab" "Alt+Tab"];
      kwin."Walk Through Windows (Reverse)" = ["Meta+Shift+Tab" "Alt+Shift+Tab"];
      kwin."Walk Through Windows Alternative" = [ ];
      kwin."Walk Through Windows Alternative (Reverse)" = [ ];
      kwin."Walk Through Windows of Current Application" = ["Meta+`" "Alt+`"];
      kwin."Walk Through Windows of Current Application (Reverse)" = ["Meta+~" "Alt+~"];
      kwin."Walk Through Windows of Current Application Alternative" = [ ];
      kwin."Walk Through Windows of Current Application Alternative (Reverse)" = [ ];
      kwin."Window Above Other Windows" = [ ];
      kwin."Window Below Other Windows" = [ ];
      kwin."Window Close" = "Alt+F4";
      kwin."Window Custom Quick Tile Bottom" = [ ];
      kwin."Window Custom Quick Tile Left" = [ ];
      kwin."Window Custom Quick Tile Right" = [ ];
      kwin."Window Custom Quick Tile Top" = [ ];
      kwin."Window Fullscreen" = [ ];
      kwin."Window Grow Horizontal" = [ ];
      kwin."Window Grow Vertical" = [ ];
      kwin."Window Lower" = [ ];
      kwin."Window Maximize" = "Meta+PgUp";
      kwin."Window Maximize Horizontal" = [ ];
      kwin."Window Maximize Vertical" = [ ];
      kwin."Window Minimize" = "Meta+PgDown";
      kwin."Window Move" = [ ];
      kwin."Window Move Center" = [ ];
      kwin."Window No Border" = [ ];
      kwin."Window On All Desktops" = [ ];
      kwin."Window One Desktop Down" = "Meta+Ctrl+Shift+Down";
      kwin."Window One Desktop Up" = "Meta+Ctrl+Shift+Up";
      kwin."Window One Desktop to the Left" = "Meta+Ctrl+Shift+Left";
      kwin."Window One Desktop to the Right" = "Meta+Ctrl+Shift+Right";
      kwin."Window One Screen Down" = [ ];
      kwin."Window One Screen Up" = [ ];
      kwin."Window One Screen to the Left" = [ ];
      kwin."Window One Screen to the Right" = [ ];
      kwin."Window Operations Menu" = "Alt+F3";
      kwin."Window Pack Down" = [ ];
      kwin."Window Pack Left" = [ ];
      kwin."Window Pack Right" = [ ];
      kwin."Window Pack Up" = [ ];
      kwin."Window Quick Tile Bottom" = "Meta+Down";
      kwin."Window Quick Tile Bottom Left" = [ ];
      kwin."Window Quick Tile Bottom Right" = [ ];
      kwin."Window Quick Tile Left" = "Meta+Left";
      kwin."Window Quick Tile Right" = "Meta+Right";
      kwin."Window Quick Tile Top" = "Meta+Up";
      kwin."Window Quick Tile Top Left" = [ ];
      kwin."Window Quick Tile Top Right" = [ ];
      kwin."Window Raise" = [ ];
      kwin."Window Resize" = [ ];
      kwin."Window Shrink Horizontal" = [ ];
      kwin."Window Shrink Vertical" = [ ];
      kwin."Window to Desktop 1" = [ ];
      kwin."Window to Desktop 10" = [ ];
      kwin."Window to Desktop 11" = [ ];
      kwin."Window to Desktop 12" = [ ];
      kwin."Window to Desktop 13" = [ ];
      kwin."Window to Desktop 14" = [ ];
      kwin."Window to Desktop 15" = [ ];
      kwin."Window to Desktop 16" = [ ];
      kwin."Window to Desktop 17" = [ ];
      kwin."Window to Desktop 18" = [ ];
      kwin."Window to Desktop 19" = [ ];
      kwin."Window to Desktop 2" = [ ];
      kwin."Window to Desktop 20" = [ ];
      kwin."Window to Desktop 3" = [ ];
      kwin."Window to Desktop 4" = [ ];
      kwin."Window to Desktop 5" = [ ];
      kwin."Window to Desktop 6" = [ ];
      kwin."Window to Desktop 7" = [ ];
      kwin."Window to Desktop 8" = [ ];
      kwin."Window to Desktop 9" = [ ];
      kwin."Window to Next Desktop" = [ ];
      kwin."Window to Next Screen" = "Meta+Shift+Right";
      kwin."Window to Previous Desktop" = [ ];
      kwin."Window to Previous Screen" = "Meta+Shift+Left";
      kwin."Window to Screen 0" = [ ];
      kwin."Window to Screen 1" = [ ];
      kwin."Window to Screen 2" = [ ];
      kwin."Window to Screen 3" = [ ];
      kwin."Window to Screen 4" = [ ];
      kwin."Window to Screen 5" = [ ];
      kwin."Window to Screen 6" = [ ];
      kwin."Window to Screen 7" = [ ];
      kwin.disableInputCapture = "Meta+Shift+Esc";
      kwin.view_actual_size = "Meta+0";
      kwin.view_zoom_in = ["Meta++" "Meta+="];
      kwin.view_zoom_out = "Meta+-";
      mediacontrol.mediavolumedown = [ ];
      mediacontrol.mediavolumeup = [ ];
      mediacontrol.nextmedia = "Media Next";
      mediacontrol.pausemedia = "Media Pause";
      mediacontrol.playmedia = [ ];
      mediacontrol.playpausemedia = "Media Play";
      mediacontrol.previousmedia = "Media Previous";
      mediacontrol.stopmedia = "Media Stop";
      org_kde_powerdevil."Decrease Keyboard Brightness" = "Keyboard Brightness Down";
      org_kde_powerdevil."Decrease Screen Brightness" = "Monitor Brightness Down";
      org_kde_powerdevil."Decrease Screen Brightness Small" = "Shift+Monitor Brightness Down";
      org_kde_powerdevil.Hibernate = "Hibernate";
      org_kde_powerdevil."Increase Keyboard Brightness" = "Keyboard Brightness Up";
      org_kde_powerdevil."Increase Screen Brightness" = "Monitor Brightness Up";
      org_kde_powerdevil."Increase Screen Brightness Small" = "Shift+Monitor Brightness Up";
      org_kde_powerdevil.PowerDown = "Power Down";
      org_kde_powerdevil.PowerOff = "Power Off";
      org_kde_powerdevil.Sleep = "Sleep";
      org_kde_powerdevil."Toggle Keyboard Backlight" = "Keyboard Light On/Off";
      org_kde_powerdevil."Turn Off Screen" = [ ];
      org_kde_powerdevil.powerProfile = ["Battery" "Meta+B"];
      plasmashell."Slideshow Wallpaper Next Image" = [ ];
      plasmashell."activate application launcher" = ["Meta" "Alt+F1"];
      plasmashell."activate task manager entry 1" = "Meta+1";
      plasmashell."activate task manager entry 10" = [ ];
      plasmashell."activate task manager entry 2" = "Meta+2";
      plasmashell."activate task manager entry 3" = "Meta+3";
      plasmashell."activate task manager entry 4" = "Meta+4";
      plasmashell."activate task manager entry 5" = "Meta+5";
      plasmashell."activate task manager entry 6" = "Meta+6";
      plasmashell."activate task manager entry 7" = "Meta+7";
      plasmashell."activate task manager entry 8" = "Meta+8";
      plasmashell."activate task manager entry 9" = "Meta+9";
      plasmashell.clear-history = [ ];
      plasmashell.clipboard_action = "Meta+Ctrl+X";
      plasmashell.cycle-panels = "Meta+Alt+P";
      plasmashell.cycleNextAction = [ ];
      plasmashell.cyclePrevAction = [ ];
      plasmashell.edit_clipboard = [ ];
      plasmashell."manage activities" = "Meta+Q";
      plasmashell."next activity" = "Meta+A";
      plasmashell."previous activity" = "Meta+Shift+A";
      plasmashell.repeat_action = [ ];
      plasmashell."show dashboard" = "Ctrl+F12";
      plasmashell.show-barcode = [ ];
      plasmashell.show-on-mouse-pos = "Meta+V";
      plasmashell."switch to next activity" = [ ];
      plasmashell."switch to previous activity" = [ ];
      plasmashell."toggle do not disturb" = [ ];
      "services/1password.desktop"._launch = "Ctrl+Shift+Space";
    };
    configFile = {
      baloofilerc.General.dbVersion = 2;
      baloofilerc.General."exclude filters" = "*~,*.part,*.o,*.la,*.lo,*.loT,*.moc,moc_*.cpp,qrc_*.cpp,ui_*.h,cmake_install.cmake,CMakeCache.txt,CTestTestfile.cmake,libtool,config.status,confdefs.h,autom4te,conftest,confstat,Makefile.am,*.gcode,.ninja_deps,.ninja_log,build.ninja,*.csproj,*.m4,*.rej,*.gmo,*.pc,*.omf,*.aux,*.tmp,*.po,*.vm*,*.nvram,*.rcore,*.swp,*.swap,lzo,litmain.sh,*.orig,.histfile.*,.xsession-errors*,*.map,*.so,*.a,*.db,*.qrc,*.ini,*.init,*.img,*.vdi,*.vbox*,vbox.log,*.qcow2,*.vmdk,*.vhd,*.vhdx,*.sql,*.sql.gz,*.ytdl,*.tfstate*,*.class,*.pyc,*.pyo,*.elc,*.qmlc,*.jsc,*.fastq,*.fq,*.gb,*.fasta,*.fna,*.gbff,*.faa,po,CVS,.svn,.git,_darcs,.bzr,.hg,CMakeFiles,CMakeTmp,CMakeTmpQmake,.moc,.obj,.pch,.uic,.npm,.yarn,.yarn-cache,__pycache__,node_modules,node_packages,nbproject,.terraform,.venv,venv,core-dumps,lost+found";
      baloofilerc.General."exclude filters version" = 9;
      dolphinrc.General.ViewPropsTimestamp = "2026,2,10,17,53,42.159";
      dolphinrc."KFileDialog Settings"."Places Icons Auto-resize" = false;
      dolphinrc."KFileDialog Settings"."Places Icons Static Size" = 22;
      kactivitymanagerdrc.activities."5a35321d-da56-4e6f-81a3-4fc1a3a4158a" = "Default";
      kactivitymanagerdrc.main.currentActivity = "5a35321d-da56-4e6f-81a3-4fc1a3a4158a";
      katerc.General."Days Meta Infos" = 30;
      katerc.General."Save Meta Infos" = true;
      katerc.General."Show Full Path in Title" = false;
      katerc.General."Show Menu Bar" = true;
      katerc.General."Show Status Bar" = true;
      katerc.General."Show Tab Bar" = true;
      katerc.General."Show Url Nav Bar" = true;
      katerc.filetree.editShade = "70,53,111";
      katerc.filetree.listMode = false;
      katerc.filetree.middleClickToClose = false;
      katerc.filetree.shadingEnabled = true;
      katerc.filetree.showCloseButton = false;
      katerc.filetree.showFullPathOnRoots = false;
      katerc.filetree.showToolbar = true;
      katerc.filetree.sortRole = 0;
      katerc.filetree.viewShade = "77,46,91";
      kcminputrc."Libinput/1133/16511/Logitech G502".PointerAccelerationProfile = 1;
      kcminputrc."Libinput/2362/628/PIXA3854:00 093A:0274 Touchpad".ClickMethod = 2;
      kcminputrc."Libinput/2362/628/PIXA3854:00 093A:0274 Touchpad".NaturalScroll = true;
      kcminputrc."Libinput/2362/628/PIXA3854:00 093A:0274 Touchpad".PointerAcceleration = 0.200;
      kcminputrc."Libinput/2362/628/PIXA3854:00 093A:0274 Touchpad".PointerAccelerationProfile = 1;
      kcminputrc."Libinput/2362/628/PIXA3854:00 093A:0274 Touchpad".ScrollFactor = 0.3;
      kcminputrc."Libinput/2362/628/PIXA3854:00 093A:0274 Touchpad".TapAndDrag = false;
      kded5rc.Module-browserintegrationreminder.autoload = false;
      kded5rc.Module-device_automounter.autoload = false;
      kdeglobals.General.AccentColor = "146,110,228";
      kdeglobals.General.LastUsedCustomAccentColor = "146,110,228";
      kdeglobals.WM.activeBackground = "39,44,49";
      kdeglobals.WM.activeBlend = "252,252,252";
      kdeglobals.WM.activeForeground = "252,252,252";
      kdeglobals.WM.inactiveBackground = "32,36,40";
      kdeglobals.WM.inactiveBlend = "161,169,177";
      kdeglobals.WM.inactiveForeground = "161,169,177";
      kwalletrc.Wallet."First Use" = false;
      kwinrc.Desktops.Id_1 = "f49157da-61f7-47e6-9ece-657f5b8fb3ed";
      kwinrc.Desktops.Id_2 = "d087e85b-e670-4d12-8a95-94fde3e83656";
      kwinrc.Desktops.Number = 2;
      kwinrc.Desktops.Rows = 1;
      kwinrc.Tiling.padding = 4;
      kwinrc."Tiling/d087e85b-e670-4d12-8a95-94fde3e83656/c62ce53d-71b4-46fe-9ed4-677733b73222".tiles = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}]}";
      kwinrc."Tiling/d087e85b-e670-4d12-8a95-94fde3e83656/f08b8c08-58ae-4429-abc2-5de975af9e32".tiles = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}]}";
      kwinrc."Tiling/f49157da-61f7-47e6-9ece-657f5b8fb3ed/c62ce53d-71b4-46fe-9ed4-677733b73222".tiles = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}]}";
      kwinrc."Tiling/f49157da-61f7-47e6-9ece-657f5b8fb3ed/f08b8c08-58ae-4429-abc2-5de975af9e32".tiles = "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}]}";
      kwinrc.Windows.Placement = "Smart";
      kwinrc.Xwayland.Scale = 1.25;
      plasma-localerc.Formats.LANG = "en_US.UTF-8";
      plasmanotifyrc."Applications/firefox".Seen = true;
    };
    dataFile = {
      "kate/anonymous.katesession"."Document 0".URL = "file:///home/vwu/.mozilla/firefox/2b21eiy7.default/chrome/userChrome.css";
      "kate/anonymous.katesession"."Kate Plugins".bookmarksplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".cmaketoolsplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".compilerexplorer = false;
      "kate/anonymous.katesession"."Kate Plugins".eslintplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".externaltoolsplugin = true;
      "kate/anonymous.katesession"."Kate Plugins".formatplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katebacktracebrowserplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katebuildplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katecloseexceptplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katecolorpickerplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katectagsplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katefilebrowserplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katefiletreeplugin = true;
      "kate/anonymous.katesession"."Kate Plugins".kategdbplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".kategitblameplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katekonsoleplugin = true;
      "kate/anonymous.katesession"."Kate Plugins".kateprojectplugin = true;
      "kate/anonymous.katesession"."Kate Plugins".katereplicodeplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katesearchplugin = true;
      "kate/anonymous.katesession"."Kate Plugins".katesnippetsplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katesqlplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katesymbolviewerplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katexmlcheckplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".katexmltoolsplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".keyboardmacrosplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".ktexteditorpreviewplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".latexcompletionplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".lspclientplugin = true;
      "kate/anonymous.katesession"."Kate Plugins".openlinkplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".rainbowparens = false;
      "kate/anonymous.katesession"."Kate Plugins".rbqlplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".tabswitcherplugin = true;
      "kate/anonymous.katesession"."Kate Plugins".templateplugin = false;
      "kate/anonymous.katesession"."Kate Plugins".textfilterplugin = true;
      "kate/anonymous.katesession".MainWindow0."Active ViewSpace" = 0;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-H-Splitter = "0,1003,0";
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-0-Bar-0-TvList = "kate_private_plugin_katefiletreeplugin,kateproject,kateprojectgit,lspclient_symbol_outline";
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-0-LastSize = 200;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-0-SectSizes = 0;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-0-Splitter = 732;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-1-Bar-0-TvList = "";
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-1-LastSize = 200;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-1-SectSizes = 0;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-1-Splitter = 401;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-2-Bar-0-TvList = "";
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-2-LastSize = 200;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-2-SectSizes = 0;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-2-Splitter = 595;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-3-Bar-0-TvList = "output,diagnostics,kate_plugin_katesearch,kateprojectinfo,kate_private_plugin_katekonsoleplugin";
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-3-LastSize = 200;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-3-SectSizes = 0;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-3-Splitter = 761;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-Style = 2;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-Sidebar-Visible = true;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-diagnostics-Position = 3;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-diagnostics-Show-Button-In-Sidebar = true;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-diagnostics-Visible = false;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kate_plugin_katesearch-Position = 3;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kate_plugin_katesearch-Show-Button-In-Sidebar = true;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kate_plugin_katesearch-Visible = false;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kate_private_plugin_katefiletreeplugin-Position = 0;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kate_private_plugin_katefiletreeplugin-Show-Button-In-Sidebar = true;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kate_private_plugin_katefiletreeplugin-Visible = false;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kate_private_plugin_katekonsoleplugin-Position = 3;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kate_private_plugin_katekonsoleplugin-Show-Button-In-Sidebar = true;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kate_private_plugin_katekonsoleplugin-Visible = false;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kateproject-Position = 0;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kateproject-Show-Button-In-Sidebar = true;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kateproject-Visible = false;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kateprojectgit-Position = 0;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kateprojectgit-Show-Button-In-Sidebar = true;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kateprojectgit-Visible = false;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kateprojectinfo-Position = 3;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kateprojectinfo-Show-Button-In-Sidebar = true;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-kateprojectinfo-Visible = false;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-lspclient_symbol_outline-Position = 0;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-lspclient_symbol_outline-Show-Button-In-Sidebar = true;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-lspclient_symbol_outline-Visible = false;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-output-Position = 3;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-output-Show-Button-In-Sidebar = true;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-ToolView-output-Visible = false;
      "kate/anonymous.katesession".MainWindow0.Kate-MDI-V-Splitter = "0,732,0";
      "kate/anonymous.katesession"."MainWindow0 Settings".WindowState = 8;
      "kate/anonymous.katesession"."MainWindow0-Splitter 0".Children = "MainWindow0-ViewSpace 0";
      "kate/anonymous.katesession"."MainWindow0-Splitter 0".Orientation = 1;
      "kate/anonymous.katesession"."MainWindow0-Splitter 0".Sizes = 1003;
      "kate/anonymous.katesession"."MainWindow0-ViewSpace 0"."Active View" = 0;
      "kate/anonymous.katesession"."MainWindow0-ViewSpace 0".Count = 1;
      "kate/anonymous.katesession"."MainWindow0-ViewSpace 0".Documents = 0;
      "kate/anonymous.katesession"."MainWindow0-ViewSpace 0"."View 0" = 0;
      "kate/anonymous.katesession"."MainWindow0-ViewSpace 0 0".ScrollLine = 1;
      "kate/anonymous.katesession"."Open Documents".Count = 1;
      "kate/anonymous.katesession"."Open MainWindows".Count = 1;
      "kate/anonymous.katesession"."Plugin:kateprojectplugin:".projects = "";
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".BinaryFiles = false;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".CurrentExcludeFilter = "-1";
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".CurrentFilter = "-1";
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".ExcludeFilters = "";
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".ExpandSearchResults = false;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".Filters = "";
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".FollowSymLink = false;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".HiddenFiles = false;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".MatchCase = false;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".Place = 1;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".Recursive = true;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".Replaces = "";
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".Search = "";
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".SearchAsYouTypeAllProjects = true;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".SearchAsYouTypeCurrentFile = true;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".SearchAsYouTypeFolder = true;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".SearchAsYouTypeOpenFiles = true;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".SearchAsYouTypeProject = true;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".SearchDiskFiles = "";
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".SearchDiskFiless = "";
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".SizeLimit = 128;
      "kate/anonymous.katesession"."Plugin:katesearchplugin:MainWindow:0".UseRegExp = false;
    };
  };
}
