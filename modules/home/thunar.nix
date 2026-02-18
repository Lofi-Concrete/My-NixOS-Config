{ pkgs, ... }:
{
  # 启动dconf
  dconf.enable = true;

  # gtk外观相关配置
  gtk = {
    enable = true;

    # 主题
    theme = {
      name = "Tokyonight-Dark";
      package = pkgs.tokyonight-gtk-theme;
    };

    # 图表
    # 我不知道为什么用不了 很神秘
    iconTheme = {
      name = "Tela-circle-dark";
      package = pkgs.tela-circle-icon-theme;
    };

    # 字体
    font = {
      name = "LXGW WenKai";
      size = 12;
    };

    # 对gtk3微调 强制暗色模式
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };

  # 补一些基础包
  home.packages = with pkgs; [
    thunar
    thunar-archive-plugin               # 右键解压压缩
    thunar-volman                       # 管理可移动设备
    tela-circle-icon-theme              # 图标 好像没用 我在想怎么让其生效
    lxqt.lxqt-policykit                 # 身份验证代理
  ];
}
