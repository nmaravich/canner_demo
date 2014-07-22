class UserPolicy < BasePolicy

  def canner_scope
    case @method
    when :index
      # Add any special scoping you might need here
      User.all
    else
      User.none
    end
  end

  def can?
    case @method
    when :index
      # has_role?(:admin)
    else
      false
    end
  end

end
