# 用于下载字体

{ pkgs, ... }:
{
  fonts = {
    # 下载字体包
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji
      lxgw-wenkai
      maple-mono.NF
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
      nerd-fonts.iosevka
      nerd-fonts.caskaydia-cove
      nerd-fonts.symbols-only
      sarasa-gothic
    ];

    # 字体默认设置
    fontconfig = {
      enable = true;
      defaultFonts = {
        emoji = [ "Noto Color Emoji" ];
        monospace = [
          "Maple Mono NF"
          "JetBrainsMono Nerd Font"
          "Sarasa Mono SC"
        ];
        sansSerif = [
          "LXGW WenKai"
          "Noto Serif CJK SC"
        ];
      };
    };
  };
}
