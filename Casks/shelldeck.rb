cask "shelldeck" do
  version "0.0.5"
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    sha256 "fb8947d2ece386a0ce80e48c88677519c6f7930f24f327d6766e8c7d322c5b6f"
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
