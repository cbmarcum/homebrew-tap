# Generated with JReleaser 1.3.1 at 2022-12-28T18:36:55.978143-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.11/app-1.0.11.zip"
  version "1.0.11"
  sha256 "14ac42434ce7c9e61652887a04f5824cf7b155bf962ee9547b3fd925acf78ea6"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.11", output
  end
end
