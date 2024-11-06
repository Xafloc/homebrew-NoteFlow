class Noteflow < Formula
  include Language::Python::Virtualenv

  desc "NoteFlow is a lightweight, Markdown-based note-taking application with task management capabilities."
  homepage "https://github.com/Xafloc/NoteFlow"
  url "https://github.com/Xafloc/NoteFlow/archive/refs/tags/v0.1.tar.gz"
  sha256 "20bc3a4dc8c50453861e62b6192c5ff99cef1c676741ba7331494c768b876e23"

  depends_on "python@3.9"

  resource "fastapi" do
    url "https://files.pythonhosted.org/packages/source/f/fastapi/fastapi-0.104.1.tar.gz"
    sha256 "your_fastapi_sha256"
  end

  resource "uvicorn" do
    url "https://files.pythonhosted.org/packages/source/u/uvicorn/uvicorn-0.24.0.tar.gz"
    sha256 "your_uvicorn_sha256"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/source/m/markdown-it-py/markdown-it-py-3.0.0.tar.gz"
    sha256 "your_markdown_it_py_sha256"
  end

  resource "python-multipart" do
    url "https://files.pythonhosted.org/packages/source/p/python-multipart/python-multipart-0.0.6.tar.gz"
    sha256 "your_python_multipart_sha256"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/source/p/pydantic/pydantic-2.4.2.tar.gz"
    sha256 "your_pydantic_sha256"
  end

  resource "aiofiles" do
    url "https://files.pythonhosted.org/packages/source/a/aiofiles/aiofiles-23.2.1.tar.gz"
    sha256 "your_aiofiles_sha256"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/source/j/jinja2/jinja2-3.1.2.tar.gz"
    sha256 "your_jinja2_sha256"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/source/r/requests/requests-2.31.0.tar.gz"
    sha256 "your_requests_sha256"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/source/b/beautifulsoup4/beautifulsoup4-4.12.0.tar.gz"
    sha256 "your_beautifulsoup4_sha256"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/noteflow", "--version"
  end
end
