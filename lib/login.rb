require_relative './models_pb.rb'
require 'httparty'

class LoginClient
  def initialize(entity_id)
    @entity_id = entity_id
    @host = 'https://login-service-296122.uc.r.appspot.com'
  end

  def register(_id, _password)
    request = Login::RegisterRequest.new
    request.entityID = @entity_id
    request.id = _id
    request.password = _password
    raw_response = HTTParty.post("#{@host}/v1/register", body: request.to_proto, headers: { 'Content-Type' => 'application/x-protobuf' })
    parsed_response = Login::GenericResponse.decode(raw_response.body)
    if !parsed_response.error.nil? && !parsed_response.error.empty?
      raise parsed_response.error
    end
  end

  def login(_id, _password)
    request = Login::LoginRequest.new
    request.entityID = @entity_id
    request.id = _id
    request.password = _password
    raw_response = HTTParty.post("#{@host}/v1/login", body: request.to_proto, headers: { 'Content-Type' => 'application/x-protobuf' })
    parsed_response = Login::LoginResponse.decode(raw_response.body)
    if !parsed_response.error.nil? && !parsed_response.error.empty?
      raise parsed_response.error
    end

    {token: parsed_response.token, admin:parsed_response.admin}
  end

  def validate(_token)
    request = Login::ValidateRequest.new
    request.entityID = @entity_id
    request.token = _token
    raw_response = HTTParty.post("#{@host}/v1/validate", body: request.to_proto, headers: { 'Content-Type' => 'application/x-protobuf' })
    parsed_response = Login::ValidateResponse.decode(raw_response.body)
    if !parsed_response.error.nil? && !parsed_response.error.empty?
      raise parsed_response.error
    end

    {admin:parsed_response.admin}
  end
end
