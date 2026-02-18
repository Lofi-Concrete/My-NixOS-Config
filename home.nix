{ config, pkgs, inputs, ... }:
{
  home = {
    username = "mourne";
    homeDirectory = "/home/mourne";
    stateVersion = "25.11";
  };

  imports = [
    ./modules/home
  ];

  # git设置
  programs.git = {
    enable = true;
    settings.user = {
      name = "Lofi-Concrete";
      email = "lofi_concrete@noreply.codeberg.org";
      core.sshCommand = "ssh -i ~/.ssh/id_ed25519";
      init.defaultBranch = "main";
    };
    includes = [
      { path = "~/.config/git/config.local"; }
    ];
  };

  programs.home-manager.enable = true;
}
