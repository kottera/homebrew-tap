# Generated from the SHA256SUMS of metais v1.0.0-rc.6 by
# go run ./internal/tools/release formula. Do not edit it by hand.
class Metais < Formula
  desc "Reference tool for METAIS packages, which turn input data into files"
  homepage "https://metais.org"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.6/metais_1.0.0-rc.6_darwin_amd64.tar.gz"
      sha256 "89536cf952753782d32002a792868072ede8fa6286033e57899fc893f976a067"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.6/metais_1.0.0-rc.6_darwin_arm64.tar.gz"
      sha256 "cc25bebde22bbd3686bff7040d9e13695e782e4137a08f0c96db8fac25f9aeda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.6/metais_1.0.0-rc.6_linux_amd64.tar.gz"
      sha256 "d59ab301b0bc92ffd2d252cf43f3bb75c423ca50f3f709bcafbdfbfa17099156"
    end

    on_arm do
      url "https://github.com/kottera/metais/releases/download/v1.0.0-rc.6/metais_1.0.0-rc.6_linux_arm64.tar.gz"
      sha256 "8eb5c299fa32d42045576af5945fba625c75ac7458f5a90c93cb15a1fdf5f16e"
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
