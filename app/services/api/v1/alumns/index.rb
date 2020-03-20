class Api::V1::Alumns::Index
  def call(params)
    if params[:alumn_id].nil?
      query = Alumn.all
    else
      query = Alumn.where(alumn_id: params[:alumn_id])
      # query = query.without_agency(params[:agency_id]) unless params[:agency_id].nil?
      # query = Api::V1::Alumns::Filter.new.call(query: query, params: params)
    end
    construct(query)
  end

  private

  def construct(query)
    data = generate_response_representable(query)
    Api::V1::StandardResponse.new.call(
      status: 'ok',
      data: data
    )
  end

  def generate_response_representable(alumns)
    alumns.map do |alumn|
      ::AlumnRepresenter.new(alumn)
    end
  end
end
