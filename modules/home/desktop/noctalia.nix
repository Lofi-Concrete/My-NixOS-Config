# noctalia-shell配置

{ pkgs, inputs, ... }:
{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;

    settings = {
      # 设置头像
      general = {
        avatarImage = "/home/mourne/Pictures/wallpaper/avatar.jpg";
      };

      # 使用壁纸配色
      colorSchemes = {
        useWallpaperColors = true;
      };

      # 壁纸与壁纸预览
      wallpaper = {
        enabled = true;
        overviewEnabled = true;
        directory = "/home/mourne/Pictures/wallpaper";
        overviewBlur = 0.4;
        overviewTint = 0.6;
      };

      bar = {
        density = "compact";                  # 紧凑模式
        position = "top";                     # 固定在上方
        useSeparateOpacity = true;
        backgroundOpacity = 0.0;
        showOutline = true;
        showCapsule = true;

        # 状态栏配置
        widgets = {
          # 左侧
          left = [
            {
              # 控制中心
              id = "ControlCenter";
              useDistroLogo = true;
            }
            {
              # 网络
              id = "Network";
            }
            {
              # 蓝牙
              id = "Bluetooth";
            }
          ];
          # 中心
          center = [
            {
              hideUnoccupied = false;          # 就算没开窗口也要显示工作区图表
              id = "Workspace";
              labelMode = "nano";
            }
          ];
          # 右侧
          right = [
            {
              # 系统托盘
              id = "Tray";
            }
            {
              alwaysShowPercentage = false;    # 仅必要时显示电池百分比
              id = "Battery";
              warningThreshold = 30;           # 电量低于30警告
            }
            {
              formatHorizontal = "HH:mm";
              formatVertical = "HH:mm";
              id = "Clock";
              useMonospacedFont = true;
              usePrimaryColor = true;
            }
          ];
        };
      };
    };
  };
}
