{ pkgs, ... }:
{
  programs.nushell = {
    enable = true;
    settings = {
      # 关闭欢迎
      show_banner = false;
      edit_mode = "vi";
      cursor_shape = {
        vi_insert = "line";           # 插入模式光标为竖线
        vi_normal = "block";          # 普通模式光标为方块
      };
      history = {
        max_size = 10000;
        file_format = "plaintext";
      };
    };
  };
}
