{ config, pkgs, ... }:
{
  # 把niri相关设置传到原本位置
  xdg.configFile = {
    "niri/config.kdl" = {
      source = ./config.kdl;
      force = true;
    };
    "niri/window-rules.kdl" = {
      source = ./window-rules.kdl;
    };
    "niri/binds.kdl" = {
      source = ./binds.kdl;
    };
  };
  home.packages = with pkgs; [
    swaybg
  ];
}
