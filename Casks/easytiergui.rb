cask "easytiergui" do
  version "0.1.0"
  arch arm: "apple-silicon", intel: "intel"

  on_arm do
    sha256 "REPLACE_WITH_YOUR_ARM64_DMG_SHA256"
    url "https://github.com/begitcn/EasyTierGUI/releases/download/v#{version}/EasyTierGUI-#{version}-apple-silicon.dmg"
  end
  on_intel do
    sha256 "REPLACE_WITH_YOUR_INTEL_DMG_SHA256"
    url "https://github.com/begitcn/EasyTierGUI/releases/download/v#{version}/EasyTierGUI-#{version}-intel.dmg"
  end

  name "EasyTierGUI"
  desc "Native macOS GUI for EasyTier mesh VPN"
  homepage "https://github.com/begitcn/EasyTierGUI"

  app "EasyTierGUI.app"

  uninstall launchctl: "com.easytiergui.helper",
            delete:    "/Library/PrivilegedHelperTools/com.easytiergui.helper"

  zap trash: [
    "~/Library/Application Support/com.easytiergui",
    "~/Library/Caches/com.easytiergui",
    "~/Library/Preferences/com.easytiergui.plist",
  ]
end
