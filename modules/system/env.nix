# 环境变量

{ config, pkgs, ... }:
{
  environment.sessionVariables = {
    # 设置fcitx5的变量
    QT_IM_MODULE = "fcitx";
    QT_IM_MODULES = "fcitx";
    XMODIFIERS = "@im=fcitx";
    NIX_IM_MODULE = "fcitx";
    SDL_IM_MODULE = "fcitx";
    GLFW_IM_MODULE = "ibus";
  };
}
