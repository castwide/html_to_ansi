RSpec.describe HtmlToAnsi::Ansi do
  it "generates ANSI codes" do
    code = HtmlToAnsi::Ansi.graphics_mode(HtmlToAnsi::Ansi::Code::Attribute::BOLD, HtmlToAnsi::Ansi::Code::Foreground::RED)
    expect(code).to include(HtmlToAnsi::Ansi::Code::Attribute::BOLD.to_s)
    expect(code).to include(HtmlToAnsi::Ansi::Code::Foreground::RED.to_s)
  end
end
