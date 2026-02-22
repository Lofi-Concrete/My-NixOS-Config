{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    # ----- zen浏览器和Nixvim -----
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.nixvim.packages.x86_64-linux.default

    # ----- 终端实用工具 -----
    btop
    yazi

    # ----- 文件管理和缩略图支持 -----
    thunar
    tumbler
    ffmpegthumbnailer
    poppler-utils
    xfconf

    # ----- 影音 -----
    splayer

    # ----- 社交 -----
    telegram-desktop
    qq

    # ----- 邮件 -----
    thunderbird
    aerc

    # ----- Office -----
    libreoffice-qt-fresh

    # ----- 代理 -----
    clash-verge-rev

    # ----- PDF -----
    zathura
    kdePackages.okular
  ];
}
