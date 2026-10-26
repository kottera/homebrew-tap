# Generated from the SHA256SUMS of metais v1.0.0 by
# go run ./internal/tools/release formula. Do not edit it by hand.
class Metais < Formula
  desc "Reference tool for METAIS packages, which turn input data into files"
  homepage "https://metais.org"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0/metais_1.0.0_darwin_amd64.tar.gz"
      sha256 "0d831c91c79b3a851f55e4da3196a1340ac0e7af92d3cf4d7289dbc59ac868ee"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0/metais_1.0.0_darwin_arm64.tar.gz"
      sha256 "da0d818b072cb8bd580a2e4b3696fe9bacf91a157abf1a5e42133c4599b34df5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0/metais_1.0.0_linux_amd64.tar.gz"
      sha256 "fd7481dcdc7d93dfbe2f303e7959e7d7458a83ecea70073dfe19d6f413d677e9"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0/metais_1.0.0_linux_arm64.tar.gz"
      sha256 "6dc7b1cd5e10610e3e32e950a79164d2f397873168865ce94f454fd2bbc4b70e"
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
