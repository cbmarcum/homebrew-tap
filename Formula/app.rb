# Generated with JReleaser 1.3.1 at 2022-12-29T09:16:22.061878-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.14/app-1.0.14.zip"
  version "1.0.14"
  sha256 "03c72f37459c94ecf6c66b527c9d3ded0698bf63e5dc1f3d299eccf54c7c69dc"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.14", output
  end
end
