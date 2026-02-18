{ pkgs, ... }:
{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-pgtk;
  };

  # 安装必要依赖 有重复的 但我懒得管了
  home.packages = with pkgs; [
    git
    ripgrep
    fd
    coreutils
    stdenv.cc
    sqlite
  ];

  # 设置变量
  home = {
    sessionVariables = {
      DOOMDIR = "$HOME/.config/doom";
    };
    sessionPath = [
      "$HOME/.config/emacs/bin"
    ];
  };
}
