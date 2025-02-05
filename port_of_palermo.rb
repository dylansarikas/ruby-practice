module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    return city[0, 4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    ship_identifier[0,3].to_s == "OIL" || ship_identifier[0,3].to_s == "GAS" ? :A : :B
  end
end
