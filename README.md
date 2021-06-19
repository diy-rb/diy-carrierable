# Yet another result wrapper

## How to use

Carrierize your class:

```ruby

class CreateUserUseCase
  include DIY::Carrierable

  def call(request)
    user = repository.find_by(email: request.email)
    return failure(:conflict, ['User already exists'], user) if user

    user = factory.build(email: request.email)
    return failure(:invalid, user.errors, request) if user.invalid?

    repository.create!(user)
    success(user)

  rescue PG::Error => error
    failure(:unexpected_error, { message: error.message }, error)
  end
end
```

Handle carrier:

```ruby
class UsersController < ApplicationController
  def create
    result = use_case.call(params.permit(:email))
    render(status: result.code, json: { success: false, errors: result.errors }) && return unless result.successful?
    
    render(status: :created, json: result.payload)
  end
end
```
