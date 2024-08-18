{ config, lib, ... }: {
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
    {
      action = "<cmd>NvimTreeFocus<CR>";
      key = "<leader>e";
      mode = "n";
    }
    {
      action = "<Plug>(comment_toggle_linewise_current)";
      key = "<leader>/";
      mode = "n";
    }
    {
      action = "<Plug>(comment_toggle_linewise_visual)";
      key = "<leader>/";
      mode = "v";
    }
    {
      action = "<cmd>w<CR>";
      key = "<C-s>";
      mode = [ "i" "n" "v" ];
    }
  ];
}
