class Api::NursesController < ApiController

  def index
    res = []
    Nurses.order('id DESC').each do |nurse|
      res.push(
        {
          id: nurse.id,
          name: nurse.user.name,
          patients: nurse.patients
        }
      )
    end
    
    render json: res
  end

end