class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= 60 ? 10 : 15
  end

  def watch_scary_movie?
    @age >= 18 ? true : false
  end

  def claim_free_popcorn!
    @member == true ? "🍿" : (raise NotMovieClubMemberError)
  end
end
