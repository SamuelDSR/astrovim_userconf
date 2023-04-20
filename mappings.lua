-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- smart-splits key mapping
    ["<S-h>"] = {
      function() require("smart-splits").resize_left() end,
      desc = "resize window to left",
    },
    ["<S-l>"] = {
      function() require("smart-splits").resize_right() end,
      desc = "resize window to right",
    },
    ["<S-k>"] = {
      function() require("smart-splits").resize_up() end,
      desc = "resize window to up",
    },
    ["<S-j>"] = {
      function() require("smart-splits").resize_do() end,
      desc = "resize window to down",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bp"] = { "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- SessionManager: use s as leading key
    ["<leader>s"] = { name = "Session" },
    ["<leader>ss"] = { "<cmd>SessionManager save_current_session<cr>", desc = "Save this session" },
    ["<leader>sl"] = { "<cmd>SessionManager load_last_session<cr>", desc = "Load last session" },
    ["<leader>sf"] = { "<cmd>SessionManager load_session<cr>", desc = "Search sessions" },
    ["<leader>sd"] = { "<cmd>SessionManager delete_session<cr>", desc = "Delete session" },
    ["<leader>s."] = { "<cmd>SessionManager load_currrent_dir_session<cr>", desc = "Load the current dir session" },
    -- disable <leader>S mapping
    ["<leader>S"] = false,
    ["<leader>Ss"] = false,
    ["<leader>Sl"] = false,
    ["<leader>Sd"] = false,
    ["<leader>Sf"] = false,
    ["<leader>S."] = false,
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
