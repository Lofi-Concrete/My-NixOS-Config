# 多Shell参数补全引擎
# 提供更好的补全

{ pkgs, ... }:
{
  programs.carapace = {
    enable = true;
    enableNushellIntegration = true;
  };
}
