# noctalia-shell配置

{ pkgs, inputs, ... }:
{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;

    settings = {
      # 顶栏设置
      bar = {
        density = "compact";                  # 紧凑模式
        position = "top";                     # 固定在上方
        showCapsule = false;                  # 隐藏胶囊装外饰

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
            {
              # 系统托盘
              id = "Tray";
            }
          ];
        };
      };
    };
  };
}
