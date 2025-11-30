**About**

libGPUInfo is a small utility library that allows applications to query the configuration of the Arm® Immortalis™ or Arm Mali™ GPU present in the system. This information allows developers to adjust application workload complexity to match the performance capability of the current device.

This library is able to provide the Arm GPU hardware configuration, as well as performance metrics for the shader cores inside the GPU. The library is unable to provide system information, such as the available GPU clock frequencies, because this is provided by the device manufacturer and is not part of the Arm GPU itself.

**Supported devices**

This library aims to support all Arm GPU products from the Mali-T700 series onwards (Mali G31 and Mali G52 included), ensuring developers have coverage of the vast majority of smartphones with Arm GPUs that are in use today.

**How to use**

After building with the script, the output binary will be ./bin/arm_gpuinfo. You can run this on the device and print the results for your device to the terminal using the following commands:

`adb push ./bin/arm_gpuinfo /data/local/tmp`

`adb shell chmod u+x /data/local/tmp/arm_gpuinfo`

`adb shell /data/local/tmp/arm_gpuinfo`
