class FakeJob < ApplicationJob
  queue_as :default # :urgent or :low
  # bundle exec sidekiq -q urgent -q default -q low -q maintenance

  def perform
    puts "I'm starting the fake job"
    sleep 3
    puts "OK I'm done now"
    return "love"
  end
end
