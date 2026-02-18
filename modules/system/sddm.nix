# sddm设置

{ config, pkgs, lib, ... }:

let
  customSddmTheme = pkgs.sddm-astronaut.override {
    # 切换主题
    embeddedTheme = "hyprland_kath";
  };

in
{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "${customSddmTheme}/share/sddm/themes/sddm-astronaut-theme";

    # 强制用SDDM包
    package = lib.mkForce pkgs.kdePackages.sddm;

    # 必要依赖
    extraPackages = with pkgs.kdePackages; [
      qtmultimedia
      qtsvg
      qtvirtualkeyboard
      qt5compat
      qtdeclarative
    ];
  };

  environment.systemPackages = with pkgs; [
    customSddmTheme
    kdePackages.qtsvg
    kdePackages.qtmultimedia
  ];
}
