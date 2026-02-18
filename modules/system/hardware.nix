# 管理硬件固件

{ config, pkgs, ... }:
{
  hardware = {
    enableAllFirmware = true;

    # 启用Intel CPU的微代码更新
    cpu.intel.updateMicrocode = true;

    # 硬件加速图形驱动
    graphics = {
      enable = true;
      # 32位支持
      enable32Bit = true;

      # 为64位系统安装额外的Intel媒体驱动
      extraPackages = with pkgs; [
        intel-media-driver
        intel-vaapi-driver
      ];

      # 32位驱动
      extraPackages32 = with pkgs.pkgsi686Linux; [
        intel-media-driver
        intel-vaapi-driver
      ];
    };
  };
}
