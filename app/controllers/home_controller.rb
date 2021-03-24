class HomeController < ApplicationController
  
  def index
  end

  def pdf
    @data = get_sample_data
  	respond_to do |format|
      format.html
      format.pdf do
        @pdf = render_to_string pdf: "example",
                                page_size: 'A4',
                                zoom: 2.0,
                                background: false,
                                margin:  {   
                                  top:               0,                     # default 10 (mm)
                                  bottom:            0,
                                  left:              0,
                                  right:             0 },
                                template: "home/waltz.html.erb"
        send_data(@pdf, :filename => "example.pdf",  :type=>"application/pdf")  
      end
    end
  end

  def get_sample_data
    {
      "date" => "10 June 2020",
      "project_name" => "Residence XYZ",
      "architect_name" => "Studio ABCDEF",
      "order_no" => "10062020/03",
      "product_categories" => [{
        "product_category_name" => "WALTZ . GLIDE",
        "quantity" => 7,
        "sub_system" => "Regular",
        "system_type"=> "None",
        "Configuration" => "D",
        "img_url" => "reference-img.jpg",
        "diagram_image_url" => "waltz-slide-graphic.jpg",
        "products" => [{
          "system_type" => "Waltz",
          "system_name"=> "GLIDE",
          "floor" => "00",
          "space_room" => "LIVING ROOM",
          "height" => "2300",
          "width" => "900",
          "qty" => "2",
          "units" => "Sets",
          "sub_system" => "Regular",
          "system_type"=> "None",
          "Configuration" => "D",
          "price" => 304800
        },
        
        {
          "waltz_System"=> "GLIDE",
          "floor" => "00",
          "space_room" => "BED ROOM",
          "height" => "2300",
          "width" => "900",
          "qty" => "1",
          "units" => "Sets",
          "sub_system" => "Regular",
          "system_type"=> "None",
          "Configuration" => "D",
          "price" => 304800
        },
        {
          "waltz_System"=> "GLIDE",
          "floor" => "00",
          "space_room" => "COMMON",
          "height" => "2300",
          "width" => "900",
          "qty" => "3",
          "units" => "Sets",
          "sub_system" => "Regular",
          "system_type"=> "None",
          "Configuration" => "D",
          "price" => 304800
        }],
        "sub_categories" => [{
          "sub_categories_finish_type" => "Frame",
          "sub_categories_finish_name" => "Black Anodized",
          "img_url" => "reference-img-2.jpg"

        },
        {
          "sub_categories_finish_type" => "Glass",
          "sub_categories_finish_name" => "Marmo Gold - White",
          "img_url" => "reference-img-3.jpg"
        }]
      },
      {
        "product_category_name" => "WALTZ . SLIDE",
        "Quantity" => 1,
        "sub_system" => "Flush",
        "system_type"=> "Pocket door",
        "Configuration" => "DD",
        "img_url" => "reference-img-4.jpg",
        "diagram_image_url" => "waltz-slide-graphic-2.jpg",
        "products" => [{
          "waltz_System"=> "SLIDE",
          "floor" => "00",
          "space_room" => "BED ROOM",
          "height" => "2300",
          "width" => "900",
          "qty" => "2",
          "units" => "Sets",
          "sub_system" => "Flush",
          "system_type"=> "Pocket door",
          "Configuration" => "DD",
          "price" => 275000
        }],
        "sub_categories" => [{
          "sub_categories_finish_type" => "Frame",
          "sub_categories_finish_name" => "Black Anodized",
          "img_url" => "reference-img-2.jpg"
        }]
      }],
      "ANNEXURE" => [{
        "TERMS AND CONDITIONS" => [
          "All quantities are tentative only",
          "Shop Drawing(s) need to be approved before production.",
          "Approved shop drawings will be generated after order placement.",
          "Lead time is 6-8 Weeks",
          "Our scope does not include Civil Work / Scaffolding / MS work",
          "Waltz is a customized system. Therefore, an order once placed, cannot be modified or cancelled."],
        "PAYMENT TERMS" => [
          "70% of Order amount as advance",
          "Balance before dispatch"],
        "ESTIMATE REVISIONS" => [
          "Estimate revision JB/WALTZ/01052020-R02",
          "Estimate revision JB/WALTZ/01052020-R01"],
        "FAQs" => "You will find answers to most of your queries in the Frequenty Asked Questions (FAQs) section on our website @ waltz.jbglass.in/faqs. For any other queries, you may call our customer support helpline at +91 1234 5678 or email us at support@jbglass.in"
      }],
      "associate_name" => "ASSOCIATE NAME",
      "associate_address" => "ASSOCIATE ADDRESS",
      "associate_phone" => "",
      "associate_email_id" => "EMAIL ID"
    }
  end
end
