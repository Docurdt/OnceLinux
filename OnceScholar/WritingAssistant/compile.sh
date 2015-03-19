jobname=$1
bash clean.sh
rm $jobname.pdf
xelatex -shell-escape ./$jobname.tex
makeindex -s $jobname.ist -t $jobname.glg -o $jobname.gls $jobname.glo
makeindex -s $jobname.ist -t $jobname.alg -o $jobname.acr $jobname.acn
bibtex ./$jobname.aux
bibtex ./publications.aux
xelatex -shell-escape ./$jobname.tex
makeindex -s $jobname.ist -t $jobname.glg -o $jobname.gls $jobname.glo
makeindex -s $jobname.ist -t $jobname.alg -o $jobname.acr $jobname.acn
xelatex -shell-escape ./$jobname.tex
bash clean.sh
echo '*********'
echo 编译完成!
echo '*********'



