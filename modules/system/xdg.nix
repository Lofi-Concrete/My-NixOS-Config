# 确保能正常共享文件和屏幕
# 我不知道这怎么运作的 但不用这个我 zed 点打开文件夹没反应

{ config, pkgs, lib, ... }:
{
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      # xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
    ];
    config = {
      common = {
        default = [ "gtk" ];
        "org.freedesktop.impl.portal.FileChooser" = [ "gtk" ];
      };
      niri = {
        default = lib.mkForce[ "gtk" ];
        "org.freedesktop.impl.portal.FileChoose" = [ "gtk" ];
      };
    };
  };
}
