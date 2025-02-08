# Linux Network Namespace Simulation Assignment

![namespace_simulation](https://github.com/user-attachments/assets/af9711e5-c575-4138-8fa0-bd343ea818d7)


## Overview

This project simulates network namespace using shell scripts. It includes creating bridges, namespaces, veth pairs, configuring IPs, routing, and testing connectivity.


## Requirements

- Linux with networking support
- `bash` shell
- Root privileges

## Notes

- Run with `sudo` if needed.

- Ensure scripts have execute permissions:
  ```sh
  chmod +x make_all_files_executable.sh
  make executable
  ```

## Usage

Run all steps:

```sh
make
```

## Makefile Targets (Step-by-Step)

1. **`create_bridges`**: Sets up network bridges.
   ```sh
   make create_bridges
   ```
2. **`create_ns`**: Creates network namespaces.
   ```sh
   make create_ns
   ```
3. **`create_veth`**: Creates virtual Ethernet pairs.
   ```sh
   make create_veth
   ```
4. **`configure_ip`**: Assigns IP addresses.
   ```sh
   make configure_ip
   ```
5. **`configure_routing`**: Configures routing.
   ```sh
   make configure_routing
   ```


**`test_connectivity`**: Verifies network connectivity.
   ```sh
   make ping
   ```
**`clean`**: Removes created network configurations.
   ```sh
   make clean
   ```


