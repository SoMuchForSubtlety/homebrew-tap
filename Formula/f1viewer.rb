class F1viewer < Formula
  desc "TUI client for F1TV"
  homepage "https://github.com/SoMuchForSubtlety/f1viewer/"
  version "1.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v1.4.0/f1viewer_1.4.0_macOS_64-bit.tar.gz"
    sha256 "5679f478399b63f17be3982b706beef539daaf774fca4cd0248c13189a672efe"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v1.4.0/f1viewer_1.4.0_linux_64-bit.tar.gz"
      sha256 "765695c5db2109157f7b4e89ad06229715d537789c8715eab462e9ff11c658f1"
    end
  end

  def install
    bin.install "f1viewer"
  end
end
