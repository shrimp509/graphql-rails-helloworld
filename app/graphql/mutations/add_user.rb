module Mutations
  class AddUser < BaseMutation
    argument :name, String, required: false
    argument :email, String, required: false
    argument :password, String, required: false

    type Types::UserType

    def resolve(name: nil, email: nil, password: nil)
      User.create!(
        name: name,
        email: email,
        password: password
      )
    end
  end
end
