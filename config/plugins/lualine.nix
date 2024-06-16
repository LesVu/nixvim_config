{
  plugins.lualine = {

    enable = true;
    globalstatus = true;

    componentSeparators =
      {
        left = "";
        right = "";
      };
    sectionSeparators =
      {
        left = "";
        right = "";
      };

    # +-------------------------------------------------+
    # | A | B | C                             X | Y | Z |
    # +-------------------------------------------------+

    sections = {
      lualine_a = [{
        name = "mode";
        separator = {
          left = "";
        };
        padding = {
          right = 1;
          left = 1;
        };
      }];
      lualine_b = [ "filename" ];
      lualine_c = [ "branch" "diff" ];

      lualine_x = [
        "diagnostics"

        # Show active language server
        {
          name.__raw = ''
            function()
                local msg = ""
                local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                local clients = vim.lsp.get_active_clients()
                if next(clients) == nil then
                    return msg
                end
                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end
                return msg
            end
          '';
          icon = " ";
          # color.fg = "#ffffff";
        }
        "filetype"
      ];
      lualine_z = [{
        name = "location";
        separator = {
          right = "";
        };
        padding = {
          right = 1;
          left = 1;
        };
      }];
    };

    theme = "palenight";
  };
}
