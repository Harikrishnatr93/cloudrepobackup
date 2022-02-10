# cloudrepobackup
Bashscript to create cloud repo backups


The bashscript can automate the bitbucket cloud repo backup to local.
Please find the details below.


Backup file format : Archive file format


I am attaching the backup script for your reference.

Key points to note :

    The script can run inside any Unix system for backing up locally

    The authentication details (Bitbucket cloud username and password workspaceID ) need to be specifed inside the bash script for the authentication to clone the repo.

    The script will create a directory called “archived-backups”  at script file location. All the old backups are stored inside the directory “archived-backup” in a tar file format.

    You can include more repositories by adding the repo name inside "for loop" with a space next to the last repo name entry (Details are specified inside the script file)

    You can also include branches  by adding the branch name inside the respective "for loop" with a space next to the last branch name entry (Details are specified inside script file)


The script will also remove old backups (more than 14days if you put the script with a cronjob) 
++++++++++++++++++++
Consider the below clone URL

Eg: Clone URL :  git clone https://harikrishnatr@bitbucket.org/harikrishnatr/reactapp.git

Username = harikrishnatr
Password = "bitbucket user password"
WorkspaceID = harikrishnatr
Reponame= reactapp

