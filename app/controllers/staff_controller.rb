class StaffController < ApplicationController
  

  def show
    id = params[:id]
    person = Person.find_by(id: id)
    render json: person
  end
  
  def create
    person = Person.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"]
    )
    if person.save #happy path
      render json: person
    else #sad path
      render json: {error_messages: person.errors.full_messages}, status: 422
    end
  end
end
