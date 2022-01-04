module UsersHelper
  def validated_class(input)
    if @user.errors[input].any?
      {class: "form-control is-invalid"}
    else
      {class: "form-control"}
    end
  end

end
