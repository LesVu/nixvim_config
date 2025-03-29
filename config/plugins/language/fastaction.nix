{
  plugins.fastaction = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>cc";
      action = ''<cmd>lua require('fastaction').code_action()<cr>'';
      options = {
        desc = "Fastaction code action";
      };
    }
    {
      mode = "v";
      key = "<leader>cc";
      action = ''<cmd>lua require('fastaction').range_code_action()<cr>'';
      options = {
        desc = "Fastaction code action";
      };
    }
  ];
}

