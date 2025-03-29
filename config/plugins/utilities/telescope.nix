{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>ft" = {
        action = "todo-comments";
        options.desc = "View Todo";
      };
      "<leader>ff" = {
        action = "find_files hidden=true";
        options.desc = "Find project files";
      };
      "<leader>fg" = {
        action = "live_grep";
        options.desc = "Grep (root dir)";
      };
      "<leader>f:" = {
        action = "command_history";
        options.desc = "View Command History";
      };
      "<leader>fr" = {
        action = "oldfiles";
        options.desc = "View Recent files";
      };
      "<c-p>" = {
        mode = [
          "n"
          "i"
        ];
        action = "registers";
        options.desc = "Select register to paste";
      };
      "<leader>gc" = {
        action = "git_commits";
        options.desc = "commits";
      };
      "<leader>fa" = {
        action = "autocommands";
        options.desc = "Auto Commands";
      };
      "<leader>fc" = {
        action = "commands";
        options.desc = "View Commands";
      };
      "<leader>fd" = {
        action = "diagnostics bufnr=0";
        options.desc = "View Workspace diagnostics";
      };
      "<leader>fh" = {
        action = "help_tags";
        options.desc = "View Help pages";
      };
      "<leader>fk" = {
        action = "keymaps";
        options.desc = "View Key maps";
      };
      "<leader>fm" = {
        action = "man_pages";
        options.desc = "View Man pages";
      };
      "<leader>f'" = {
        action = "marks";
        options.desc = "View Marks";
      };
      "<leader>fo" = {
        action = "vim_options";
        options.desc = "View Options";
      };
      "<leader>uC" = {
        action = "colorscheme";
        options.desc = "Colorscheme preview";
      };
    };

    settings.defaults = {
      prompt_prefix = "   ";
      color_devicons = true;
      file_ignore_patterns = [
        "^.git/"
        "^.mypy_cache/"
        "^__pycache__/"
        "^output/"
        "^data/"
        "%.ipynb"
      ];
      set_env.COLORTERM = "truecolor";
    };

    settings = {
      pickers.find_files.hidden = true;

      mappings = {
        i = {
          # Have Telescope not to enter a normal-like mode when hitting escape (and instead exiting), you can map <Esc> to do so via:
          "<esc>".__raw = ''
            function(...)
              return require("telescope.actions").close(...)
            end'';
          "<c-t>".__raw = ''
            function(...)
              require('trouble.providers.telescope').open_with_trouble(...);
            end
          '';
        };
        n = {
          "<c-t>".__raw = ''
            function(...)
              require('trouble.providers.telescope').open_with_trouble(...);
            end
          '';
        };
      };
    };

    extensions = {
      fzf-native.enable = true;

      ui-select = {
        enable = true;
        settings = {
          __unkeyed-1.__raw = ''require("telescope.themes").get_dropdown{}'';
          specific_opts = {
            codeactions = true;
          };
        };
      };

      undo = {
        enable = true;
        settings = {
          side_by_side = true;
          layout_strategy = "vertical";
          layout_config = {
            preview_height = 0.8;
          };
        };
      };
    };
  };

  keymaps = [
     {
      mode = "n";
      key = "<leader>fu";
      action = "<cmd>Telescope undo<CR>";
      options = {
        desc = "View Undo history";
      };
    }
  ];
}
