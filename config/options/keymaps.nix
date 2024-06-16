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
      action = "gcc";
      key = "<leader>/";
      mode = "n";
    }
    {
      action = "gc";
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
