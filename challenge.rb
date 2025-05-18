# Write your solution here!
require "http"
require "json"
require "dotenv/load"
require "ascii_charts"
require "date"
require "openai"

pp "Hello! How can I help you today?"
puts "__________________________________________________"

request = gets.chomp

require "openai"
require "dotenv/load"

client = OpenAI::Client.new(access_token: ENV.fetch("OPENAI_KEY"))

# Prepare an Array of previous messages
if user_input != "bye"
  message_list.push({ "role" => "user", "content" => user_input })

# Call the API to get the next message from GPT
api_response = client.chat(
  parameters: {
    model: "gpt-3.5-turbo",
    messages: message_list
  }
)

pp api_response
