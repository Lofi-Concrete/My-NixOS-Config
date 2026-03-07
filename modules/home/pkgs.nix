{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    # ----- zen浏览器和Nixvim -----
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.nixvim.packages.x86_64-linux.default

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

    # ----- 文档阅读 -----
    kdePackages.okular
    sioyek
    foliate

    # ----- 笔记 -----
    logseq

    # ----- TUI -----
    ani-cli                    # 追番
    ncspot                     # Spotify
    newsraft                   # RSS阅读器
    clashtui                   # 代理
    aerc                       # 邮件
    calcurse                   # 日历
    manga-tui                  # 电子漫画阅读器
    mapscii                    # 地图
    notcurses                  # 终端UI库
    tuir                       # Reddit
    tenki                      # 天气
    cbonsai                    # 树
    chawan                     # 浏览器
    browsh                     # 浏览器
    yazi                       # 文件管理器
    btop                       # 性能
    lazygit                    # Git
  ];
}
