{ pkgs, ... }: {
  extraPackages = with pkgs; [
    lazygit
  ];

  plugins.snacks = {
    enable = true;
    settings = {
      lazygit.enabled = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>lua Snacks.lazygit()<CR>";
      options.desc = "Open lazygit";
    }
  ];
}
