# iLeapLib

iLeapLib is a simple library for using LeapMotion with any app make with Objective-C language.

It used the **LeapMotion** WebSocket server to getting data from the devices and distribute it to the app with an Objective-C elegant manner: 

> **Shared controller and Delegate methods.**


Created by Vincent Saluzzo.

Copyright 2013 ITELIOS SAS. All rights reserved.


# To Do

Only Gesture are available for the moment, so to do : 

* Getting Fingers, Pointables and Hands in elegant manner
* Beautify the code with enumeration (e.g. for type of gesture, or state, etc.)
* any others suggestions to increase this lib…


# How to Use

Compile yourself or getting directly the iLeapLib.framework file. Then copy it to you project and be sure you have added to your project thoses frameworks and libraries:

* libicucore.dylib
* CFNetwork.framework
* Security.framework

Then, just import the header to your project `#import <iLeapLib/iLeapLib.h>` and use the ITLeapMotion singleton object to start listening and settings delegate listener.


# License

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.