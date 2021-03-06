# !/bin/sh

# Base Path of the export_mongodb.sh
BASE_BACKUP_PATH="$PWD";

# Database name for export
DATABASE_NAME="easydeel_new";

# New name for folder with date and time
BACKUP_FOLDER_NAME="$DATABASE_NAME@$(date +%Y-%m-%d_%H:%M:%S)";

# Create a new folder with name (database_name@date_and_time) in $BASE_BACKUP_PATH 
mkdir "$BASE_BACKUP_PATH/$BACKUP_FOLDER_NAME";

# ```````````````````
# EXPORT DATABASE CMD
#
# ```````````````````

# Export mongodb to $BASE_BACKUP_PATH/$BACKUP_FOLDER_NAME location
mongodump -d "$DATABASE_NAME" -o "$BASE_BACKUP_PATH/$BACKUP_FOLDER_NAME";

# Syntax fro export --> "mongodump -d <database_name> -o <output_path>"

echo "\n----------------------------------------------------------\n";

echo "--> In Mongo ($DATABASE_NAME) database is exported to $BASE_BACKUP_PATH/$BACKUP_FOLDER_NAME";

echo "\n----------------------------------------------------------\n";