require 'pry'
require 'time'

class Event
  attr_accessor :start_date

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def postpone_24h
    @start_date + 24*60*60
  end

  def end_date
    @start_date + @duration*60
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    @start_date > Time.now
  end

  def is_soon?
    Time.now >= (@start_date - 30*60)
  end

  def to_s
      puts "> Titre : #{@title}"
      puts "> Date de début : #{@start_date}"
      puts "> Durée : #{@duration} minutes"
      puts "> Invités : #{@attendees}"
    end

end

binding.pry
