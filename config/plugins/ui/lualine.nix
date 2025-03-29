{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        theme = "auto";
        globalstatus = true;
        disabled_filetypes.statusline = [
          "dashboard"
          "alpha"
        ];
        component_separators =
          {
            left = "";
            right = "";
          };
        section_separators =
          {
            left = "";
            right = "";
          };
      };

      # +-------------------------------------------------+
      # | A | B | C                             X | Y | Z |
      # +-------------------------------------------------+

      sections = {
        lualine_a = [{
          __unkeyed-1 = "mode";
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
            __unkeyed-1.__raw = ''
              function()
                  local msg = ""
                  local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                  local clients = vim.lsp.get_clients()
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
          }
          "filetype"
        ];
        lualine_z = [{
          __unkeyed-1 = "location";
          separator = {
            right = "";
          };
          padding = {
            right = 1;
            left = 1;
          };
        }];
      };

    };
  };
}
