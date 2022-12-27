# Generated with JReleaser 1.3.1 at 2022-12-27T17:32:13.321722-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.9/app-1.0.9.zip"
  version "1.0.9"
  sha256 "aa455a4171c6cc26818404c601ea0616bdd49fa09de4ae882e9f4b2a96741788"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.9", output
  end
end
