{ config, lib, ... }: {
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
      action = "<cmd>NvimTreeFocus<CR>";
      key = "<leader>e";
      mode = "n";
      options.desc = "Open tree";
    }
    {
      action = "<Plug>(comment_toggle_linewise_current)";
      key = "<leader>/";
      mode = "n";
      options.desc = "Comment current line";
    }
    {
      action = "<Plug>(comment_toggle_linewise_visual)";
      key = "<leader>/";
      mode = "v";
      options.desc = "Comment current block";
    }
    {
      action = "<cmd>w<CR>";
      key = "<C-s>";
      mode = [ "i" "n" "v" ];
    }
  ];
}
