{ config, ... }:
{
  plugins = {
    mini = {
      enable = true;
      modules = {
        ai = { };
        icons = { };
        comment = {
          options = {
            customCommentString = ''
              <cmd>lua require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring<cr>
            '';
          };
          mappings = {
            # Toggle comment (like `gcip` - comment inner paragraph) for both
            # Normal and Visual modes
            comment = "<leader>/";

            # Toggle comment on current line
            comment_line = "<leader>/";

            # Toggle comment on visual selection
            comment_visual = "<leader>/";

            # Define 'comment' textobject (like `dgc` - delete whole comment block)
            # Works also in Visual mode if mapping differs from `comment_visual`
            textobject = "<leader>/";
          };
        };
        # Highlight word under cursor
        cursorword = {
          delay = 0;
        };

        snippets = {
          snippets = {
            __unkeyed-1.__raw = "require('mini.snippets').gen_loader.from_file('${config.plugins.friendly-snippets.package}/snippets/global.json')";
            __unkeyed-2.__raw = "require('mini.snippets').gen_loader.from_lang()";
          };
        };
      };
    };

    ts-context-commentstring.enable = true;
  };
}
