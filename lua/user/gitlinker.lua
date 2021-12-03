local M = {}

M.config = function()
  local status_ok, gitlinker = pcall(require, "gitlinker")
  if not status_ok then
    return
  end
  lvim.builtin.which_key.mappings["gy"] = "Link"
  gitlinker.setup {
    opts = {
      callbacks = {
        ["github.com"] = require("gitlinker.hosts").get_github_type_url,
        ["gitlab.com"] = require("gitlinker.hosts").get_gitlab_type_url,
        ["bitbucket.org"] = require("gitlinker.hosts").get_bitbucket_type_url,
        ["gitcorp.prod.cloud.ihf"] = require("gitlinker.hosts").get_gitlab_type_url,
      },
      -- remote = 'github', -- force the use of a specific remote
      -- adds current line nr in the url for normal mode
      add_current_line_on_normal_mode = true,
      -- callback for what to do with the url
      action_callback = require("gitlinker.actions").open_in_browser,
      -- print the url after performing the action
      print_url = false,
      -- mapping to call url generation
      mappings = "<leader>gy",
    },
  }
end

return M
