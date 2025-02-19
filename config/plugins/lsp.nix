{
  plugins.lsp = {
    enable = true;
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
        autostart = false;
        rootDir = "function(fname) return require('lspconfig').util.root_pattern('deno.json', 'deno.jsonc')(fname) end";
      };

      ts_ls = {
        enable = true;
        rootDir = "function(fname) return require('lspconfig').util.find_package_json_ancestor(fname) end";
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
}
