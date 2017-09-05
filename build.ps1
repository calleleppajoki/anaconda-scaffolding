param([string]$command = "")

Elseif ($command -eq "kill") {
    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
    # Return to shell
    Return
}

#██████╗ ██╗   ██╗████████╗██╗  ██╗ ██████╗ ███╗   ██╗    ██████╗    ██╗  ██╗
#██╔══██╗╚██╗ ██╔╝╚══██╔══╝██║  ██║██╔═══██╗████╗  ██║    ╚════██╗   ╚██╗██╔╝
#██████╔╝ ╚████╔╝    ██║   ███████║██║   ██║██╔██╗ ██║     █████╔╝    ╚███╔╝ 
#██╔═══╝   ╚██╔╝     ██║   ██╔══██║██║   ██║██║╚██╗██║    ██╔═══╝     ██╔██╗ 
#██║        ██║      ██║   ██║  ██║╚██████╔╝██║ ╚████║    ███████╗██╗██╔╝ ██╗
#╚═╝        ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚══════╝╚═╝╚═╝  ╚═╝

#################
#   Miniconda   #
#################

If ($command -eq "miniconda2") {
    docker pull continuumio/miniconda
    # docker run -i -t continuumio/miniconda /bin/bash
    # Alternatively, you can start a Jupyter Notebook server and interact with Miniconda via your browser:
    docker run -i -t -p 8888:8888 continuumio/miniconda /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"
    # You can then view the Jupyter Notebook by opening http://localhost:8888 in your browser, or http://<DOCKER-MACHINE-IP>:8888 if you are using a Docker Machine VM.
}

#################
#   Anaconda    #
#################

Elseif ($command -eq "anaconda2")
{
    docker pull continuumio/anaconda
    # docker run -i -t continuumio/anaconda /bin/bash
    # Alternatively, you can start a Jupyter Notebook server and interact with Anaconda via your browser:
    docker run -i -t -p 8888:8888 continuumio/anaconda /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"
    # You can then view the Jupyter Notebook by opening http://localhost:8888 in your browser, or http://<DOCKER-MACHINE-IP>:8888 if you are using a Docker Machine VM.
}

#██████╗ ██╗   ██╗████████╗██╗  ██╗ ██████╗ ███╗   ██╗    ██████╗    ██╗  ██╗
#██╔══██╗╚██╗ ██╔╝╚══██╔══╝██║  ██║██╔═══██╗████╗  ██║    ╚════██╗   ╚██╗██╔╝
#██████╔╝ ╚████╔╝    ██║   ███████║██║   ██║██╔██╗ ██║     █████╔╝    ╚███╔╝ 
#██╔═══╝   ╚██╔╝     ██║   ██╔══██║██║   ██║██║╚██╗██║     ╚═══██╗    ██╔██╗ 
#██║        ██║      ██║   ██║  ██║╚██████╔╝██║ ╚████║    ██████╔╝██╗██╔╝ ██╗
#╚═╝        ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═════╝ ╚═╝╚═╝  ╚═╝
                                                                            
#################
#   Miniconda   #
#################

Elseif ($command -eq "miniconda3")
{
    docker pull continuumio/miniconda3
    # docker run -i -t continuumio/miniconda3 /bin/bash
    # Alternatively, you can start a Jupyter Notebook server and interact with Miniconda via your browser:
    docker run -i -t -p 8888:8888 continuumio/miniconda3 /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"
    # You can then view the Jupyter Notebook by opening http://localhost:8888 in your browser, or http://<DOCKER-MACHINE-IP>:8888 if you are using a Docker Machine VM.
}

#################
#   Anaconda    #
#################

Elseif ($command -eq "anaconda3")
{
    docker pull continuumio/anaconda3
    # docker run -i -t continuumio/anaconda3 /bin/bash
    # Alternatively, you can start a Jupyter Notebook server and interact with Anaconda via your browser:
    docker run -i -t -p 8888:8888 continuumio/anaconda3 /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"
    # You can then view the Jupyter Notebook by opening http://localhost:8888 in your browser, or http://<DOCKER-MACHINE-IP>:8888 if you are using a Docker Machine VM.
}
