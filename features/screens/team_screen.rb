require_relative '../android_obj_repo'
require_relative '../ios_obj_repo'
require_relative '../text_data'

class TeamScreen
  include ScreenHelper
  def assert_team_name(name)
    common_func.wait_for_element_id(OR::TEAM_NAME_TXT)
    el = $driver.find_element(:id, OR::TEAM_NAME_TXT).text
    raise("ERROR: Text Does Not Match. Actual #{el}") unless el.eql?(name)
  end

  def assert_offense_stats_header
    common_func.wait_for_element_id(OR::OFFENSE_STATS_HEADER)
    el = $driver.find_element(:id, OR::OFFENSE_STATS_HEADER).text
    raise("ERROR: Text Does Not Match. Actual #{el}") unless el.eql?(TD::OFFENSE_STAT_LABEL)
  end
end
