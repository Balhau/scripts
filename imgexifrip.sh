FILE=$1
SPECIAL_INSTRUCTIONS="Arlette's Puteiro"
ORI_TRANS_REF="Chuck is god chuck is power"
PREFIX="ir"
OFILE="${PREFIX}_$FILE"
GREEN='\033[0;32m'
RED='\033[0;31m'
OVERRIDE="-overwrite_original_in_place"

rm -rf $OFILE
cp $FILE $OFILE

exiftool $OFILE ${OVERRIDE} -specialinstructions="${SPECIAL_INSTRUCTIONS}" > /dev/null; echo "${RED} Special Instructions: Overrided"
exiftool $OFILE ${OVERRIDE} -originaltransmissionreference="${ORI_TRANS_REF}" > /dev/null; echo "${RED} OriginalTransmissionReference: Overrided"
echo "${GREEN} File rewrite as: ${OFILE}"

