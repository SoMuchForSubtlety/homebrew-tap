# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class F1viewer < Formula
  desc "TUI client for F1TV"
  homepage "https://github.com/SoMuchForSubtlety/f1viewer/"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v2.3.0/f1viewer_2.3.0_macOS_amd64.tar.gz"
      sha256 "be5886368f19ae87d1aa75b3829c8931bba832fba721322fffd415bffc498b0d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v2.3.0/f1viewer_2.3.0_macOS_arm64.tar.gz"
      sha256 "d3607fd45a89c42fefa137efa4d0f8dc1c0b322b781fd97387927c5f9a77996f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v2.3.0/f1viewer_2.3.0_linux_amd64.tar.gz"
      sha256 "611116d2608f6c2aaebb54ed08ddaa2c0b85f17cdaf2d5d6407bfffec1da47d5"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v2.3.0/f1viewer_2.3.0_linux_armv6.tar.gz"
      sha256 "8ab7f15666aaf8cc799fec2c7d4bdc9ac00a0b1e681036c3551e3732536aa84c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/SoMuchForSubtlety/f1viewer/releases/download/v2.3.0/f1viewer_2.3.0_linux_arm64.tar.gz"
      sha256 "0a5a6042f7565a17daee50410dd72e6a7672265449e3851c76f279a8850ff8c8"
    end
  end

  def install
    bin.install "f1viewer"
  end
end
