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

    # ----- Zig -----
    zig                         # Zig编辑器本体
    zls                         # Zig Language Serve

    # ----- Rust -----
    rustc                       # Rust编译器
    cargo                       # Rust包管理器
    rust-analyzer                # Rust语言服务器
    rustfmt                     # Rust格式化工具
  ];
}
