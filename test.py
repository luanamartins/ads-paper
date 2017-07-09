
value = "70944.0"
dotPosition = value.index('.')

newDotPosition = dotPosition - 3
print(value)
value = value.replace(".", "")
newValue = value[:newDotPosition] + "." + value[newDotPosition:]
print(newValue)
