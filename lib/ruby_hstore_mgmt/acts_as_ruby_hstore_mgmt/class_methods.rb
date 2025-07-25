# lib/ruby_hstore_mgmt/acts_as_ruby_hstore_mgmt/class_methods.rb
module RubyHstoreMgmt
  module ActsAsRubyHstoreMgmt
    extend ActiveSupport::Concern
    module ClassMethods
      def acts_as_ruby_hstore_mgmt(options = {})
        include RubyHstoreMgmt::ActsAsRubyHstoreMgmt::InstanceMethods
        include RubyHstoreMgmt::Concerns::HstoreMgmt
        # Initialize the class instance variables
        @roles_field_name = options[:field_name] if options[:field_name].present?
      end
    end
  end
end
