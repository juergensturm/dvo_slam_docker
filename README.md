# dvo_slam_docker

docker container to run [tum-vision/dvo_slam (jade-devel)](https://github.com/tum-vision/dvo_slam/tree/jade-devel) on [TUM RGB-D SLAM datasets](http://vision.in.tum.de/data/datasets/rgbd-dataset).

## build
```shell
docker build -t dvo_slam_docker:latest .
```

## development
docker run -ti --rm -v $HOME/code/dvo_slam:/root/ws/src -v $HOME/code/dvo_slam_docker/scripts:/root/scripts -v ~/data/US_CA_MTV_ConsoleCorner1/rgbd/:/dataset dvo_slam_docker:latest /bin/bash
scripts/build_and_run.sh
```

Alternatively:
```shell
docker run -ti --rm -v $HOME/code/dvo_slam:/root/ws/src -v $HOME/code/dvo_slam_docker/scripts:/root/scripts -v $HOME/data/rgbd_dataset_freiburg2_desk:/dataset dvo_slam_docker:latest /bin/bash
```

## usage

```shell
docker run -ti --rm -v /path/to/rgbd_dataset_freiburg1_desk:/dataset dvo_slam_docker:latest
```

modify ```/path/to/rgbd_dataset_freiburg1_desk``` to point to the TUM RGB-D SLAM dataset you want to test. this folder has to contain a file ```assoc.txt``` created with ```associate.py rgb.txt depth.txt > assoc.txt```.
the estimated trajectory is stored in ```assoc_opt_traj_final.txt``` in the dataset folder.
