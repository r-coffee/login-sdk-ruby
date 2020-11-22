# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: models.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("models.proto", :syntax => :proto3) do
    add_message "main.RegisterRequest" do
      optional :entityID, :string, 1
      optional :id, :string, 2
      optional :password, :string, 3
    end
    add_message "main.GenericResponse" do
      optional :error, :string, 1
    end
    add_message "main.LoginRequest" do
      optional :entityID, :string, 1
      optional :id, :string, 2
      optional :password, :string, 3
    end
    add_message "main.LoginResponse" do
      optional :error, :string, 1
      optional :token, :string, 2
      optional :admin, :bool, 3
    end
    add_message "main.ValidateRequest" do
      optional :entityID, :string, 1
      optional :token, :string, 2
    end
    add_message "main.ValidateResponse" do
      optional :error, :string, 1
      optional :id, :string, 2
      optional :admin, :bool, 3
    end
    add_message "main.GenericRequest" do
      optional :userID, :string, 1
    end
  end
end

module Login
  RegisterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("main.RegisterRequest").msgclass
  GenericResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("main.GenericResponse").msgclass
  LoginRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("main.LoginRequest").msgclass
  LoginResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("main.LoginResponse").msgclass
  ValidateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("main.ValidateRequest").msgclass
  ValidateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("main.ValidateResponse").msgclass
  GenericRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("main.GenericRequest").msgclass
end