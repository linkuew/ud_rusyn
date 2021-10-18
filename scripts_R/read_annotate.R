# author: Matthew Fort
#
# Script to help along the annotation process for a given text file and a
# given UD Pipe Model.
#
# Usage: Rscript read_annotate.R arg1 arg2
#
# Input:
#       arg1 - text file to be annotated - this assumes that each unannotated
#               sentence is on a separate line
#       arg2 - UD Pipe model used for annotation - should probably be in the
#               similar language family tree as the text file language
# Output:
#       CoNNL-U formatted dataframes for each sentence. Note that the data
#               frames will not be numbered - this is because the program
#               (should) read line by line of the text file, so the program
#               doesn't have memory of how many sentences it has parsed, you
#               get to keep track of that

# information that you might need to know
print_help <- function()
{
        cat("Usage: Rscript read_annotate.R arg1 arg2\n")
        cat("arg1: /path/to/textfile - this assumes that each
              sentence is on a separate line\n")
        cat("arg2: /path/to/UDPipemodel - should probably be
              in the similar language family tree as the text file language\n")
}

# read through text file and parse sentence into CoNLL-U format
read_anno <- function(text_file, ud_file)
{
        library(udpipe)

        udmodel = udpipe_load_model(file = ud_file)
        text_file = file(text_file, "r")

        # specify the number of lines you'd like to read from
        # the beginning of the file by changing the number of
        # iterations here
        #for (i in 1:100) {
        while (TRUE) {
                line = readLines(text_file, n = 1)
                if (length(line) == 0) {
                        break
                }
                line_anno <- udpipe(x = line, object = udmodel,
                                tagger = c("default"),
                                parser = c("none"))
                cat(as_conllu(line_anno))
                #line_anno = as.data.frame(line_anno)
                #table(line_anno$conllu)
                #str(line_anno)
                #table(line_anno$upos)
        }
}

# start here
main <- function()
{
        args <- commandArgs()
        if (length(args) != 7) {
                print_help()
                quit(status = 1)
        }

        read_anno(args[6], args[7])
}


if(!interactive())
{
        main()
}
