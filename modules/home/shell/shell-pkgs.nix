# 给shell安装的拓展包

{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bat                             # 替代cat 支持与语法高亮和git修改显示
    ripgrep                         # 替代grep 更快
    fd                              # 替代find
    fzf                             # 模糊搜索
    eza                             # 替代ls 支持图标显示、git状态集成和更美观的列布局
  ];
}
