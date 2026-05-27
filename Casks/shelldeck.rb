cask "shelldeck" do
  version "0.0.2"
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    sha256 "6d6724d4c56fff739ce11cfc682740a54ff1d9719e15e7f411efb1c290422803"
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
