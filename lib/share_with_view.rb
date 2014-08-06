module ShareWithView

  def share(*actions)
    actions.each do |action|
      attr_accessor action
      helper_method action
      hide_action action
    end
  end

  def decorate_and_share(*variables)
    factory = Draper::Factory.new(variables.extract_options!)

    variables.each do |variable|
      share "decorated_#{variable}"

      undecorated = "@#{variable}"
      decorated = "@decorated_#{variable}"

      define_method "decorated_#{variable}" do
        if instance_variable_defined?(decorated)
          instance_variable_get(decorated)
        else
          instance_variable_set decorated, factory.decorate(send(variable), context_args: self)
        end
      end
    end
  end



end
