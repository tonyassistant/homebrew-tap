class Ipx < Formula
  desc "Keyboard-first macOS network operations TUI"
  homepage "https://github.com/tonyassistant/ipx"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tonyassistant/ipx/releases/download/v0.1.3/ipx-aarch64-apple-darwin.tar.gz"
      sha256 "148ff025d7f813e5bcf267eae3e53a98786a5d978fbe5caeab0d0c320a2687cf"
    else
      odie "Intel macOS bottle for ipx v0.1.3 is still publishing, try again shortly."
    end
  end

  def install
    bin.install "ipx"
  end

  test do
    system "true"
  end
end
