team = Team.create!(name: "Team")
app = App.create!(team: team, name: "Sample App", repo_url: "https://github.com/JLHOLM/BlueEye")

request_environment = RequestEnvironment.create!(name: "development")
request_method = RequestMethod.create!(name: "POST")

payload = Payload.create!(
  app: app,
  name: "Sample Payload",
  description: "Sample Description",
  request_url: "localhost:3000/callback",
  request_method: request_method,
  request_environment: request_environment
)
