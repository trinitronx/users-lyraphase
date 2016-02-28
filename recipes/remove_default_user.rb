users_by_id =  node['etc']['passwd'].map { |user| [ user[0], user[1]['uid'] ] }
default_user =  users_by_id.find { |u| u[1] == 1000 }

unless Chef::Config[:solo]
  defined_users =  data_bag('users').map { |u| {:uid => data_bag_item('users', u)['uid'], :name => data_bag_item('users', u)['id']} }
end

if defined_users.nil? || defined_users.empty?
  defined_user_1000 = {:uid=>1000, :name=>"trinitronx"}
else
  defined_user_1000 = defined_users.find { |u| u[:uid] == 1000 }
end

unless default_user.nil? || default_user.empty? || default_user[0] == defined_user_1000[:name]
  user default_user[0] do
    uid 1000
    action [ :remove ]
  end
end
