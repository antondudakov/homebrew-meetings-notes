cask "meetings-notes" do
  version "1.0.1"
  sha256 "a4fe13143d22e99ee1c56f76784c81e0a0bcb30d27a32f75d2e4067d5dd8a9a6"

  url "https://github.com/antondudakov/meetings-notes/releases/download/v#{version}/MeetingsNotes-#{version}.dmg",
      verified: "github.com/antondudakov/meetings-notes/"
  name "Meetings Notes"
  desc "Local meeting transcription & summarization (on-device, Apple Silicon optimized)"
  homepage "https://meetingsnotes.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Meetings Notes.app"

  zap trash: [
    "~/Library/Application Support/app.meetingsnotes.mac",
    "~/Library/Caches/app.meetingsnotes.mac",
    "~/Library/Preferences/app.meetingsnotes.mac.plist",
  ]
end
