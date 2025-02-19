{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = ''
        function(bufnr)
          if vim.g.disable_autoformat then
            return
          end

          return { timeout_ms = 1500, lsp_fallback = true }, on_format
        end
      '';
      formatters_by_ft = {
        nix = [ "nixpkgs_fmt" ];
        lua = [ "stylua" ];
        javascript = [ "prettierd" ];
        typescript = [ "prettierd" ];
        sh = [ "shfmt" ];
        python = [ "black" ];
        c = [ "clang-format" ];
      };

    };

  };
}
