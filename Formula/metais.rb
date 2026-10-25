# Generated from the SHA256SUMS of metais v1.0.0-rc.4 by
# go run ./internal/tools/release formula. Do not edit it by hand.
class Metais < Formula
  desc "Reference tool for METAIS packages, which turn input data into files"
  homepage "https://metais.org"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.4/metais_1.0.0-rc.4_darwin_amd64.tar.gz"
      sha256 "42b031112bef1ae5d143b22c3a1becee1392f5d4c5671957873f0701b8957cdc"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.4/metais_1.0.0-rc.4_darwin_arm64.tar.gz"
      sha256 "f951513bb2fe821fe229f8119e6690da5b821ee0522c9069dcbeb7bec06acd9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.4/metais_1.0.0-rc.4_linux_amd64.tar.gz"
      sha256 "efe57963677ebdbdfef856bfc9720cad62c2d7d3b464aebffa63d0ece4ffb7dc"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.4/metais_1.0.0-rc.4_linux_arm64.tar.gz"
      sha256 "eaefc107601ab19f34103d8b7d4ddcf64d3f1407e0262f68a5272ce70fa091c8"
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
