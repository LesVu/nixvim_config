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
          autostart = false;
          rootMarkers = [
            "deno.json"
            "deno.jsonc"
          ];
        };

        ts_ls = {
          enable = true;
          rootMarkers = [ "package.json" ];
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
