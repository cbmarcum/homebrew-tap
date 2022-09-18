# Generated with JReleaser 1.2.0 at 2022-09-18T17:27:37.90377-04:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.1/app-1.0.1.zip"
  version "1.0.1"
  sha256 "23d846c6b7c04a7d99530fec72e696b2a856d39c2e1d235183822f01c61fc62f"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.1", output
  end
end
