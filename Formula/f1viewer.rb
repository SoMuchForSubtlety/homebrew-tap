class F1viewer < Formula
  desc "TUI client for F1TV"
  homepage "https://github.com/SoMuchForSubtlety/f1viewer/"
  version "1.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v1.3.0/f1viewer_1.3.0_macOS_64-bit.tar.gz"
    sha256 "af5d3788dee97f771e2b9c3a2244baff424c8efa583235daec6347f4c849db8d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v1.3.0/f1viewer_1.3.0_linux_64-bit.tar.gz"
      sha256 "633a41ac55a43ad6a337a40dd946a992bc28cdf2aef0ec9a80c518b7c8f6394a"
    end
  end

  def install
    bin.install "f1viewer"
  end
end
