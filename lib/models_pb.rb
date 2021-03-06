# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: models.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("models.proto", :syntax => :proto3) do
    add_message "login.RegisterRequest" do
      optional :entityID, :string, 1
      optional :id, :string, 2
      optional :password, :string, 3
    end
    add_message "login.GenericResponse" do
      optional :error, :string, 1
    end
    add_message "login.LoginRequest" do
      optional :entityID, :string, 1
      optional :id, :string, 2
      optional :password, :string, 3
    end
    add_message "login.LoginResponse" do
      optional :error, :string, 1
      optional :token, :string, 2
      optional :admin, :bool, 3
    end
    add_message "login.ValidateRequest" do
      optional :entityID, :string, 1
      optional :token, :string, 2
    end
    add_message "login.ValidateResponse" do
      optional :error, :string, 1
      optional :id, :string, 2
      optional :admin, :bool, 3
    end
    add_message "login.GenericRequest" do
      optional :userID, :string, 1
    end
  end
end

module Login
  RegisterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("login.RegisterRequest").msgclass
  GenericResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("login.GenericResponse").msgclass
  LoginRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("login.LoginRequest").msgclass
  LoginResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("login.LoginResponse").msgclass
  ValidateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("login.ValidateRequest").msgclass
  ValidateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("login.ValidateResponse").msgclass
  GenericRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("login.GenericRequest").msgclass
end
