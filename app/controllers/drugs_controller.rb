class DrugsController < ApplicationController
  skip_before_action :require_login

  def index
    @drugs = Drug.all
  end

  def search
  end

end