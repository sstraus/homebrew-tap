class Settingssentry < Formula
  desc "Securely archive and reinstate macOS application configurations"
  homepage "https://github.com/sstraus/SettingsSentry"
  version "1.2.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/sstraus/SettingsSentry/releases/download/v#{version}/SettingsSentry_arm64.zip"
    sha256 "ee5e735227920146f1fcbb3c4e840140ea5a1fd61d52679c651871b1e5582a3d"
  else
    url "https://github.com/sstraus/SettingsSentry/releases/download/v#{version}/SettingsSentry_x86_64.zip"
    sha256 "0af811514f80636788d98ab9637f4aea6ba33f01776f6284b82160554b36ae24"
  end

  def install
    bin.install "settingssentry"
    pkgshare.install "configs"
  end

  test do
    system bin/"settingssentry", "--version"
  end
end
