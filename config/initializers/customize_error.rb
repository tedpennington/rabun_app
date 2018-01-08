#Fixes ugly error fields that are spit out upon failed validation
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance_tag|
  html_tag
end