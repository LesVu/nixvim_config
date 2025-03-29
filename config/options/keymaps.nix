{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
    disable_autoformat = false;
  };

  keymaps = [
    {
      action = "<cmd>lua vim.g.disable_autoformat = not vim.g.disable_autoformat<CR>";
      key = "<leader>fc";
      mode = "n";
      options.desc = "Toggle Global Formatting";
    }
    {
      action = "<cmd>w<CR>";
      key = "<C-s>";
      mode = [ "i" "n" "v" ];
    }
  ];
}
