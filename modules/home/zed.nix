{ ... }:
{
  programs.zed-editor = {
    enable = true;

    # 安装插件
    extensions = [ "nix" "python" "java" "kdl" "zig" "rust" "c" "cpp" "go" "lua" "bash" "toml" "yaml" "make" "sql" "git-firehose" "elisp" ];

    userSettings = {
      vim_mode = true;
      base_keymap ="VSCode";
      # 读取文件夹内的开发环境
      load_direnv = "shell_hook";

      theme = "Carbonfox - opaque";

      # 字体
      buffer_font_family = "Maple Mono NF";
      buffer_font_fallbacks = [
        "Sarasa Mono SC"
        "UDEV Gothic NFL"
        "IPAGothic"
      ];

      # 语言设置
      languages = {
        "Nix" = {
          language_servers = [ "nil" ];
          format_on_save = "on";
          formatter = {
            external = {
              command = "nixpkgs-fmt";                    # 保存自动格式化
              arguments = [ "--stdin" ];                  # 标准输入
            };
          };
        };

        "Python" = {
          language_servers = [ "basedpyright" "ruff" ];
          format_on_save = "on";
          formatter = {
            external = {
              command = "ruff";
              arguments = [ "format" "-" "--stdin-filename=python" ];
            };
          };
        };

        "Java" = {
          language_servers = [ "jdtls" ];
          format_on_save = "on";
          formatter = {
            external = {
              command = "google-java-format";
              arguments = [ "-" ];
            };
          };
        };

        "C" = {
          language_servers = [ "clangd" ];
          format_on_save = "on";
          formatter = {
            external = {
              command = "clang-format";
              arguments = [ "-assume-filename=c" ];
            };
          };
        };

        "Go" = {
          language_servers = [ "gopls" ];
          format_on_save = "on";
          formatter = {
            external = {
              command = "gofmt";
              arguments = [ "-s" ];
            };
          };
        };

        "Lua" = {
          language_servers = [ "lua-language-server" ];
          format_on_save = "on";
          formatter = {
            external = {
              command = "stylua";
              arguments = [ "-" ];
            };
          };
        };

        "Bash" = {
          language_servers = [ "bash-language-server" ];
          format_on_save = "on";
          formatter = {
            external = {
              command = "shfmt";
              arguments = [ "-i" "2" ];
            };
          };
        };

        "kdl" = {
          format_on_save = "on";
          formatter = {
            external = {
              command = "kdlfmt";
              arguments = [ "format" "-" ];
            };
          };
        };

        "C++" = {
          language_servers = [ "clangd" ];
          format_on_save = "on";
          formatter ={
            external = {
              command = "clang-format";
              arguments = [ "-assume-filename=cpp" ];
            };
          };
        };

        "Zig" = {
          language_servers = [ "zls" ];
          format_on_save = "on";
          formatter = {
            external = {
              command = "zig";
              arguments = [ "fmt" "--stdin" ];
            };
          };
        };

        "Rust" = {
          language_servers = [ "rust-analyzer" ];
          format_on_save = "on";
          formatter = {
            external = {
              command = "rustfmt";
              arguments = [ "--emit=stdout" ];
            };
          };
        };

        "Elisp" = {
          language_servers = [ "emacs-lsp-booster" ];
        };
      };
    };
  };
}
