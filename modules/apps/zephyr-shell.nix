{ pkgs, zephyr }:

pkgs.mkShell {
  packages = [
    (zephyr.sdk.override {
      targets = [
        "arm-zephyr-eabi"                    # For nRF52, STM32, RP2040 (Pico)
        "xtensa-espressif_esp32_zephyr-elf"  # For generic ESP32
        "xtensa-espressif_esp32s3_zephyr-elf"# For ESP32-S3
        "riscv64-zephyr-elf"                 # For ESP32-C3 and ESP32-C6
      ];
    })

    zephyr.pythonEnv
    zephyr.hosttools

    pkgs.cmake
    pkgs.ninja
    pkgs.esptool
  ];
} 
