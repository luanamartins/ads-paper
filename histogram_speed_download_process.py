def process_value(value):
    dotPosition = value.index('.')
    newDotPosition = dotPosition - 3
    value = value.replace(".", "")
    newValue = value[:newDotPosition] + "." + value[newDotPosition:]
    return (newValue)


# nature=concurrent numberPages=100 server=nodejs
def process(nature, numberPages, server):
    output = open("C:/Users/Lhwannah/Dropbox/artigo ads/data2/" + nature + "/" + server + "_500_requests_" + numberPages + "_pages_SPEED_DOWNLOAD_processed.txt", "w+")
    fileNode = open("C:/Users/Lhwannah/Dropbox/artigo ads/data2/" + nature + "/" + server + "_500_requests_" + numberPages + "_pages_SPEED_DOWNLOAD.txt", "r")

    for line in fileNode:
        output.write(process_value(line))

    output.close()
    fileNode.close()

process("sequential", "100", "nodejs")
process("sequential", "1000", "nodejs")
process("sequential", "100", "php")
process("sequential", "1000", "php")

process("concurrent", "100", "nodejs")
process("concurrent", "1000", "nodejs")
process("concurrent", "100", "php")
process("concurrent", "1000", "php")
