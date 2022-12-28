# Generated with JReleaser 1.3.1 at 2022-12-28T18:17:25.951705-05:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/cbmarcum/jreleaser-example-app/releases/download/v1.0.10/app-1.0.10.zip"
  version "1.0.10"
  sha256 "2ec0daf4ee657e3a2847e3a16607b49c91f22e00e9bd4b9a51396861cd49b0de"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.10", output
  end
end
