# Generated from the SHA256SUMS of metais v1.0.0-rc.2 by
# go run ./internal/tools/release formula. Do not edit it by hand.
class Metais < Formula
  desc "Reference tool for METAIS packages, which turn input data into files"
  homepage "https://metais.org"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.2/metais_1.0.0-rc.2_darwin_amd64.tar.gz"
      sha256 "be54d48cda6ca3df5062da831e3bd8db94bc5efa74056f36d2876e35215cb708"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.2/metais_1.0.0-rc.2_darwin_arm64.tar.gz"
      sha256 "f3da45fb6cb5311b495e29c75c05e106e4c62fbe3659cceeacaca23820897bdf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.2/metais_1.0.0-rc.2_linux_amd64.tar.gz"
      sha256 "8b136e6f29aca0cc762ae8fd5f87831b7bb94f308d04f400eced2e38d1e16c71"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.2/metais_1.0.0-rc.2_linux_arm64.tar.gz"
      sha256 "c4497e757b3205ca02309d2d45215db4382b0f34a57e7358e36360a3333d94f0"
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
