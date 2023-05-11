require 'soda/client'

client = SODA::Client.new({ domain: 'www.datos.gov.co', app_token: 'pkl1Yh69FdJgFjNI2kZNQCjya' })

results = client.get('xdk5-pm3f')
colombia = {}
regions = []
cities = []

results.read_body.each do |location|
  if colombia.key?(location.departamento)
    colombia[location.departamento] << location.municipio
  else
    colombia[location.departamento] = [location.municipio]
    regions << location.departamento
  end
  cities << location.municipio
end

COLOMBIA = colombia.freeze
REGIONS = regions.freeze
CITIES = cities.freeze
