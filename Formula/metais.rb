# Generated from the SHA256SUMS of metais v1.0.0-rc.1 by
# go run ./internal/tools/release formula. Do not edit it by hand.
class Metais < Formula
  desc "Reference tool for METAIS packages, which turn input data into files"
  homepage "https://metais.org"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.1/metais_1.0.0-rc.1_darwin_amd64.tar.gz"
      sha256 "2c52aeb5402eed65928cd4a3c51b61c57ded215306b47c816cb1e8705b46ab13"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.1/metais_1.0.0-rc.1_darwin_arm64.tar.gz"
      sha256 "f935319d7121429e3fa1c493c42382d65aba9de88e87af4f996b3e6f71647bbe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.1/metais_1.0.0-rc.1_linux_amd64.tar.gz"
      sha256 "44f19bec607772346d7e1299953142aa5e7d0f6a84da6018eb6fe836299d5d8b"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.1/metais_1.0.0-rc.1_linux_arm64.tar.gz"
      sha256 "1b624176a230ae4a4af0f44b41a14d68961aa2a380923a1557f1e04aa355ea3b"
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
