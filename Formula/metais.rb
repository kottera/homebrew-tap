# Generated from the SHA256SUMS of metais v1.0.0-rc.7 by
# go run ./internal/tools/release formula. Do not edit it by hand.
class Metais < Formula
  desc "Reference tool for METAIS packages, which turn input data into files"
  homepage "https://metais.org"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.7/metais_1.0.0-rc.7_darwin_amd64.tar.gz"
      sha256 "9efba33f839f81717fd5815fe2217bf6ebc801b6b894d7bb21f9e39356c41e24"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.7/metais_1.0.0-rc.7_darwin_arm64.tar.gz"
      sha256 "8b5aca5ed44bc08f8996ebc63d57d92ea292b4bc19cbc0ec60d215bb011253b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.7/metais_1.0.0-rc.7_linux_amd64.tar.gz"
      sha256 "3b6659255f0b3805393290b6fb8ae77bf4e3d43e4dd79e12542439d8bc3cec79"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.7/metais_1.0.0-rc.7_linux_arm64.tar.gz"
      sha256 "fa871ba8644572a6e9a5937d9579997951fac40f58c9fa6906d24345fc36168f"
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
