{
  plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;
      folding = true;
      settings.indent.enable = true;
      # ensureInstalled = [ "lua" "luadoc" "printf" "vim" "vimdoc" ];
    };

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        # Set to false if you have an `updatetime` of ~100.
        clearOnCursorMove = false;
      };
    };
  };
}
