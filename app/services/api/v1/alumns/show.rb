class Api::V1::Alumns::Show
  def call(params)
    query = Alumn.find_by(id: params) unless params.nil?
    construct(query)
  rescue StandardError
    raise ArgumentError, "Unknown status #{status}."
  end

  private

  def construct(query)
    data = generate_response_representable(query) unless query.nil?
    Api::V1::StandardResponse.new.call(
      status: 'ok',
      data: data
    )
  end

  def generate_response_representable(alumn)
    ::AlumnRepresenter.new(alumn)
  end
end
