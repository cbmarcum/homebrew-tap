# Generated with JReleaser 1.3.1 at 2022-12-29T08:04:06.714612-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.13/app-1.0.13.zip"
  version "1.0.13"
  sha256 "d818039e6afe4e07b60d4e9220bac4db85426cc71c2ded9fb1fcf9741117ba12"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.13", output
  end
end
