{
  # Import all your configuration modules here
  imports = [
    ./options
    ./plugins
  ];
  # colorschemes.onedark = {
  #   enable = true;
  #   settings = {
  #     style = "darker";
  #   };
  # };
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "macchiato";
      default_integrations = true;
    };
  };
}
