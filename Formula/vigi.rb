# Vigilance: catch supply-chain attacks. One binary, no agent, no cloud.
# Commercial software from Modul4r Solutions. Free tier and Pro: https://vigihq.com
#
# This file is generated on every release by .github/workflows/release.yml.
# Do not hand-edit it in the tap: the next release overwrites it. Change the
# template at packaging/homebrew/vigi.rb.tmpl in the vigilance repo instead.
class Vigi < Formula
  desc "Catch supply-chain attacks before they reach production"
  homepage "https://vigihq.com"
  version "0.1.42"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://vigihq.com/dl/v0.1.42/vigi-darwin-arm64"
      sha256 "0fb810c5942e5ba2544b67d4047cb3892a22fa978efe5e8d84f434791d08f491"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.42/vigi-darwin-amd64"
      sha256 "ee162de1812794b8cabdffb99fce2a4adeeed717bd7844f797d176c7d2440eaf"
    end
  end

  on_linux do
    on_arm do
      url "https://vigihq.com/dl/v0.1.42/vigi-linux-arm64"
      sha256 "93e9c8703ee9e167803a1d84909b0f547792ca2a78d77b83e309ea975153b25b"
    end
    on_intel do
      url "https://vigihq.com/dl/v0.1.42/vigi-linux-amd64"
      sha256 "75b83edbe9bc4c3f128820d3e236bbc4091b1e6f95987fdd0cae578886a7b557"
    end
  end

  def install
    bin.install Dir["vigi-*"].first => "vigi"
  end

  test do
    assert_match "vigi", shell_output("#{bin}/vigi self 2>&1", 0)
  end
end
