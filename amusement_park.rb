class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  def has_pass?
    @pass_id ? true : false
  end

  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height ? true : false
  end

  def allowed_to_ride?(ride_minimum_height)
    self.fits_ride?(ride_minimum_height) && self.has_pass? ? true : false
  end
end
