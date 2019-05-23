### Authors: Charlie Becker; Bin Wang; Will Mayfield; Sarah Murphy
### Date: 05/22/2019

This is a working example of a performance study completed on the 'Taki' HPC cluster at UMBC. It uses a combination of popular Python modules for hyperparameter tuning in parallel. The data and base model configuration is borrowed from the Machine Learning in Python forEnvironmental Science Problems AMS Short Course, provided by David John Gagne from the National Center for Atmospheric Research.  The repository for that course can be found at [https://github.com/djgagne/ams-ml-python-course]

## Workflow

After cloning this directory, first run data\_download.py which will download the data into a data direcory.

Next, run preprocess.py which will preproces the data and augement it to give a balanced dataset.  It will create and place .npy files into the data directory for easy access.

Next, you can run either submit\_2013.slurm or submit\_2018.slurm to submit the performance study across the cluster.  These scripts call run\_2013.py and run\_2018.py, respectively, which is where additional SLURM argumentes are defined, such as the number of nodes and hyperparameters.  Specifically, cluster.scale(x) will refer to the number of nodes desired.

Output for the study will be delivered to slurm-2013.out or slurm-2018.out, with error logs being delivered to slurm-2013.err or slurm-2018.err. Additionally, each process within each node will prodeuce training output in slurm-jobID.out, though this probably won't be useful.


The full technical report is listed as Technical\_Report.pdf 
