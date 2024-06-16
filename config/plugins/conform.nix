{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      timeoutMs = 1500;
      lspFallback = true;
    };

    formattersByFt = {
      nix = [ "nixpkgs_fmt" ];
      lua = [ "stylua" ];
      javascript = [ "prettierd" ];
      typescript = [ "prettierd" ];
      sh = [ "shfmt" ];
      python = [ "black" ];
    };
  };
}
