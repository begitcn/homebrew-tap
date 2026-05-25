cask "easytiermanager" do
  version "1.0.6"
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    sha256 "198aae1797868d212c2f86bfaf6ad01bf06b72ac9a5418bcbdffbbfe6187b1da"
    url "https://github.com/begitcn/EasyTierManager/releases/download/v#{version}/EasyTierManager-#{arch}-v#{version}.dmg"
  end
  on_intel do
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    url "https://github.com/begitcn/EasyTierManager/releases/download/v#{version}/EasyTierManager-#{arch}-v#{version}.dmg"
  end

  name "EasyTierManager"
  desc "Native macOS GUI for EasyTier mesh VPN"
  homepage "https://github.com/begitcn/EasyTierManager"

  app "EasyTierManager.app"

  uninstall launchctl: "EasyTierHelper",
            delete:    [
              "/Library/PrivilegedHelperTools/EasyTierHelper",
              "/Library/LaunchDaemons/EasyTierHelper.plist",
            ]

  zap trash: [
    "~/Library/Application Support/EasyTierManager",
    "~/Library/Caches/com.easytier.manager",
    "~/Library/Preferences/com.easytier.manager.plist",
  ]
end
