# Universal Dependency treebank for Rusyn
A database for the beginning of a UD treebank for the Rusyn language

# Set up
To better facilitate an agreeable computing environment, here are the
things I've used to run this code and ensure smooth optimal operations.

*Creating an R environment*
Rather than attempt to reinvent multiple wheels, the carriage, and the horse,
I've chosen to utilize the framework Miniconda. This can be downloaded (as of
19/10/2021) at [https://docs.conda.io/en/latest/miniconda.html].

Once you've installed Miniconda, you can now follow the instructions here
(19/10/2021) [https://docs.anaconda.com/anaconda/user-guide/tasks/using-r-language/]

Lastly, you'll need the R package udpipe, so you can run:
conda install -n {r-env-name} r-udpipe

*Info about my environment*
This code is running in Rscript version 3.6.1 within conda 4.10.3.


# Acknowledgements
Special thanks to the John and Helen Timo Foundation for providing the original corpus.

Wikipedia Data: © 2021 Abteilung Automatische Sprachverarbeitung, Universität Leipzig.
(their usage terms found here: https://wortschatz.uni-leipzig.de/en/usage)

UD Pipe: Straka, Milan and Straková, Jana, 2019, Universal Dependencies 2.5 Models for UDPipe (2019-12-06), LINDAT/CLARIAH-CZ digital library at the Institute of Formal and Applied Linguistics (ÚFAL), Faculty of Mathematics and Physics, Charles University, http://hdl.handle.net/11234/1-3131.

Anaconda: (https://www.anaconda.com/)
