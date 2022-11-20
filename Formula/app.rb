# Generated with JReleaser 1.2.0 at 2022-11-20T09:59:01.193608-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.4/app-1.0.4.zip"
  version "1.0.4"
  sha256 "acea4b992a22215adacf2130d81fad32f6f04dc1df972722dfc81dd460ed1881"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.4", output
  end
end
