{ pkgs, ... }:
{
  programs.zed-editor = {
    enable = true;

    # 安装插件
    extensions = [ "nix" "kdl" "zig" "rust" "cpp" "toml" "yaml" "make" "sql" "git-firehose" ];

    userSettings = {
      vim_mode = true;
      base_keymap ="VSCode";
      # 读取文件夹内的开发环境
      load_direnv = "shell_hook";

      theme = {
        mode = "dark";
        dark = "Carbonfox-opaque";
      };

      # 语言设置
      languages = {
        "Nix" = {
          language_servers = [ "nil" ];
          format_on_save = {
            external = {
              command = "nixpkgs-fmt";                    # 保存自动格式化
              arguments = [ "--stdin" ];                  # 标准输入
            };
          };
        };

        "KDL" = {
          format_on_save = {
            external = {
              command = "kdlfmt";
              arguments = [ "format" "-" ];
            };
          };
        };

        "C++" = {
          language_servers = [ "clangd" ];
          format_on_save = {
            external = {
              command = "clang-format";
              arguments = [ "-assume-filename=cpp" ];
            };
          };
        };

        "Zig" = {
          language_servers = [ "zls" ];
          format_on_save = {
            external = {
              command = "zig";
              arguments = [ "fmt" "--stdin" ];
            };
          };
        };

        "Rust" = {
          language_servers = [ "rust-analyzer" ];
          format_on_save = {
            external = {
              command = "rustfmt";
              arguments = [ "--emit=stdout" ];
            };
          };
        };
      };
    };
  };
}
