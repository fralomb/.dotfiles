require("harpoon").setup({
  global_settings = {
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = true,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = true,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" }
  },
  projects = {
    ["$HOME/personal/ourwedding"] = {
        term = {
            cmds = {
                "ng serve --open"
            }
        }
    },
    ["$HOME/personal/wedding"] = {
        term = {
            cmds = {
                "httpwatcher -p 8080"
            }
        }
    },
    ["$HOME/personal/training/natours"] = {
        term = {
            cmds = {
                "httpwatcher -p 8080"
            }
        }
    }
  }
})
