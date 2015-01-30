require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  

  test "cria usuario correto" do
    assert_equal User.new({
      first_name: 'Larissa', last_name: 'Cordeiro', email: 'lar@g.com',
      password: '12345', password_confirmation: '12345'
    }).save, true, "Não criou o usuario"
  end

  test "falha por nao ter o first_name" do
    assert_equal User.new({
      last_name: 'Cordeiro', email: 'lar@g.com',
      password: '12345', password_confirmation: '12345'
    }).save, false, "erro"
  end
  
  test "falha por ter email fora do padrao" do
    assert_equal User.new({
      first_name: 'Larissa', last_name: 'Cordeiro', email: 'lag.com',
      password: '12345',
      password_confirmation: '12345'
    }).save, false, "erro"
  end

  test "falha por password curto" do
    assert_equal User.new({
      first_name: 'Larissa', last_name: 'Cordeiro', email: 'lar@g.com',
      password: '1234', password_confirmation: '1234'
    }).save, false, "erro"
  end
  
    test "falha por password nao confirmar" do
    assert_equal User.new({
      first_name: 'Larissa', last_name: 'Cordeiro', email: 'lar@g.com',
      password: '12345', password_confirmation: '123456'
    }).save, false, "erro"
  end
  
  test "autentica usuario corretamente" do
    @user = User.find_by(email: 'caf@g.com')
    assert @user.authenticate('a4qpdvb7'), true
  end
  
  test "falha autenticando usuario com senha errada" do
    @user = User.find_by(email: 'caf@g.com')
    assert @user.authenticate('a4qpdvb'), false
  end
end