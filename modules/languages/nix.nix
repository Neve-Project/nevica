{
  lib,
  config,
  pkgs,
  ...
}: {
  options = {
    nevica.languages.nix.enable = lib.mkEnableOption "Enable support for Nix programming language";
  };
  config = lib.mkIf config.nevica.languages.nix.enable {
    plugins = {
      treesitter.settings.ensure_installed = [
        "nix"
      ];
      lsp.servers.nixd = {
        package = pkgs.nixd;
        enable = true;
        settings = {
          nixpkgs = {
            expr = "import <nixpkgs> { }";
          };
          formatting = {
            command = ["alejandra"];
          };
        };
      };
      none-ls.sources = {
        formatting.alejandra = {
          enable = true;
          package = pkgs.alejandra;
        };
      };
    };
  };
}
