# 环境变量

{ ... }:
{
  environment.sessionVariables = {
    # 设置fcitx5的变量
    QT_IM_MODULE = "fcitx";
    QT_IM_MODULES = "fcitx";
    XMODIFIERS = "@im=fcitx";
    NIX_IM_MODULE = "fcitx";
    SDL_IM_MODULE = "fcitx";
    GLFW_IM_MODULE = "ibus";

    # 设置intel显卡的变量
    LIBVA_DRIVER_NAME = "iHD";

    # 代理
    # http_proxy = "http://127.0.0.1:7890";
    # https_proxy = "http://127.0.0.1:7890";
    # all_proxy = "socls5://127.0.0.1:7890";
  };
}
