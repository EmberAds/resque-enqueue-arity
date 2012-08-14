require "resque-enqueue-arity/version"

module Resque
  module Enqueue
    module Arity

      def self.extended klass
        @@_enqueue_method = klass.instance_method(:enqueue)
      end

      def enqueue klass, *args
        expected = klass.method(:perform).arity
        actual = args.size

        if expected >= 0 && expected != actual
          raise ArgumentError, "wrong number of arguments (#{actual} for #{expected})"
        end

        @@_enqueue_method.bind(self).call(klass, *args)
      end

    end
  end
end

Resque.extend Resque::Enqueue::Arity
