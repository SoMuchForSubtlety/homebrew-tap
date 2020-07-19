class F1viewer < Formula
  desc "TUI client for F1TV"
  homepage "https://github.com/SoMuchForSubtlety/f1viewer/"
  version "1.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v1.2.0/f1viewer_1.2.0_macOS_64-bit.tar.gz"
    sha256 "cf43a0d46f490b2f965729ed844470638338dfd6f5bdd2daf46df5afc45c3554"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v1.2.0/f1viewer_1.2.0_linux_64-bit.tar.gz"
      sha256 "8a6e55ba8d3e475a50c1dd7a319aa091ffd0d9ef1af4954f95df5052b1d7cd97"
    end
  end
  
  depends_on "mpv" => :recommended

  def install
    bin.install "f1viewer"
  end
end
