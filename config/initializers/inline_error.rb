# config.action_view.field_error_proc = Proc.new { |html_tag, instance| content_tag :div, html_tag, class: "field_with_errors_touhid" }

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if html_tag !~ /^\<label/
    %(#{ html_tag }
      <div class="invalid-feedback">
        #{ instance.error_message.first }
      </div>
    ).html_safe
  else
    html_tag
  end
end
