class Fizzy < Formula
  desc "Fast, simple fuzzy text selector with an advanced scoring algorithm"
  homepage "https://github.com/razvanazamfirei/fzy"
  url "https://github.com/razvanazamfirei/fzy/releases/download/1.2/fzy-1.2.tar.gz"
  sha256 "77ae21d066f1231b5b41cb091fedada37ea155ed014a18a6f79947b1fdeb6bfa"
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
