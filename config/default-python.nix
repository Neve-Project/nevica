{
  imports = [
    # -------------- Coding --------------------
    # ----- Color highlighting ------------
    ./highlighting/treesitter.nix
    # ----- Language Servers --------------
    ./lsp/default.nix
    # ----- Formatters & Linters ----------
    ./none-ls/default.nix
    # ----- Languages configurations ------
    ./languages/python.nix
    # ----- Debugger ----------------------
    ./dap/dap.nix
    # ----- Code completion ---------------
    ./completion/cmp.nix
    # ----- Snippets ----------------------
    ./snippets/luasnip.nix

    # -------------- Look ---------------------
    # ----- Interface ---------------------
    ./ui/default.nix
    # ----- Colorschemes ------------------
    ./colorscheme/colorscheme.nix

    # -------------- Other ---------------------
    # ----- Plugins -----------------------
    ./plugins/default.nix
    # ----- Keymaps -----------------------
    ./keymaps.nix
    # ----- Options -----------------------
    ./options.nix
  ];
}
