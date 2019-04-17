require "html_to_ansi/version"

module HtmlToAnsi
  autoload :Ansi, 'html_to_ansi/ansi'
  autoload :Html, 'html_to_ansi/html'

  ESCAPE_REGEXP = /\x1b[^m]*m/

  def self.convert html, wrap: true, width: nil
    Html::Conversions.html_to_ansi html, wrap: wrap, width: width
  end

  def self.unescape ansi
    ansi.gsub(ESCAPE_REGEXP, '')
  end
end
