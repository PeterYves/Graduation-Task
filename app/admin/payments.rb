ActiveAdmin.register Payment do
  before_filter do
    Payment.class_eval do
      def to_param
        id.to_s
      end
    end
  end
end
