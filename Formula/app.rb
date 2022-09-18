# Generated with JReleaser 1.2.0 at 2022-09-18T16:53:35.695202-04:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "6ae7ae152e44800a91cc06ac6a5424062348b7d99c27ac3e451a41a3c1d3f9bd"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.0", output
  end
end
