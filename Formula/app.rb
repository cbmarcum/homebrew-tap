# Generated with JReleaser 1.2.0 at 2022-11-20T08:52:52.031514-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.3/app-1.0.3.zip"
  version "1.0.3"
  sha256 "1f2c17532e389c3fe9b811027922733a80739426aba4a1f8b85d19275db3fc97"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.3", output
  end
end
