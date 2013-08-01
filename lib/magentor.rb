# Ruby wrapper for the magento api
#
# Author::    Preston Stuteville  (mailto:preston.stuteville@gmail.com)
# License::   MIT
#
# Inspiration from the MagentoAPI plugin from Tim Matheson (http://github.com/timmatheson/MagentoAPI) 

require "active_support/inflector"
require "logger"
require 'xmlrpc/client'

XMLRPC::Config.send(:remove_const, :ENABLE_NIL_PARSER)
XMLRPC::Config.send(:const_set, :ENABLE_NIL_PARSER, true)
XMLRPC::Config.send(:remove_const, :ENABLE_NIL_CREATE)
XMLRPC::Config.send(:const_set, :ENABLE_NIL_CREATE, true)

require 'magento_api/connection'
require 'magento_api/base'

module MagentoAPI
  autoload :CategoryAttribute,   "magento_api/category_attribute"
  autoload :Category,            "magento_api/category"
  autoload :Country,             "magento_api/country"
  autoload :CustomerAddress,     "magento_api/customer_address"
  autoload :CustomerGroup,       "magento_api/customer_group"
  autoload :Customer,            "magento_api/customer"
  autoload :Inventory,           "magento_api/inventory"
  autoload :Invoice,             "magento_api/invoice"
  autoload :OrderItem,           "magento_api/order_item"
  autoload :Order,               "magento_api/order"
  autoload :ProductAttribute,    "magento_api/product_attribute"
  autoload :ProductAttributeSet, "magento_api/product_attribute_set"
  autoload :ProductLink,         "magento_api/product_link"
  autoload :ProductMedia,        "magento_api/product_media"
  autoload :Product,             "magento_api/product"
  autoload :ProductStock,        "magento_api/product_stock"
  autoload :ProductTierPrice,    "magento_api/product_tier_price"
  autoload :ProductType,         "magento_api/product_type"
  autoload :Region,              "magento_api/region"
  autoload :Shipment,            "magento_api/shipment"
end
