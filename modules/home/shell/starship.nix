# shell提示符配置

{ pkgs, ... }:
{
  programs.starship = {
    enable = true;
    enableNushellIntegration = true;
  };

  # 链接配置到标准路径
  xdg.configFile."starship.toml".source = ./starship.toml;
}
