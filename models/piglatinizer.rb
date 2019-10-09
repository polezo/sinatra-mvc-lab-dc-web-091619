class PigLatinizer

    attr_accessor :word

    def sentence_splitter(sentence)
        arr = sentence.split(/ /)
  end

  
def pig_latinize_word(word)

  if word.match(/^[aAeEiIoOuU]/)
  word = word+"way"

 else
   start = word.slice!(/^[^aAeEiIoOuU]{1,}/)
   word+start+"ay"
  end
end


def piglatinize(sentence)
  sentence_splitter(sentence).map { |word| pig_latinize_word(word) }.join(" ")
end


end

