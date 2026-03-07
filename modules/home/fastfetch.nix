{ pkgs, ... }:
{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        source = "/home/mourne/Pictures/wallpaper/nixos-plus.png";
        type = "kitty";
        width = 30;
        padding = {
          top = 2;
          right = 1;
        };
      };

      modules = [
        "title"
        "separator"
        "os"
        "host"
        "kernel"
        "uptime"
        "shell"
        "display"
        "de"
        "wm"
        "terminal"
        "cpu"
        "gpu"
        "memory"
        "swap"
        "disk"
        "localip"
        "battery"
        "break"
        "colors"
      ];
    };
  };
}
