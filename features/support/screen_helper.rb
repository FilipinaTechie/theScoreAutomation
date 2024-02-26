module ScreenHelper
  def splash_page
    @splash_page ||= SplashScreen.new
  end

  def reusable_func
    @reusable_func ||= AndroidReusableFunc.new
  end

  def dashboard_screen
    @dashboard_screen ||= DashboardScreen.new
  end

  def team_screen
    @team_screen ||= TeamScreen.new
  end
  # Add more helper methods for other page objects as needed
end
