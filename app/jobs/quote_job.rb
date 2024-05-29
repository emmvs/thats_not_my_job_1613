class QuoteJob < ApplicationJob
  queue_as :default

  def perform
    puts "Fetching a beautiful quote 👻"
    # Trigger ther Service
    quote_instance = QuotesService.new("love")
    # Call the service
    quote = quote_instance.call
    puts "💋 Quote of the day is: #{quote}"
    return "💋 Quote of the day is: #{quote}"
  end
end
