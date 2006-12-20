module AirBlade #:nodoc:
  module ActsAsEnterprisey #:nodoc:

    def self.included(base) #:nodoc
      base.extend ActMethods
    end

    module ActMethods

      # Delays the execution of finder methods in an enterprisey fashion.
      #
      # Options:
      # [:delay]  the number of seconds to sleep before executing a find.  Defaults to <tt>2</tt> seconds.
      # [:random] whether or not to randomise the delay between <tt>0</tt> and <tt>:delay</tt>.  Defaults to +false+.
      #
      # Examples:
      #   acts_as_enterprisey :delay => 3
      #   acts_as_enterprisey :random => true
      #   acts_as_enterprisey :delay => 5, :random => true
      def acts_as_enterprisey(options = {})
        options[:delay]  ||= 2
        options[:random] ||= false

        # Only need to define these once on a class
        unless included_modules.include? InstanceMethods
          class_inheritable_accessor :enterprisey_options
          extend ClassMethods
          include InstanceMethods
        end

        self.enterprisey_options = options
      end
    end

    module ClassMethods
      # Performs a normal +find+ after sleeping as specified
      # in the options to +acts_as_enterprisey+.
      def find(*args)
        sleep (enterprisey_options[:random] ? rand(enterprisey_options[:delay]) : enterprisey_options[:delay])
        super
      end
    end

    module InstanceMethods
    end

  end
end
