{
  plugins.snacks = {
    enable = true;
    settings = {
      gitbrowse.enabled = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>go";
      action = "<cmd>lua Snacks.gitbrowse()<CR>";
      options.desc = "Open file in browser";
    }
  ];
}
