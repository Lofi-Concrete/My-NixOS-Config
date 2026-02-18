{ inputs, pkgs, ... }:
{
  imports = [
    inputs.catppuccin.homeModules.catppuccin
  ];

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";

    fcitx5 = {
      # 添加必要包
      addons = with pkgs; [
        qt6Packages.fcitx5-configtool
        qt6Packages.fcitx5-chinese-addons
        fcitx5-lua
        fcitx5-gtk
        fcitx5-rime
        fcitx5-fluent
        fcitx5-pinyin-moegirl
        fcitx5-pinyin-zhwiki
        liberation_ttf
      ];

      # 设置主题
      settings.addons.classicui.globalSection = {
        Theme = "catppuccin-mocha-sapphire";
        Font = "LXGW WenKai 14";
      };
    };
  };

  # catppuccin配置
  catppuccin.fcitx5 = {
    enable = true;
    flavor = "mocha";
    accent = "sapphire";
    enableRounded = true;
    apply = false;            # 和settings.addons.classicui.globalSection冲突
  };
}
