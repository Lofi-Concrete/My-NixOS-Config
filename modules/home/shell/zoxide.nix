# 更好用的目录导航工具

{ pkgs, ... }:
{
  programs.zoxide = {
    enable = true;
    enableNushellIntegration = true;
  };
}
