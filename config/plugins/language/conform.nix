{ pkgs, ... }: {
  extraPackages = with pkgs; [
    nixpkgs-fmt
    stylua
    shfmt
    black
    prettierd
    clang-tools
  ];

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
        "_" = [
          "squeeze_blanks"
          "trim_whitespace"
          "trim_newlines"
        ];
      };
      formatters = {
        _ = {
          command = "${pkgs.gawk}/bin/gawk";
        };
        squeeze_blanks = {
          command = "${pkgs.coreutils}/bin/cat";
        };
      };
    };
  };
}
