require 'test_helper'
class Api::V1::AlumnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    alumn = alumns(:one)
  end

  test 'should get alumns' do
    # Get url
    get '/api/v1/alumns'
    results = JSON.parse(response.body)

    assert_response :success
    assert_equal 3, results['data'].size
  end


  test 'shouldnt get alumn by id' do
    # Get response 200
    id = 122
    get '/api/v1/alumns/'"#{id}"
    assert_response :success

    # Response Body with Errors
    results = JSON.parse(response.body)
    results["data"].include? ('Not found elements')
  end

  test 'shouldt get alumn by id' do
    # Get response 200
    identification = 35720913
    get '/api/v1/alumns/'"#{identification}"
    assert_response :success

    # Response Body with Errors
    results = JSON.parse(response.body)
    assert_equal results["status"], "ok"
    results["data"].include? ('Not found elements')
    assert_equal identification, results["data"]["identification_number"]
  end
end
