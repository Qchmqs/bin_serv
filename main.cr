require "kemal"

post "/" do |env|
  # grab what the browser sent
  a = env.params.body["a"]
  b = env.params.body["b"]

  # display it back to the browser
  "a: #{a} \n
  b: #{b}  \n

  Total: #{a + b}"
end

Kemal.config.port = 3050
Kemal.run
