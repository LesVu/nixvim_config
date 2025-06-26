{
  plugins = {
    lsp = {
      enable = true;

      keymaps.lspBuf = {
        "<c-k>" = "signature_help";
        "gi" = "implementation";
      };

      servers = {
        nil_ls.enable = true;
        html.enable = true;
        bashls.enable = true;
        jsonls.enable = true;
        cssls.enable = true;
        pyright.enable = true;
        clangd.enable = true;

        denols = {
          enable = true;
          extraOptions.root_dir.__raw = "require('lspconfig').util.root_pattern('deno.json', 'deno.jsonc')";
        };

        ts_ls = {
          enable = true;
          extraOptions = {
            single_file_support = false;
            root_dir.__raw = ''
              function (filename, bufnr)
                local denoRootDir = require('lspconfig').util.root_pattern("deno.json", "deno.json")(filename);
                if denoRootDir then
                  return nil;
                end
                return require('lspconfig').util.root_pattern("package.json")(filename);
              end
            '';
          };
        };

        yamlls = {
          enable = true;
          settings = {
            yaml = {
              schemas = {
                "https://json.schemastore.org/github-workflow.json" = ".github/workflows/*.{yml, yaml}";
              };
            };
          };
        };
      };
    };
    lsp-signature.enable = true;
    lsp-lines.enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>cl";
      action = "<cmd>LspInfo<cr>";
      options.desc = "Lsp Info";
    }
  ];
}
