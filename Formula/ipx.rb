class Ipx < Formula
  desc "Keyboard-first macOS network operations TUI"
  homepage "https://github.com/tonyassistant/ipx"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonyassistant/ipx/releases/download/v0.1.0/ipx-aarch64-apple-darwin.tar.gz"
      sha256 "abf67b9aadef29a75473bcf71bd96708fa7b03c09e9d99c4c8431b1961602a90"
    else
      odie "Intel macOS archive for ipx v0.1.0 is not published yet."
    end
  end

  def install
    bin.install "ipx"
  end

  test do
    system "true"
  end
end
