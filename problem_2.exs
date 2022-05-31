list = IO.gets("Input: ")
list = list |> String.replace("\n", "") |> String.split(" ", trim: true)

result = Enum.reduce(list, %{
  number: [],
  even_number: [],
  odd_number; [],
  text: []
  },fn value, acc->
    case Interger.parse(value) do
      {int_value, ""} when rem(int_value, 2) == 1 ->
        Map.merge(acc,%{
          number: acc.number ++ [value],
          odd_number: acc.odd_number ++ [value]
        })
      {int_value, ""} when rem(int_value, 2) == 0 ->
        Map.merge(acc,%{
          number: acc.number ++ [value],
          even_number: acc.even_number ++ [value]
        })
        _->
          Map.put(acc, :text, acc.text ++ [value])
    end
  end
  )
IO.inspect result
