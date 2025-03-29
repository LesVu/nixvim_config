{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [ nui-nvim ];
  plugins.noice = {
    enable = true;
    settings = {
      cmdline.view = "cmdline";
      
      lsp = {
        override = {
          "vim.lsp.util.convert_input_to_markdown_lines" = true;
          "vim.lsp.util.stylize_markdown" = true;
          "cmp.entry.get_documentation" = true;
        };
        notify.enabled = true;
        progress.enabled = true;
        signature.enabled = true;
      };

      presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
        inc_rename = true;
        lsp_doc_border = true;
      };

      routes = [
        {
          filter = {
            event = "msg_show";
            any = [
              { find = "%d+L, %d+B"; }
              { find = "; after #%d+"; }
              { find = "; before #%d+"; }
            ];
          };
          view = "mini";
        }
      ];
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>sn";
      action = "<cmd>Telescope noice<CR>";
      options = {
        desc = "Find notifications";
      };
    }
  ];
}

