require_relative '../android_obj_repo'
require_relative '../ios_obj_repo'
require_relative '../text_data'

class TeamScreen
  def assert_team_name(name)
    el = $driver.find_element(:id, OR::TEAM_NAME_TXT).text
    raise("ERROR: Text Does Not Match. Actual #{el}") unless el.eql?(name)
  end

  def assert_offense_stats_header
    $driver.find_element(:id, OR::OFFENSE_STATS_HEADER).displayed?
    el = $driver.find_element(:id, OR::OFFENSE_STATS_HEADER).text
    raise("ERROR: Text Does Not Match. Actual #{el}") unless el.eql?(TD::OFFENSE_STAT_LABEL)
  end
end
