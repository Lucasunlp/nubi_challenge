class Api::V1::AlumnsController < ApiController
  # GET /api/v1/alumns
  def index
    if validate_params(params).empty?
      response_formater  Api::V1::Alumns::Index.new.call(params)
    else
      error_response('Wrong Params')
    end
  end

  # GET /api/v1/alumns/1
  def show
    if validate_params(params).empty?
      response_formater Api::V1::Alumns::Show.new.call(params[:id])
    else
      error_response('Wrong Params')
    end
  end

  private

  def validate_params(params)
    check = Api::V1::AlumnValidator.new.call(params[:id])
    check[:errors]
  end

  def error_response(errors)
    render status: 404, json: {
      status: 'error',
      notifications: errors
    }.to_json
  end
end
