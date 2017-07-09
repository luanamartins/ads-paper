import os

def create_output_directory(dataType):
    path = "plots/csvFiles/" + dataType
    if not os.path.isdir(path):
        os.makedirs(path)


# pages = 100, variableType = CONNECT_TIME, folder = "data2/sequential", dataType = "sequencial"
def create_file(pages, variableType, folder, dataType):
    #output = open("images/connect_time_100_pages.csv", "w")
    output = open("plots/csvFiles/" + dataType + "/" + variableType + "_" + pages + "_pages.csv", "w+")
    
    fileNode = open(folder + "/nodejs_500_requests_" + pages + "_pages_" + variableType + ".txt", "r")
    filePhp = open(folder + "/php_500_requests_" + pages + "_pages_" + variableType + ".txt", "r")

	# Add headers
	output.write("server,value")
	
    server = "nodejs"
    prefix = server + ","

    for line in fileNode:
        output.write(prefix + line)


    server = "php"
    prefix = server + ","
    for line in filePhp:
        output.write(prefix + line)

    fileNode.close()
    filePhp.close()
    output.close()

def __main__():
    create_output_directory("sequential")
    create_output_directory("concurrent")

    create_file("100", "CONNECT_TIME", "data2/sequential", "sequential")
    create_file("100", "SPEED_DOWNLOAD", "data2/sequential", "sequential")
    create_file("100", "TOTAL_TIME", "data2/sequential", "sequential")

    create_file("1000", "CONNECT_TIME", "data2/sequential", "sequential")
    create_file("1000", "SPEED_DOWNLOAD", "data2/sequential", "sequential")
    create_file("1000", "TOTAL_TIME", "data2/sequential", "sequential")
    
    create_file("100", "CONNECT_TIME", "data2/concurrent", "concurrent")
    create_file("100", "SPEED_DOWNLOAD", "data2/concurrent", "concurrent")
    create_file("100", "TOTAL_TIME", "data2/concurrent", "concurrent")

    create_file("1000", "CONNECT_TIME", "data2/concurrent", "concurrent")
    create_file("1000", "SPEED_DOWNLOAD", "data2/concurrent", "concurrent")
    create_file("1000", "TOTAL_TIME", "data2/concurrent", "concurrent")

    
    
