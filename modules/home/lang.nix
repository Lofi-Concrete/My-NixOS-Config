{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # ----- Nix -----
    nil                         # Nix语言服务器
    nixpkgs-fmt                 # Nix格式化工具

    # ----- KDL -----
    kdlfmt                      # KDL格式化工具

    # ----- C / C++ -----
    clang-tools                 # 包含clangd和clang-format
    gcc                         # 嘟嘟哒哒嘟嘟
    gdb                         # 调试器

    # ----- Python -----
    python311                   # Python基础环境
    basedpyright                # 类型检查服务器
    ruff

    # ----- Java -----
    jdk21
    jdt-language-server         # Java语言服务器

    # ----- Go -----
    go                          # Go编辑器
    gopls                       # Go语言服务器
    delve                       # Go调试器

    # ----- Zig -----
    zig                         # Zig编辑器本体
    zls                         # Zig Language Serve

    # ----- Rust -----
    rustc                       # Rust编译器
    cargo                       # Rust包管理器
    rust-analyzer               # Rust语言服务器
    rustfmt                     # Rust格式化工具

    # ----- 脚本 -----
    lua-language-server
    stylua                      # Lua格式化工具
    bash-language-server
    shfmt                      # Shell格式化工具
    shellcheck                  # Shell静态检查工具

    # ----- Elisp -----
    emacs-lsp-booster           # 语法分析服务器
  ];
}
