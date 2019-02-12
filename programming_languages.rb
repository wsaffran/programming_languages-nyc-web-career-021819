def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, lang_hash|
    lang.each do |lang, type_hash|
      type_hash.each do |type, type_string|
        if new_hash.include?(lang)
          new_hash[lang][:style] << style
        else
          new_hash[lang] = {:type => type, :style => [style]}
        end
      end
    end
  end
end

  

