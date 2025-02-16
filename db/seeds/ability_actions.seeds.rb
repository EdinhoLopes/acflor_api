puts 'Ability Actions >>>'

# Default Actions
ability_resources = AbilityResource.all
ability_resources.each do |ability_resource|
  AbilityAction.find_or_create_by(ability_resource_id: ability_resource.id, name: 'index')
  AbilityAction.find_or_create_by(ability_resource_id: ability_resource.id, name: 'create')
  AbilityAction.find_or_create_by(ability_resource_id: ability_resource.id, name: 'show')
  AbilityAction.find_or_create_by(ability_resource_id: ability_resource.id, name: 'update')
  AbilityAction.find_or_create_by(ability_resource_id: ability_resource.id, name: 'destroy')
end

# Customized Actions
ability_resource = AbilityResource.find_by(name: 'users')
AbilityAction.find_or_create_by(ability_resource_id: ability_resource.id, name: 'list_names')
AbilityAction.find_or_create_by(ability_resource_id: ability_resource.id, name: 'set_email')

ability_resource = AbilityResource.find_by(name: 'events')
AbilityAction.find_or_create_by(ability_resource_id: ability_resource.id, name: 'activate_event')
AbilityAction.find_or_create_by(ability_resource_id: ability_resource.id, name: 'disable_event')