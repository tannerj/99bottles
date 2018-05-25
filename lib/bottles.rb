class Bottles

  def verse(n)
    if(n > 2)
      <<~VERSE
        #{n} bottles of beer on the wall, #{n} bottles of beer.
        Take one down and pass it around, #{n-1} bottles of beer on the wall.
      VERSE
    elsif(n == 2)
      <<~VERSE
        #{n} bottles of beer on the wall, #{n} bottles of beer.
        Take one down and pass it around, 1 bottle of beer on the wall.
      VERSE

    elsif(n == 1)
      <<~VERSE
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      VERSE
    else
      <<~VERSE
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    end
  end

  def verses(m,n)
    requested_verses = ""
    (n..m).reverse_each do |x|
      requested_verses << verse(x)
      requested_verses << "\n" unless x == n
    end
    requested_verses
  end
end
