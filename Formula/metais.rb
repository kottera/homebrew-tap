# Generated from the SHA256SUMS of metais v1.0.0-rc.5 by
# go run ./internal/tools/release formula. Do not edit it by hand.
class Metais < Formula
  desc "Reference tool for METAIS packages, which turn input data into files"
  homepage "https://metais.org"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.5/metais_1.0.0-rc.5_darwin_amd64.tar.gz"
      sha256 "e0e3cdf3b54edab5040fe857f96eee8a0e8077835be8e3bb77812bb410ff1b9a"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.5/metais_1.0.0-rc.5_darwin_arm64.tar.gz"
      sha256 "4484bfd114440c046f5013a80de1e3b028ddcde6773974ea78d8a8aa79f16ef3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.5/metais_1.0.0-rc.5_linux_amd64.tar.gz"
      sha256 "aae9fb2a5141b232c61cc08669500433f15b3a45ab0dbce683d07562a1990f5c"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.5/metais_1.0.0-rc.5_linux_arm64.tar.gz"
      sha256 "7dee18d70a4d75fec5a03b373858761e6f936dfd1f4b7b7a80f06a38efa340a2"
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
