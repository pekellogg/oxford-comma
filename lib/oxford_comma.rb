def oxford_comma(array)
    size = array.size
    case array.any?
    when size == 1
        array.join
    when size == 2
        array.join(" and ")
    when size == 3
        "#{array[0]}, #{array[1]}, and #{array[2]}"
    when size >= 4
        array[0..-2].join(", ") + ", and " + array[-1]
    else
        "Error: empty array"
    end
end
