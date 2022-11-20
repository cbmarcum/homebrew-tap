# Generated with JReleaser 1.2.0 at 2022-11-20T10:30:58.224446-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.6/app-1.0.6.zip"
  version "1.0.6"
  sha256 "9415f4d541674aa0ca3bed44a515ba0fc6bb4835420a11f4338c6c4fb0a69cff"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.6", output
  end
end
