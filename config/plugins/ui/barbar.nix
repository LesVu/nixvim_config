{
  plugins.barbar = {
    enable = true;

    settings = {
      exclude_ft = [ "Alpha" ];
      auto_hide = 0;
    };

    keymaps = {
      next.key = "<TAB>";
      previous.key = "<S-TAB>";
      close.key = "<C-x>";
    };
  };
}
