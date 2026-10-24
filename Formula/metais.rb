# Generated from the SHA256SUMS of metais v1.0.0-rc.3 by
# go run ./internal/tools/release formula. Do not edit it by hand.
class Metais < Formula
  desc "Reference tool for METAIS packages, which turn input data into files"
  homepage "https://metais.org"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.3/metais_1.0.0-rc.3_darwin_amd64.tar.gz"
      sha256 "173944dd5b14fef84a699e2ebb6eb1e0def80c9939fab38bb774c54b8187911d"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.3/metais_1.0.0-rc.3_darwin_arm64.tar.gz"
      sha256 "8ff0776ab95bf17121b02b92e619bec239cac27686857272f10ebcc64de30437"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.3/metais_1.0.0-rc.3_linux_amd64.tar.gz"
      sha256 "1a1aa32aa2a7dd2087867b02fb7228a0aa5b99dde2343eb06f47a6eba24fd282"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.3/metais_1.0.0-rc.3_linux_arm64.tar.gz"
      sha256 "7750ddf206c274fdb00e1f7867f4add7f95676fb99f3b6fe367a56d54fc31b81"
    end
  end

  def install
    bin.install "metais"
  end

  def caveats
    <<~EOS
      To teach a coding agent to use metais, install its agent skill
      into a project by running, at the project's top level:
        metais skill
    EOS
  end

  test do
    assert_match "metais #{version}", shell_output("#{bin}/metais version")
  end
end
