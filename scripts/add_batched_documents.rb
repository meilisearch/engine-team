require 'json'
require 'meilisearch'

unless ARGV.length == 2
  puts 'Wrong number of arguments.'
  exit 1
end

HOST_URL = ENV['MS_HOST_URL']
API_KEY = ENV['MS_API_KEY']
INDEX_UID = ENV['INDEX_UID'] || 'bench'

json_file_name = ARGV[0]
docs_per_batch = ARGV[1].to_i

if HOST_URL.nil?
  puts 'You must set the MS_HOST_URL.'
  exit 1
end

client = MeiliSearch::Client.new(HOST_URL, API_KEY, read_timeout: 3)
json_file = File.read(json_file_name)
docs = JSON.parse(json_file)

puts 'Starting to add documents...'

docs.each_slice(docs_per_batch).with_index do |slice, i|
  puts "Adding batch #{i}"
  client.index(INDEX_UID).add_documents(slice)
end

puts 'Done!'
