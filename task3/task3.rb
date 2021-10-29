class MDHtml
  def initialize(&block)
    @res = ''
    instance_eval &block
  end

  def method_missing(name, *args)
    tag = name.to_s
    content = args.first
    @res ||= ''
    @res += "<#{tag}>#{content}</#{tag}>"
  end


  def html(&block)
    @res << "<!doctype html>\n\n"
    @res << "<html>\n"
    instance_eval &block
    @res << "</html>"

  end

  def head(&block)
    @res << "\t<head>\n"
    instance_eval &block
    @res << "\t<head>\n"
  end

  def meta(**data)
    @res << %Q{\t\t<meta name="#{data.keys.join}" content="#{data.values.join}">\n}
  end

  def title(data)
    @res << "\t\t<title>#{data}</title>\n\n"
  end

  def link(**data)
    @res << %Q{\t\t<link rel="#{data.keys.join}" href="#{data.values.join}">\n}
  end

  def body(&block)
    @res << "\t<body>\n"
    instance_eval &block
    @res << "\t</body>\n"
  end
  def div(*args,&block)
    @res << "\t\t<div>"
    if block_given?
      instance_eval &block
    else
      @res << args.first
    end
    @res << "</div>\n"
  end

  def script **data
    @res << %Q{\t\t<script #{data.keys.join}="#{data.values.join}"> </ script>\n}
  end

  def p str
    @res << str
  end

  def to_s
    puts @res
  end
end


MDHtml.new do
  html do
    head do
      meta charset: "utf-8"
      title "The HTML5 Template"
      meta description: "The HTML5 Template"

      meta author: "MobiDev"
      link stylesheet: "css/styles.css?v=1.0"
    end

    body do
      div do
        p "Hello World"
      end
      script src:"js/scripts.js"
    end
  end
end.to_s
