# frozen_string_literal: true
require "cucumber/rails/application"
require "cucumber/rails/action_dispatch"
require "cucumber/rails/world"
require "cucumber/rails/hooks"
require "cucumber/rails/capybara"
require "cucumber/rails/database/strategy"
require "cucumber/rails/database/deletion_strategy"
require "cucumber/rails/database/shared_connection_strategy"
require "cucumber/rails/database/truncation_strategy"

# FIXME: NullStrategy is a new strategy introduced in a cucumber-rails version
# that has not been released yet. Remove this begin-rescue block and bump
# the cucumber-rails dependency in other gemfiles when a stable version will
# be released
begin
  require "cucumber/rails/database/null_strategy"
rescue LoadError
end

require "cucumber/rails/database"

MultiTest.disable_autorun
