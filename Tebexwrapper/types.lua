---@class BaseProduct
---@field name string
---@field label string
---@field description string
---@field price number
---@field image string
---@field metadata? table

---@class Category
---@field type string
---@field name string
---@field label string
---@field description string
---@field products BaseProduct[]

---@class DatabasePlayer
---@field identidier string
---@field coins number
