THEDATE=`date +%d_%m_%y`

mkdir archived-backups
####### Input username and password to clone Repos #########################
REPOUSER=""
REPOPASS=""
WORKSPACEID=""
######## List repos with forloop #########################

for i in reponame1 reponame2 reponame3 ;

do 

#Mention reponame1 and reponame2 under if condition if it require to take backup with branches

if [ "$i" = "reponame1-totake-backup-with-branches" ]  ||  [ "$i" = "reponame2totakewithbranches" ] ; 
then


####### List branches for reponame1totakebranches & reponame2totakewithbranches to take backup #########################
for j in dev int stag prod ;
do

rm -rf "$i"_"$j"
git clone --single-branch --branch "$j" https://"$REPOUSER":"$REPOPASS"@bitbucket.org/"$WORKSPACEID"/"$i".git ;

mv "$i" "$i"_"$j" ;
tar -cvf archived-backups/"$i"_"$j"_"$THEDATE".tar.gz "$i"_"$j" ; 


done

else

rm -rf $i ;
git clone https://"$REPOUSER":"$REPOPASS"@bitbucket.org/"$WORKSPACEID"/"$i".git ;

tar -cvf archived-backups/"$i"_"$THEDATE".tar.gz "$i" ;


fi
done


find /root/bitbucket-backup/archived-backups/*.gz -mtime +14 -exec rm {} \;
