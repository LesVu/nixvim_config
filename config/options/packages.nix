{ pkgs, ... }: {
  extraPackages = with pkgs; [
    nixpkgs-fmt
    stylua
    shfmt
    black
    prettierd
    ripgrep
    clang-tools
 ];
}
