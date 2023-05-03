class Fizzy < Formula
  desc "Fast, simple fuzzy text selector with an advanced scoring algorithm"
  homepage "https://github.com/razvanazamfirei/fzy"
  url "https://github.com/razvanazamfirei/fzy/releases/download/1.1/fzy-1.1.tar.gz"
  sha256 "70354a023d7d56e3c176161bee846ab95e554c12c532fb2a329e3754091ec103"
  license "MIT"
  head "https://github.com/razvanazamfirei/fzy.git", branch: "master"

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "foo", pipe_output("#{bin}/fzy -e foo", "bar\nfoo\nqux").chomp
  end
end
