# frozen_string_literal: true

require 'active_support'
require 'active_record'
require 'active_support/concern'
require "ruby_hstore_mgmt/version"
require "ruby_hstore_mgmt/concerns/hstore_mgmt"
require "ruby_hstore_mgmt/acts_as_ruby_hstore_mgmt/instance_methods"
require "ruby_hstore_mgmt/acts_as_ruby_hstore_mgmt/class_methods"

module RubyHstoreMgmt
  class Error < StandardError; end

  class Railtie < Rails::Railtie
    initializer 'RubyHstoreMgmt.acts_as_ruby_hstore_mgmt' do
      ActiveSupport.on_load(:active_record) do
        ActiveRecord::Base.extend RubyHstoreMgmt::ActsAsRubyHstoreMgmt::ClassMethods
      end
    end
  end
end
