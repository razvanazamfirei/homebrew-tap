class Fizzy < Formula
  desc "Fast, simple fuzzy text selector with an advanced scoring algorithm"
  homepage "https://github.com/razvanazamfirei/fzy"
  url "https://github.com/razvanazamfirei/fzy/releases/download/1.2.1/fzy-1.2.1.tar.gz"
  sha256 "d52723eae9859a1173efedc52826374a0a2bd07de84ccf1e7c642c722ac14842"
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
