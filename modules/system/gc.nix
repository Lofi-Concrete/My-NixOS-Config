# 每周一次自动垃圾回收 干掉旧版本

{ lib, ... }:
{
  nix.gc = {
    automatic = lib.mkDefault true;
    dates = lib.mkDefault "weekly";
    options = lib.mkDefault "--delete-older-than 7d";
  };
}
