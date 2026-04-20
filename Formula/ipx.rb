class Ipx < Formula
  desc "Keyboard-first macOS network operations TUI"
  homepage "https://github.com/tonyassistant/ipx"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonyassistant/ipx/releases/download/v0.1.1/ipx-aarch64-apple-darwin.tar.gz"
      sha256 "b81ecec018bce55cb48b2020ee0849eccd35a8937662edf345fee6cad4c2d2b4"
    else
      odie "Intel macOS archive for ipx v0.1.1 is still publishing."
    end
  end

  def install
    bin.install "ipx"
  end

  test do
    system "true"
  end
end
