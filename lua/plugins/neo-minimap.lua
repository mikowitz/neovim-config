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
    end
  }
}
