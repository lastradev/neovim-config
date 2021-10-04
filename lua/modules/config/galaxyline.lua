return function()
    local present1, gl = pcall(require, "galaxyline")
    local present2, condition = pcall(require, "galaxyline.condition")
    if not (present1 or present2) then
        return
    end

    -- get my theme in galaxyline repo
    -- local colors = require('galaxyline.theme').default
    --
        local onedark = {
            black = '#0c0e15',
              bg0 = '#1a212e',
              bg1 = '#21283b',
              bg2 = '#283347',
              bg3 = '#2a324a',
             bg_d = '#141b24',
          bg_blue = '#54b0fd',
        bg_yellow = '#f2cc81',
               fg = '#93a4c3',
           purple = '#c75ae8',
            green = '#8bcd5b',
           orange = '#dd9046',
             blue = '#41a7fc',
           yellow = '#efbd5d',
             cyan = '#34bfd0',
              red = '#f65866',
             grey = '#455574',
        dark_cyan = '#1b6a73',
         dark_red = '#992525',
      dark_yellow = '#8f610d',
      dark_purple = '#862aa1',
        diff_add  = '#27341c',
      diff_delete = '#331c1e',
      diff_change = '#102b40',
        diff_text = '#1c4a6e'
    }

    local colors = {
      bg = "#282a36",
      bg_inactive = "#282a36",
      fg = onedark.fg,
      fg_focus = '#f8f8f2',
      section_bg = onedark.bg0,
      yellow = onedark.bg_yellow,
      dark_yellow = onedark.bg_yellow,
      info_yellow = onedark.yellow,
      cyan = onedark.cyan,
      green = onedark.green,
      light_green = onedark.green,
      string_orange = onedark.orange,
      orange = onedark.orange,
      magenta = onedark.purple,
      purple = onedark.purple,
      blue = onedark.blue,
      vivid_blue = onedark.blue,
      light_blue = onedark.blue,
      red = onedark.red,
      error_red = onedark.red,
      black = onedark.black,
      grey = onedark.grey
    }

    local gls = gl.section
    gl.short_line_list = {'NvimTree', 'vista', 'dbui', 'packer'}

    table.insert(gls.left, {
        ViMode = {
            provider = function()
                -- auto change color according the vim mode
                local mode_color = {
                    n = colors.blue,
                    i = colors.green,
                    v = colors.purple,
                    [''] = colors.purple,
                    V = colors.purple,
                    c = colors.magenta,
                    no = colors.blue,
                    s = colors.orange,
                    S = colors.orange,
                    [''] = colors.orange,
                    ic = colors.yellow,
                    R = colors.red,
                    Rv = colors.red,
                    cv = colors.blue,
                    ce = colors.blue,
                    r = colors.cyan,
                    rm = colors.cyan,
                    ['r?'] = colors.cyan,
                    ['!'] = colors.blue,
                    t = colors.blue
                }
                vim.api.nvim_command('hi GalaxyViMode guifg=' .. mode_color[vim.fn.mode()])
                return '▊ '
            end,
            highlight = {colors.red, colors.bg}
        }
    })
    print(vim.fn.getbufvar(0, 'ts'))
    vim.fn.getbufvar(0, 'ts')

    table.insert(gls.left, {
        GitIcon = {
            provider = function()
                return ' '
            end,
            condition = condition.check_git_workspace,
            separator = ' ',
            separator_highlight = {'NONE', colors.bg},
            highlight = {colors.orange, colors.bg}
        }
    })

    table.insert(gls.left, {
        GitBranch = {
            provider = 'GitBranch',
            condition = condition.check_git_workspace,
            separator = ' ',
            separator_highlight = {'NONE', colors.bg},
            highlight = {colors.grey, colors.bg}
        }
    })

    table.insert(gls.left, {
        FileIcon = {
          provider = 'FileIcon',
          condition = condition.buffer_not_empty,
          highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
        },
    })


    table.insert(gls.left, {
        FileName = {
          provider = 'FileName',
          condition = condition.buffer_not_empty,
          highlight = {colors.grey, colors.bg}
        }
    })

    table.insert(gls.left, {
        DiffAdd = {
            provider = 'DiffAdd',
            condition = condition.hide_in_width,
            icon = '  ',
            highlight = {colors.green, colors.bg}
        }
    })
    table.insert(gls.left, {
        DiffModified = {
            provider = 'DiffModified',
            condition = condition.hide_in_width,
            icon = ' 柳',
            highlight = {colors.blue, colors.bg}
        }
    })
    table.insert(gls.left, {
        DiffRemove = {
            provider = 'DiffRemove',
            condition = condition.hide_in_width,
            icon = '  ',
            highlight = {colors.red, colors.bg}
        }
    })

    table.insert(gls.right, {
        DiagnosticError = {provider = 'DiagnosticError', icon = '  ', highlight = {colors.error_red, colors.bg}}
    })
    table.insert(gls.right, {DiagnosticWarn = {provider = 'DiagnosticWarn', icon = '  ', highlight = {colors.orange, colors.bg}}})

    table.insert(gls.right, {
        DiagnosticHint = {provider = 'DiagnosticHint', icon = '  ', highlight = {colors.vivid_blue, colors.bg}}
    })

    table.insert(gls.right, {DiagnosticInfo = {provider = 'DiagnosticInfo', icon = '  ', highlight = {colors.info_yellow, colors.bg}}})

    table.insert(gls.right, {
        ShowLspClient = {
            provider = 'GetLspClient',
            condition = function()
                local tbl = {['dashboard'] = true, [' '] = true}
                if tbl[vim.bo.filetype] then return false end
                return true
            end,
            icon = '  ',
            highlight = {colors.grey, colors.bg}
        }
    })

    table.insert(gls.right, {
        LineInfo = {
            provider = 'LineColumn',
            separator = '  ',
            separator_highlight = {'NONE', colors.bg},
            highlight = {colors.grey, colors.bg}
        }
    })

    table.insert(gls.right, {
        PerCent = {
            provider = 'LinePercent',
            separator = ' ',
            separator_highlight = {'NONE', colors.bg},
            highlight = {colors.grey, colors.bg}
        }
    })

    table.insert(gls.right, {
        Tabstop = {
            provider = function()
                return "Spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth") .. " "
            end,
            condition = condition.hide_in_width,
            separator = ' ',
            separator_highlight = {'NONE', colors.bg},
            highlight = {colors.grey, colors.bg}
        }
    })

    table.insert(gls.right, {
        BufferType = {
            provider = 'FileTypeName',
            condition = condition.hide_in_width,
            separator = ' ',
            separator_highlight = {'NONE', colors.bg},
            highlight = {colors.grey, colors.bg}
        }
    })

    table.insert(gls.right, {
        FileEncode = {
            provider = 'FileEncode',
            condition = condition.hide_in_width,
            separator = ' ',
            separator_highlight = {'NONE', colors.bg},
            highlight = {colors.grey, colors.bg}
        }
    })

    table.insert(gls.right, {
        Space = {
            provider = function()
                return ' '
            end,
            separator = ' ',
            separator_highlight = {'NONE', colors.bg},
            highlight = {colors.orange, colors.bg}
        }
    })

    table.insert(gls.short_line_left, {
        BufferType = {
            provider = 'FileTypeName',
            separator = ' ',
            separator_highlight = {'NONE', colors.bg},
            highlight = {colors.grey, colors.bg}
        }
    })

    table.insert(gls.short_line_left, {
        SFileName = {provider = 'SFileName', condition = condition.buffer_not_empty, highlight = {colors.grey, colors.bg}}
    })
end
