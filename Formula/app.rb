# Generated with JReleaser 1.3.1 at 2022-12-29T07:10:21.942218-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.12/app-1.0.12.zip"
  version "1.0.12"
  sha256 "d5cec995d310787565ae105d115406bc7854278ac6c3b8b6e5e681d46b272352"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.12", output
  end
end
