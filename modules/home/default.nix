{ pkgs, lib, ... }:
let
  allFiles = lib.filesystem.listFilesRecursive ./.;
  filterNixFiles = path:
    let
      pathStr = toString path;
    in
      lib.hasSuffix ".nix" pathStr && path != ./default.nix && !(lib.hasPrefix ".#"(baseNameOf pathStr));
  importsList = lib.filter filterNixFiles allFiles;
in
{
  imports = importsList;
}
