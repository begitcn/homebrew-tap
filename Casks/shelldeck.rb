cask "shelldeck" do
  version "0.0.3"
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    sha256 "9fe493404ddfea340db1e9c3fd047932477da0df257bac2f7e8daec5c0f5adc2"
    url "https://github.com/begitcn/ShellDeck/releases/download/v#{version}/ShellDeck-#{arch}-v#{version}.dmg"
  end
  on_intel do
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    url "https://github.com/begitcn/ShellDeck/releases/download/v#{version}/ShellDeck-#{arch}-v#{version}.dmg"
  end

  name "ShellDeck"
  desc "Native macOS SSH management tool — terminal, file manager, system monitor"
  homepage "https://github.com/begitcn/ShellDeck"

  app "ShellDeck.app"

  zap trash: [
    "~/Library/Application Support/com.chaogeek.ShellDeck",
    "~/Library/Caches/com.chaogeek.ShellDeck",
    "~/Library/Preferences/com.chaogeek.ShellDeck.plist",
  ]
end
