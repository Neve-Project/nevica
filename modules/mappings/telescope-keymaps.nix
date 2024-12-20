{
  lib,
  config,
  ...
}: {
  plugins.telescope = lib.mkIf config.nevica.utils.telescope.enable {
    keymaps = {
      # Find mappings
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Find Files";
      };
      "<leader>fg" = {
        action = "live_grep";
        options.desc = "Live Grep";
      };
      "<leader>fc" = {
        action = "command_history";
        options.desc = "Find Command History";
      };
      "<leader>fr" = {
        action = "oldfiles";
        options.desc = "Find Recent";
      };
      "<leader>fb" = {
        action = "buffers";
        options.desc = "Find Buffers";
      };
      "<leader>fk" = {
        action = "keymaps";
        options.desc = "Find Keymaps";
      };
      "<leader>fm" = {
        action = "marks";
        options.desc = "Find Mark";
      };

      # Git mappings
      "<leader>gf" = {
        action = "git_files";
        options.desc = "Git files";
      };
      "<leader>gc" = {
        action = "git_commits";
        options.desc = "Git Commits";
      };
      "<leader>gs" = {
        action = "git_status";
        options.desc = "Git Status";
      };

      # Search mappings
      "<leader>sa" = {
        action = "autocommands";
        options.desc = "Search Auto Commands";
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find";
        options.desc = "Search Buffer";
      };
      "<leader>sc" = {
        action = "command_history";
        options.desc = "Search Command History";
      };
      "<leader>sC" = {
        action = "commands";
        options.desc = "Search Commands";
      };
      "<leader>sh" = {
        action = "help_tags";
        options.desc = "Serch Help pages";
      };
      "<leader>sH" = {
        action = "highlights";
        options.desc = "Search Highlight Groups";
      };
      "<leader>sM" = {
        action = "man_pages";
        options.desc = "Search Man pages";
      };
      "<leader>so" = {
        action = "vim_options";
        options.desc = "Search Vim options";
      };
      "<leader>sR" = {
        action = "resume";
        options.desc = "Search Resume";
      };
      "<leader>st" = {
        action = "colorscheme";
        options.desc = "Search Colorscheme";
      };

      # Options
      "<leader>wD" = {
        action = "diagnostics";
        options.desc = "Workspace diagnostics";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>wd";
      action = "<cmd>Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "Document diagnostics";
      };
    }
    {
      mode = "n";
      key = "<leader>ft";
      action = "<cmd>TodoTelescope<cr>";
      options = {
        silent = true;
        desc = "Find Todo";
      };
    }
  ];
}
