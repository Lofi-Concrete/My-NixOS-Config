{ config, pkgs, ... }:
{
  programs.ghostty = {
    enable = true;

    settings = {

      # 字体
      font-family = "Maple Mono NF";
      font-size = 12;
      font-thicken = true;
      font-feature = [ "ss01" "ss02" "ss03" "cv01" "liga" ];

      # 主题
      theme = "TokyoNight Moon";
      background-blur-radius = 20;

      # 窗口
      window-padding-x = 12;
      window-padding-y = 10;
      window-padding-balance = true;
      window-decoration = false;
      gtk-wide-tabs = false;

      # 不要确认关闭
      confirm-close-surface = false;

      mouse-shift-capture = true;
      copy-on-select = false;

      command = "${pkgs.nushell}/bin/nu";

    };
  };
}
