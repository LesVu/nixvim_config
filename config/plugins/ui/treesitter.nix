{ config, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;
      folding = true;
      settings = {
        indent.enable = true;
        disable = # Lua
          ''
            function(lang, bufnr)
              return vim.api.nvim_buf_line_count(bufnr) > 10000
            end
          '';
      };
      # ensureInstalled = [ "lua" "luadoc" "printf" "vim" "vimdoc" ];
    };

    treesitter-context = {
      inherit (config.plugins.treesitter) enable;
      settings = {
        max_lines = 4;
        min_window_height = 40;
        multiwindow = true;
        separator = "-";
      };
    };

    treesitter-refactor = {
      inherit (config.plugins.treesitter) enable;
      settings.highlight_definitions = {
        enable = true;
        # Set to false if you have an `updatetime` of ~100.
        clear_on_cursor_move = false;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>uT";
      action = "<cmd>TSContextToggle<cr>";
      options.desc = "Treesitter Context toggle";
    }
  ];
}
