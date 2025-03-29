{
  plugins = {
    luasnip = {
      enable = false;
      fromVscode = [
        { }
        { paths = ./snippets; }
      ];
    };

    friendly-snippets.enable = true;
  };
}
