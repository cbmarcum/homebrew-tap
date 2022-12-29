# Generated with JReleaser 1.3.1 at 2022-12-29T10:12:44.341561-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.15/app-1.0.15.zip"
  version "1.0.15"
  sha256 "0f6a25faa6aa81fb517e43eccbe54f930c9dfe77b7057a8d21f3de6abb6d0bc6"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.15", output
  end
end
