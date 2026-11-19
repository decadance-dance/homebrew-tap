class Rrecall < Formula
  desc "Keeps a versioned map of a software project and answers questions about it"
  homepage "https://github.com/decadance-dance/rrecall"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/decadance-dance/rrecall/releases/download/0.1.0/rrecall-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7c60914a78ed8a89194f03755cb7d5babc2a72e2fec630aeba78ff90e7a0212b"
    end
    on_intel do
      url "https://github.com/decadance-dance/rrecall/releases/download/0.1.0/rrecall-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c584014f3b7b06fa8ed4f94b15d97a1e2489133f539c21585c91ab01f9990152"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decadance-dance/rrecall/releases/download/0.1.0/rrecall-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f0772ba1e1570dc54b3b769eb246a95f692dee8592bcc44acf2addb919f3daa3"
    end
    on_intel do
      url "https://github.com/decadance-dance/rrecall/releases/download/0.1.0/rrecall-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c7ff3c5919d2b7e87d04dff5252ae870909e55e80223b2434826b1d3b2d31a9"
    end
  end

  def install
    bin.install "rrecall"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rrecall --version")
  end
end
