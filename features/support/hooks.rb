# Require custom helper file
require_relative 'screen_helper'
require_relative '../step_definitions/page_routes'

# Extend world with module
World(ScreenHelper)
World(PageRoutes)