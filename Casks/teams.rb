cask "teams" do
  arch arm: "darwin-arm64"

  version "1.0"
  sha256 "26e5ec8fdf86d4a1bd9f5e8af04220b573cd29fd5ff8a19161a3d3c49032ae5b"

  url "https://github.com/damoncoo/simulator/raw/master/teams.tar.gz"
  name "Microsoft Teams"
  name "Teams"
  desc "Teams app from Microsoft"
  homepage "https://www.microsoft.com/en-us/microsoft-teams/log-in"

  app "Microsoft Teams.app"
  
end
