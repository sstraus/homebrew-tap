cask "settingssentry" do
  version "1.2.0"

  if Hardware::CPU.arm?
    url "https://github.com/sstraus/SettingsSentry/releases/download/v#{version}/SettingsSentry_arm64.zip"
    sha256 "c7500be80381821219ef2b525824c0b5e483353ed8fa0d6e8e100af75abd3618"
  else
    url "https://github.com/sstraus/SettingsSentry/releases/download/v#{version}/SettingsSentry_x86_64.zip"
    sha256 "1d4d0368518730eda668f1aad8643832ed24c017b27ca4807c7d169fcad3cb8e"
  end

  name "SettingsSentry"
  desc "Securely archive and reinstate macOS application configurations"
  homepage "https://github.com/sstraus/SettingsSentry"

  app "SettingsSentry.app"
end
