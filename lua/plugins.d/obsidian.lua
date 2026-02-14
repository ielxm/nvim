local weekdays = {"воскресенье", "понедельник", "вторник", "среда", "четверг", "пятница", "суббота"}
local months1 = {"января", "февраля", "марта", "апреля", "мая", "июня", "июля", "августа", "сентября", "октября", "ноября", "декабря"}
local months2 = {"январь", "февраль", "март", "апрель", "май", "июнь", "июль", "август", "сентябрь", "октябрь", "ноябрь", "декабрь"}
local months3 = {"Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"}

return {
    {
        "obsidian-nvim/obsidian.nvim",
        version = "*",
        --ft = { "markdown", "" },
        ---@module 'obsidian'
        ---@type obsidian.config
        init = function()
            vim.api.nvim_set_keymap('n', '<leader>ot', '<cmd> Obsidian template<CR>',           { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>oq', '<cmd> Obsidian quick_switch<CR>',       { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>oo', '<cmd> Obsidian open<CR>',               { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>oc', '<cmd> Obsidian new<CR>',                { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>of', '<cmd> Obsidian new_from_template<CR>',  { noremap = true, silent = true })
            vim.api.nvim_set_keymap('n', '<leader>ow', '<cmd> Obsidian workspace<CR>',          { noremap = true, silent = true })
        end,
        opts = {
            legacy_commands = false,
            workspaces = {
                {
                    name = "diary_test",
                    path = "~/notes/Obsidian/Diary_Backup",
                    overrides = {
                        notes_subdir = os.date("%Y") .. "/" .. os.date("%Y") .. "-" .. months3[tonumber(os.date("%m"))],
                        note_id_func = function(title)
                            if title ~= nil then
                                return title
                            else
                                return os.date("%d.%m.%Y") .. " - " .. "Дейли"
                            end
                        end,
                        note_path_func = function(spec)
                            local path = Obsidian.dir / Obsidian.opts.notes_subdir / tostring(spec.id)
                            return path
                        end,
                        templates = {
                            folder = "Шаблоны",
                            substitutions = {
                                ["time:HH:mm"] = function()
                                    return os.date("%H:%M")
                                end,
                                ["date:YYYY-MMMM"] = function()
                                    return os.date("%Y") .. "-" .. months2[tonumber(os.date("%m"))]
                                end,
                                ["date:dddd, D MMMM YYYYг."] = function()
                                    return weekdays[tonumber(os.date("%w"))+1] .. ", " .. tonumber(os.date("%d")) .. " " .. months1[tonumber(os.date("%m"))] .. " " .. os.date("%Y") .. "г."
                                end,
                            }
                        },
                    }
                }
            },
            ui = {
                enable = false
            },
            frontmatter = {
                enabled = false
            }
        }
    }
}
