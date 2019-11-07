# usage:Rscript fasta-seq.R all.fasta unique.fasta | less
# install genometools: conda install genometools-genometools -c bioconda
# genometools usage: gt sequniq -o unique.fasta all.fasta
# genometools github home https://github.com/genometools/genometools

library(seqinr)
library(seqinr)

funiq<-function(all.fa,uniq.fa)
        {
        all<-unlist(all.fa)
        sequ.names <- names(uniq.fa)
        sequ <- NULL
        sequ[sequ.names] <- list(NULL)
        for(i in 1: length(uniq.fa))
            {
            sequ[[i]]<-names(all[which(all%in%(uniq.fa[[i]][1]))])
            }
        return(sequ)
        }

args=commandArgs(T)
all.fasta=args[1]
unique.fasta=args[2]

all<-read.fasta(all.fasta,as.string = TRUE,seqtype="AA")
uniq<-read.fasta(unique.fasta,as.string = TRUE,seqtype="AA")

nam<- funiq(all,uniq)
#fcount<-sapply(nam,length)
fcount<-as.data.frame(sapply(nam,length))

print(fcount)
