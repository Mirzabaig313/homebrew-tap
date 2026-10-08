class TerminalTheatre < Formula
  desc "Interactive movie game for your terminal"
  homepage "https://github.com/Mirzabaig313/TERMINAL-THEATRE"
  version "0.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Mirzabaig313/TERMINAL-THEATRE/releases/download/v0.1.0/theatre-aarch64-apple-darwin.tar.gz"
      sha256 "69c4def3e83fa4680e113791fdf241a33c115b1a1e2312896580d685f183b697"
    end
    on_intel do
      url "https://github.com/Mirzabaig313/TERMINAL-THEATRE/releases/download/v0.1.0/theatre-x86_64-apple-darwin.tar.gz"
      sha256 "cf51d8c24b7dccaf7e8f4298c0f949eeb4aff545da9109c522a782ea12566732"
    end
  end

  # Linux gets the silent builds: they don't need the system's ALSA library
  on_linux do
    on_arm do
      url "https://github.com/Mirzabaig313/TERMINAL-THEATRE/releases/download/v0.1.0/theatre-aarch64-unknown-linux-gnu-silent.tar.gz"
      sha256 "76f38e32b364c6eeacde9828e01d0fead508067d44e66789ebd2ca8a9a489bb9"
    end
    on_intel do
      url "https://github.com/Mirzabaig313/TERMINAL-THEATRE/releases/download/v0.1.0/theatre-x86_64-unknown-linux-gnu-silent.tar.gz"
      sha256 "b2a31834b407f0846ddac90d647097d69b7e5a3ce1472de3bca07796c58543f0"
    end
  end

  def install
    bin.install "theatre"
  end

  test do
    assert_match "Terminal Theatre", shell_output("#{bin}/theatre --help")
  end
end
