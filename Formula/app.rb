# Generated with JReleaser 1.2.0 at 2022-11-20T11:14:43.20917-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.7/app-1.0.7.zip"
  version "1.0.7"
  sha256 "7cb37e1be8f5cf0bef47fc8b245cdeaede6a5da44273941a1df815d7f331ce24"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.7", output
  end
end
