class Contract < ActiveResource::Base
  self.site = "http://localhost:3000/api/v1"
  headers['X-AUTH-TOKEN'] = '0685052759566ec7c7add80261194158'
  #headers["act_code"]  = @myactcode.to_s
  #headers["act_code"]= User.current.act_code
  #self.element_name = "contracts"
  def clientname
    "#{first_name} #{last_name}"
  end
  def eventtime
      "#{event_start_time}-#{event_end_time}"
  end

  def location
    "#{location_name}".gsub(/"/,'')
  end

  def eventaddress
    "#{location_address_line_1}"
    "#{location_address_line_2}"
    "#{location_city}"", " "#{location_state}" " ""#{location_zip}"

  end

end