# Generated with JReleaser 1.2.0 at 2022-11-20T16:45:34.598051-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.8/app-1.0.8.zip"
  version "1.0.8"
  sha256 "42a6d7e7c03e1fe11c797ca4935e381aec57a0c46c6401b0c7e3661aae7c95f3"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.8", output
  end
end
