class HomeController < ApplicationController
  
  def index
  end

  def pdf
  	respond_to do |format|
      format.html
      format.pdf do
        @pdf = render_to_string :pdf => "example", template: "home/pdf.html.erb"
        send_data(@pdf, :filename => "example.pdf",  :type=>"application/pdf")  
      end
    end
  end
end
