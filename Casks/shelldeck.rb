cask "shelldeck" do
  version "1.0.0"
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    sha256 "128b6e4877be631e45273021f2126495d0a0637de9d37845df69dc44f992ec70"
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
