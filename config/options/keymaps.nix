{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
    disable_autoformat = false;
  };

  keymaps = [
    {
      action = "<cmd>lua vim.g.disable_autoformat = not vim.g.disable_autoformat<CR>";
      key = "<leader>cg";
      mode = "n";
      options.desc = "Toggle Global Conform Formatting";
    }
    {
      action = "<cmd>lua vim.b.disable_autoformat = not vim.b.disable_autoformat<CR>";
      key = "<leader>cb";
      mode = "n";
      options.desc = "Toggle Buffer Only Conform Formatting";
    }

    {
      action = "<cmd>w<CR>";
      key = "<C-s>";
      mode = [ "i" "n" "v" ];
    }
  ];
}
