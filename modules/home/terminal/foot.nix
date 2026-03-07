{ pkgs, ... }:
{
  programs.foot = {
    enable = true;
    server.enable = true;

    settings = {
      main = {
        font = "Maple Mono NF:size=12";
        pad = "12x10";
        shell = "${pkgs.nushell}/bin/nu";
      };

      mouse = {
        hide-when-typing = "yes";
      };

      cursor = {
        style = "block";
      };

      colors = {
        background = "222436";
        foreground = "c8d3f5";
      };
    };
  };
}
