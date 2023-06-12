return {
  {
    "ziontee113/neo-minimap",

    config = function()
      local nmm = require("neo-minimap")

      nmm.setup_defaults({
        width = 100,
        height = 36,
      })

      nmm.set({"zi", "za", "zr"}, "*.rb", {
        events = {"BufEnter"},
        query = {
          [[
          ;; methods
          ((method) @cap)
          ((singleton_method) @cap)
          ((class) @cap)
          ((module) @cap)
          ((identifier) @cap (#vim-match? @cap "^describe"))
          ((identifier) @cap (#vim-match? @cap "^it"))
          ]], [[
          ;; attributes
          ((identifier) @cap (#vim-match? @cap "^attr"))
          ((identifier) @cap (#vim-match? @cap "^delegate"))
          ]], [[
          ;; relationships
          ((identifier) @cap (#vim-match? @cap "^has_many"))
          ((identifier) @cap (#vim-match? @cap "^has_one"))
          ((identifier) @cap (#vim-match? @cap "^has_and_belongs_to_many"))
          ((identifier) @cap (#vim-match? @cap "^belongs_to"))
          ]]
        }
      })

      nmm.set({"zd", "za"}, "*.ex,*.exs", {
        events = {"BufEnter"},
        query = {
          [[
          ;; def*
          ((identifier) @cap (#vim-match? @cap "^def"))
          ((identifier) @cap (#vim-match? @cap "^describe"))
          ((identifier) @cap (#vim-match? @cap "^test"))
          ]], [[
          ;; aliases, imports, uses
          ((identifier) @cap (#vim-match? @cap "^alias"))
          ((identifier) @cap (#vim-match? @cap "^import"))
          ((identifier) @cap (#vim-match? @cap "^use"))
          ]]
        }
      })

      nmm.set({"zd", "za"}, "*.py", {
        events = {"BufEnter"},
        query = {
          [[
          ;; functions
          ((class_definition ) @cap)
          ((function_definition ) @cap)
          ]], [[
          ;; aliases, imports, and uses
          ((identifier) @cap (#vim-match? @cap "^alias"))
          ((identifier) @cap (#vim-match? @cap "^import"))
          ((identifier) @cap (#vim-match? @cap "^use"))
          ]]
        }
      })
    end
  }
}
