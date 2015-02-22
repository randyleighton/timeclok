class HomeController < ApplicationController

def index
  @timecards = Timecard.all
end

end