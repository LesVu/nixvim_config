{
  # Import all your configuration modules here
  imports = [
    ./options/bundles.nix
    ./plugins/bundles.nix
  ];
  # colorschemes.onedark = {
  #   enable = true;
  #   settings = {
  #     style = "darker";
  #   };
  # };
  colorschemes.nord = {
    enable = true;
    settings = {
      italic = false;
    };
  };
}
