users_by_id =  node['etc']['passwd'].map { |user| [ user[0], user[1]['uid'] ] }
default_user =  users_by_id.find { |u| u[1] == 1000 }

unless default_user.nil? || default_user.empty? || default_user[0] == 'trinitronx'
  user default_user[0] do
    uid 1000
    action [ :remove ]
  end
end
