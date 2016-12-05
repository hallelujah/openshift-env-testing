app = proc do |env|
  text = File.read('/tmp/greeting.txt').strip
  [200, {'Content-Type' => 'application/json'}, [%Q({"greeting": "#{text}"})] ]
end

run app
