class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(curstomer_id)
    user = User.finf(curstomer_id)
    puts 'Hello from sidekiq(worker)'
    purs "Pedido criado por #{user.email}"
    # Do something later
  end
end
