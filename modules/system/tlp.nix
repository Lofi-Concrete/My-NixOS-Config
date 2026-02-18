# 这是tlp管理 使电源管理更合理

{ config, pkgs, ... }:
{
  services.tlp = {
    enable = true;

    settings = {

      # 调度策略
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

      # 能量与性能平衡
      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";

      # 保护电池
      START_CHARGE_THRESH_BATO = 40;
      STOP_CHARGE_THRESH_BATO = 80;

      # 磁盘和总线电源管理
      PLATFORM_PROFILE_ON_AC = "performance";
      PLATFORM_PROFILE_ON_BAT = "low-power";
    };

  };

  # 防止冲突(因为Plasma？）
  services.power-profiles-daemon.enable = false;

}
