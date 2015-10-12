require 'slack'
require 'dotenv'

Dotenv.load
TOKEN = ENV['SLACK_TOKEN']

require "slack/aria/version"
require "slack/aria/company"
require "slack/aria/undine"
require "slack/aria/akari"
require "slack/aria/aika"
require "slack/aria/alice"
