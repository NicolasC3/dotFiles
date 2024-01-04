local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")

-- Include this `in_mathzone` function at the start of a snippets file...
local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end
-- Then pass the table `{condition = in_mathzone}` to any snippet you want to
-- expand only in math contexts.

return {
  s("ctrig", t("also loaded!!")),

  s({
    trig = "ff",
    snippetType = "autosnippet",
  }, {
    t("\\frac{"),
    i(1),
    t("}"),
    t("{"),
    i(2),
    t("}"),
  }, { condition = in_mathzone }),

  s({
    trig = "ket",
    snippetType = "autosnippet",
  }, {
    t("\\ket{"),
    i(1),
    t("}"),
  }, { condition = in_mathzone }),

  s({
    trig = "bra",
    snippetType = "autosnippet",
  }, {
    t("\\bra{"),
    i(1),
    t("}"),
  }, { condition = in_mathzone }),

  s({
    trig = "bket",
    snippetType = "autosnippet",
  }, {
    t("\\braket{"),
    i(1),
    t("}"),
    t("{"),
    i(2),
    t("}"),
  }, { condition = in_mathzone }),

  s({
    trig = "txbf",
    snippetType = "autosnippet",
  }, {
    t("\\textbf{"),
    i(1),
    t("}"),
  }),

  s({
    trig = "txit",
    snippetType = "autosnippet",
  }, {
    t("\\textbf{"),
    i(1),
    t("}"),
  }),

  -- s({
  --   trig = "phi",
  --   snippetType = "autosnippet",
  -- }, {
  --   t("\\phi"),
  -- }, { condition = in_mathzone }),
  --
  -- s({
  --   trig = " phi ",
  --   snippetType = "autosnippet",
  -- }, {
  --   t("$\\phi$"),
  -- }, { condition = not in_mathzone }),
}
