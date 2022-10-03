

echo "Script for preparing the development environment"
echo "------------------------------------------------"

echo "Checking if config.ini exists in the current working dir -->"
if test -f "config.ini"; then
    echo "exists"
else
	echo "Copying config file from secure secret storage"
	if [ $? -eq 0 ]; then echo "OK"; else echo "Problem copying config.ini file"; exit 1; fi
fi
echo "------------------------------------------------"

echo "Checking if log_worker.yaml exists in the current working dir -->"
if test -f "log_worker.yaml"; then
    echo "exists"
else
	echo "Copying log config file from local dev template log_worker.yaml.dev"
	cp log_worker.yaml.dev log_worker.yaml
	if [ $? -eq 0 ]; then echo "OK"; else echo "Problem copying log_worker.yaml file"; exit 1; fi
fi
echo "------------------------------------------------"

echo "Checking if log_migrate_db.yaml exists in the current working dir -->"
if test -f "log_migrate_db.yaml"; then
    echo "exists"
else
	echo "Copying log config file from local dev template log_migrate_db.yaml.dev"
	cp log_migrate_db.yaml.dev log_migrate_db.yaml
	if [ $? -eq 0 ]; then echo "OK"; else echo "Problem copying log_migrate_db.yaml file"; exit 1; fi
fi
echo "------------------------------------------------"

echo "Running my tests"
if [ $? -eq 0 ]; then echo "OK"; else echo "myTest test FAILED"; exit 1; fi
echo "------------------------------------------------"

echo "ALL SET UP! YOU ARE READY TO CODE"
echo "to start the program, execute:"
echo "$python3_exec_loc naked.py"
