# ai生成的fuzzel美化

{ pkgs, ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "LXGW WenKai:size=13";
        icon-theme = "papirus-Dark";
        fields = "name,generic,comment,executable,categories";
        terminal = "ghostty";

        width = 25;
        horizontal-pad = 20;
        vertical-pad = 10;
        inner-pad = 8;
        line-height = 24;
      };

      colors = {
        background = "1a1b26dd";
        text = "c0caf5ff";
        match = "7aa2f7ff";
        selection = "33467cff";
        selection-text = "eeeeeeff";
        selection-match = "2ac3deff";
        border = "7aa2f7ff";
      };

      border = {
        width = 2;
        radius = 12;
      };
    };
  };
}
