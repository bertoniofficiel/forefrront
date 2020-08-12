class WelcomeController < ApplicationController
  def index

  	
	@eurgrade=ZUpdate.eurGrade
	@gbpgrade=ZUpdate.gbpGrade
	@jpygrade=ZUpdate.jpyGrade
	@nzdgrade=ZUpdate.nzdGrade
	@usdgrade=ZUpdate.usdGrade

  end
end
