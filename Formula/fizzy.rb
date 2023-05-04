class Fizzy < Formula
  desc "Fast, simple fuzzy text selector with an advanced scoring algorithm"
  homepage "https://github.com/razvanazamfirei/fzy"
  url "https://github.com/razvanazamfirei/fzy/releases/download/1.3/fzy-1.3.tar.gz"
  sha256 "4355a305ebdc72039608dc7896be57d01aa676a428b2aeabdaaa78f3a5c00a78"
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
