class Pangram
  def self.is_pangram?(str)
    str.downcase!
    gsubbed = str.gsub(/[^a-z]/, '')

    ('a'..'z').each do |letter| # or ('a'..'z').all? { |letter| str.include?(letter) }
      return false if !gsubbed.include?(letter)
    end

    true
  end
end