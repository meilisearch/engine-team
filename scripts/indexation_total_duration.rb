require 'meilisearch'

HOST_URL = ENV['MS_HOST_URL']
API_KEY = ENV['MS_API_KEY']
INDEX_UID = ENV['INDEX_UID'] || 'bench'

if HOST_URL.nil?
  puts 'You must set the MS_HOST_URL.'
  exit 1
end

client = MeiliSearch::Client.new(HOST_URL, API_KEY, read_timeout: 3)

updates = client.index(INDEX_UID).get_all_update_status

status = updates.map { |u| u['status'] }
if status.include?('enqueued') || status.include?('processing')
  puts 'The indexation is not over. Check later.'
  puts 'Current state'
  updates.each { |u| puts "updateId: #{u['updateId']} - duration: #{u['duration'] || 'pending'}" }
  exit 0
end

total = updates.map do |u|
  puts "updateId: #{u['updateId']} - duration: #{u['duration']}"
  u['duration']
end.sum

puts "\nThe indexation total time is: #{total}s!"
