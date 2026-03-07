# 系统级包管理
# 说实话我不是很知道现在这有什么用

{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    wget                                      # 命令行下载工具
    xwayland-satellite                        # 为wayland提供x1land
    xwayland                                  # wayland运行x11
    quickshell
    libnotify                                 # 用于发送桌面通知的客户端库
  ];
}
