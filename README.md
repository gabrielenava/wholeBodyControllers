# whole-body-controllers

A collection of Matlab/Simulink whole body controllers for humanoid robots. 

## Dependencies

This repository depends upon the following Software/repositories:

- [Matlab/Simulink](https://it.mathworks.com/products/matlab.html), default version **R2017b**
- [WB-Toolbox](https://github.com/robotology/WB-Toolbox)
- [Gazebo Simulator](http://gazebosim.org/), default version **9.0**
- [gazebo-yarp-plugins](https://github.com/robotology/gazebo-yarp-plugins)
- [icub-gazebo](https://github.com/robotology/icub-gazebo) and [icub-gazebo-wholebody](https://github.com/robotology-playground/icub-gazebo-wholebody) to access iCub models.
- [codyco-modules](https://github.com/robotology/codyco-modules) (Optional, for using [home positions](https://github.com/robotology/codyco-modules/tree/master/src/modules/torqueBalancing/app/robots) and [wholeBodyDynamics](https://github.com/robotology/codyco-modules/tree/master/src/devices/wholeBodyDynamics) device).

**NOTE:** it is suggested to install `whole-body-controllers` and most of its dependencies (namely, `codyco-modules`,`icub-gazebo`,`icub-gazebo-wholebody`, `gazebo-yarp-plugins` and `WB-Toolbox` and their dependencies) using the [robotology-superbuild](https://github.com/robotology/robotology-superbuild) (enable `ROBOTOLOGY_USES_GAZEBO`, `ROBOTOLOGY_ENABLE_DYNAMICS`, `ROBOTOLOGY_USES_MATLAB` options).

## Installation and usage

- set the environmental variable `YARP_ROBOT_NAME` in the `.bashrc` file to be the name of the robot you want to control. List of supported robot names:

  | Robot Names | Associated URDF Model |
  |:-------------:|:-------------:|
  | iCubGenova02 | [model.urdf](https://github.com/robotology/icub-models/blob/master/iCub/robots/iCubGenova02/model.urdf) |
  | iCubGenova04 | [model.urdf](https://github.com/robotology/icub-models/blob/master/iCub/robots/iCubGenova04/model.urdf) |
  | iCubGazeboV2_5 |[model.urdf](https://github.com/robotology/icub-models/blob/master/iCub/robots/iCubGazeboV2_5/model.urdf)|
  | icubGazeboSim |[model.urdf](https://github.com/robotology/yarp-wholebodyinterface/blob/master/app/robots/icubGazeboSim/model.urdf) |

- to use the Simulink controllers, it is required to add the path to the [wbc](library/+wbc) library to the Matlab path. There are two alternatives:
   - directly add the path to the Matlab path, or
   - run **only once** the [startup.m](config/startup.m) script. In this case, it is required to **always** start matlab from the folder where the `pathdef.m` file is (usually `~/Documents/MATLAB`). For further information see also the [WBToolbox documentation](https://robotology.github.io/wb-toolbox/mkdocs/install/#matlab).

## Troubleshooting

Please refer to the [WBToolbox troubleshooting documentation](https://robotology.github.io/wb-toolbox/mkdocs/troubleshooting/).

## Structure of the repo

- **config**: a collection of scripts for correctly configure this repo. [[README]](config/README.md)

- **torque-controllers**: Simulink torque controllers for balancing and walking of humanoid robots. [[README]](torque-controllers/README.md)

- **doc**: guidelines on how to create/use Simulink models for control. [[README]](doc/README.md)

- **library**: a library of functions/scripts used by the controllers. [[README]](library/README.md)

- **utilities**: Simulink models for debugging sensors on the real robot. [[README]](utilities/README.md)

## Automatic generation of c++ code from Simulink

There is the possibility to generate c++ code from the Simulink models using [Simulink coder](https://www.mathworks.com/products/simulink-coder.html). The repositiory that contains the generated c++ code for the [momentum-based-yoga](torque-controllers/momentum-based-yoga) controller is named [autogenerated-whole-body-controllers](https://github.com/robotology-playground/autogenerated-whole-body-controllers). Documentation on how to generate the code is available in the repository [wiki](https://github.com/robotology-playground/autogenerated-whole-body-controllers/wiki/How-to-generate-code-from-a-Simulink-model).

## Where do I find new features and legacy repos?

##### Available controllers 

- [impedance-control](https://github.com/robotology/whole-body-controllers/tree/master/torque-controllers/impedance-control)
- [momentum-based-standup](https://github.com/robotology/whole-body-controllers/tree/master/torque-controllers/momentum-based-standup)
- [momentum-based-yoga](https://github.com/robotology/whole-body-controllers/tree/master/torque-controllers/momentum-based-yoga)
- [utilities](https://github.com/robotology/whole-body-controllers/tree/master/utilities)

##### Matlab functions library

- [matlab library](https://github.com/robotology/whole-body-controllers/tree/master/library/matlab)

##### Active Forks (new features)

- [force-parametrization](https://github.com/ahmadgazar/whole-body-controllers)
- [PhRI-standup](https://github.com/Yeshasvitvs/wholeBodyControllers)

##### Legacy

Official legacy repositories are: [mex-wholebodymodel](https://github.com/robotology/mex-wholebodymodel) and [WBI-Toolbox-controllers](https://github.com/robotology-playground/WBI-Toolbox-controllers). **Note**: these legacy repos contain undocumented/outdated code, and duplicated or not tested matlab functions. They also contain original code that has been tested on the robot in the past and then never used again, or code that will be ported in the main repository in the future.

- [exploit friction and walking controller](https://github.com/robotology-playground/WBI-Toolbox-controllers/tree/whole-body-controllers-legacy/controllers/legacy)
- [seesaw controller and integration-based-ikin](https://github.com/robotology-playground/WBI-Toolbox-controllers/tree/whole-body-controllers-legacy/controllers/legacy)
- [automatic gain tuning](https://github.com/robotology/mex-wholebodymodel/tree/master/controllers/torqueBalancingGainTuning)
- [elastic joints control](https://github.com/robotology/mex-wholebodymodel/tree/master/controllers/torqueBalancing_JE)
- [walkman control](https://github.com/robotology-playground/WBI-Toolbox-controllers/tree/whole-body-controllers-legacy/controllers/legacy/torqueBalancing-walkman) and [walkman control-matlab](https://github.com/robotology/mex-wholebodymodel/tree/master/controllers/torqueBalancingWalkman)
- [joint-space control and centroidal transformation](https://github.com/robotology/mex-wholebodymodel/tree/master/controllers/torqueBalancingJointControl)

#### Associated repositories

- [matlab-multi-body-sim](https://github.com/gabrielenava/matlab-multi-body-sim)

### Mantainers

Gabriele Nava ([@gabrielenava](https://github.com/gabrielenava))
