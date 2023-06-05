vim.keymap.set('i', '/', '\\')
vim.keymap.set('i', '\\', '/')

-- local vimtex = require("vimtex")

-- -- This is necessary for VimTeX to load properly. The "indent" is optional.
-- -- Note that most plugin managers will do this automatically.
-- vimtex.plugin.indent = "on"

-- -- This enables Vim's and neovim's syntax-related features. Without this, some
-- -- VimTeX features will not work (see ":help vimtex-requirements" for more
-- -- info).
-- vimtex.syntax.enable = "true"

-- -- Viewer options: One may configure the viewer either by specifying a built-in
-- -- viewer method:
-- vim.g.vimtex_view_method = 'evince'

-- -- Or with a generic interface:
-- vim.g.vimtex_view_general_viewer = 'okular'
-- -- vim.g.vimtex_view_general_options = "--unique file:@pdf\#src:@line@tex"

-- -- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- -- strongly recommended, you probably don't need to configure anything. If you
-- -- want another compiler backend, you can change it as follows. The list of
-- -- supported backends and further explanation is provided in the documentation,
-- -- see ":help vimtex-compiler".
-- vim.g.vimtex_compiler_method = 'pdflatex --shell-escape'

-- Most VimTeX mappings rely on localleader and this can be changed with the
-- following line. The default is usually fine and is the symbol "\".
-- vim.maplocalleader = ","
-- local ls = require("luasnip")

-- local snip = {
--     ls.parser.parse_snipet(
--         { trig = "bf", name = "bold" },
--         "\\textbf{$1}"
--     ),

--     ls.parser.parse_snipet(
--         { trig = "it", name = "italic" },
--         "\\textit{$1}"
--     ),
-- }

-- return snip

-- ls.add_snippets("all", {
--     s("bf", {
--         t("\\textbf{"),
--         i(1),
--         t("}"),
--         i(2),
--     }),

--     s("it", {
--         t("\\textit{"),
--         i(1),
--         t("}"),
--         i(2),
--     }),
-- }, {
--     key = "all",
-- })
