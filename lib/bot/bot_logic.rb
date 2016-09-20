

class BotLogic < BaseBotLogic

  def self.bot_logic
    #reply_message "Hello World."
    #binding.pry

    search_request_on_website(
        url: "http://www.chefkoch.de/",
        form_name: 'searchform',
        result_css_selector: '.search-list-item > a',
        image_css_selector: 'img',
        button_text: 'Rezept anzeigen'
    )

    handle_search_result(
        url: "http://www.chefkoch.de",
        result_css_selector: ".ingredients__container"
    )
  end

end