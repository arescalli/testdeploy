class DashboardController < ApplicationController
  def index

  end

  def send_message
  	message = {
  		id: 1, 
  		trains: [
  			{number: '10101', date: Date.today},
  			{number: '14552', date: Date.tomorrow}
  		]
  	}
  	Hutch.connect
  	Hutch.publish('logishift.pic_importer', message)
  	Hutch.publish('gc.ps.payment.failed', message)
  	render json: message
  end
end
