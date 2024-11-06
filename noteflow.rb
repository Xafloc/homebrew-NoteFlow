class Noteflow < Formula
  include Language::Python::Virtualenv

  desc "NoteFlow is a lightweight, Markdown-based note-taking application with task management capabilities."
  homepage "https://github.com/Xafloc/NoteFlow"
  url "https://github.com/Xafloc/NoteFlow/archive/refs/tags/v0.1.tar.gz"
  sha256 "20bc3a4dc8c50453861e62b6192c5ff99cef1c676741ba7331494c768b876e23"

  depends_on "python@3.9"
  depends_on "rust"

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/source/f/fastapi/fastapi-0.104.1.tar.gz"
    sha256 "e5e4540a7c5e1dcfbbcf5b903c234feddcdcd881f191977a1c5dfd917487e7ae"
  end

  resource "starlette" do
    url "https://files.pythonhosted.org/packages/source/s/starlette/starlette-0.27.0.tar.gz"
    sha256 "6a6b0d042acb8d469a01eba54e9cda6cbd24ac602c4cd016723117d6a7e73b75"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/source/u/uvicorn/uvicorn-0.24.0.tar.gz"
    sha256 "368d5d81520a51be96431845169c225d771c9dd22a58613e1a181e6c4512ac33"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/source/m/markdown-it-py/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/source/p/pydantic/pydantic-2.4.2.tar.gz"
    sha256 "94f336138093a5d7f426aac732dcfe7ab4eb4da243c88f891d65deb4a2556ee7"
  end

  resource "pydantic_core" do
    url "https://github.com/pydantic/pydantic-core/archive/refs/tags/v2.26.0.tar.gz"
    sha256 "0543d3db86c399855bb145c6934c59d8db6202aa9e352fca4c59e741746769a9"
  end

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/source/a/aiofiles/aiofiles-23.2.1.tar.gz"
    sha256 "84ec2218d8419404abcb9f0c02df3f34c6e0a68ed41072acfb1cef5cbc29051a"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/source/r/requests/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/source/b/beautifulsoup4/beautifulsoup4-4.12.0.tar.gz"
    sha256 "c5fceeaec29d09c84970e47c65f2f0efe57872f7cff494c9691a26ec0ff13234"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/noteflow", "--version"
  end
end
