RSpec.describe HtmlToAnsi do
  it "has a version number" do
    expect(HtmlToAnsi::VERSION).not_to be nil
  end

  it "converts HTML to ANSI" do
    ansi = HtmlToAnsi.convert('<p>one</p><p>two</p><ul><li>point</li></ul>')
    expect(ansi).not_to include('<')
    expect(ansi).not_to include('>')
  end

  it "unescapes ANSI" do
    ansi = HtmlToAnsi.convert('<p>one</p><p>two</p><ul><li>point</li></ul>')
    plain = HtmlToAnsi.unescape(ansi)
    expect(plain).to include("\none\n\ntwo\n\n* point")
  end

  it "separates paragraphs with line breaks" do
    ansi = HtmlToAnsi.convert '<p>hello</p>'
    expect(HtmlToAnsi.unescape(ansi)).to include("\nhello\n")
  end

  it 'wraps at width' do
    ansi = HtmlToAnsi.convert('<p><b>one</b> two</p>', width: 3)
    plain = HtmlToAnsi.unescape(ansi)
    expect(plain).to include("one\ntwo")
  end
end
