class ApplicationController < ActionController::Base

  before_filter :check_browser

  private

    def check_browser
      user_agent = UserAgent.parse(request.user_agent)
      browser = user_agent.to_str
      if ((browser.include? "MSIE 6") || (browser.include? "MSIE 7"))
        render text: 'Your browser is not supported! Please Upgrade to view our website!'
      end
    end
end