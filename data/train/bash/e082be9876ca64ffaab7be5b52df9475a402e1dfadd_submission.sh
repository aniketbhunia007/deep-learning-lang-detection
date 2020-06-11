SOURCE_FILE=$1; shift
HOLE_NO=$1; shift
SUBMISSION_NO=$1; shift
AUTHOR=$@
HOLE_DIR=hole$HOLE_NO
SUBMISSION_DIR=$HOLE_DIR/submission$SUBMISSION_NO
SUBMISSION_AUTHOR_FILE=$SUBMISSION_DIR/author.txt
SUBMISSION_PROGRAM_FILE=$SUBMISSION_DIR/program.php
SUBMISSION_OUTPUT_FILE=$SUBMISSION_DIR/output
SUBMISSION_RESULTS_FILE=$SUBMISSION_DIR/results.txt
SAMPLE_DIR=$HOLE_DIR/sample
SAMPLE_MD5_FILE=$SAMPLE_DIR/output
SAMPLE_INPUT_FILE=$SAMPLE_DIR/input
SAMPLE_ARGV_FILE=$SAMPLE_DIR/argv

mkdir $SUBMISSION_DIR || exit
echo $AUTHOR >$SUBMISSION_AUTHOR_FILE || exit
mv "$SOURCE_FILE" $SUBMISSION_PROGRAM_FILE || exit

result="Passed"
for x in $(seq -f '%02g' 1 $(ls $SAMPLE_INPUT_FILE* | wc -l))
do
	php $SUBMISSION_PROGRAM_FILE $(cat $SAMPLE_ARGV_FILE$x.txt) <$SAMPLE_INPUT_FILE$x.txt 2>/dev/null | php trim.php >$SUBMISSION_OUTPUT_FILE$x.txt
	md5sum -c $SAMPLE_MD5_FILE$x.md5 <$SUBMISSION_OUTPUT_FILE$x.txt
	[ $? -gt 0 ] && result="Failed"
done
echo $result > $SUBMISSION_RESULTS_FILE
