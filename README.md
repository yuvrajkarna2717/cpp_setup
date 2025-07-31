
## 💻 Requirements

Before you begin, ensure you have the following tools installed:

### 🔹 For Windows (using MSYS2 - Recommended)
1. Download & install [**MSYS2**](https://www.msys2.org/)
2. Launch the **MSYS2 MinGW 64-bit** shell
3. Run the following commands:

```bash
pacman -Syu                         # Update MSYS2 packages (restart if needed)
pacman -S mingw-w64-x86_64-toolchain mingw-w64-x86_64-cmake
````

This installs:

* `g++` compiler
* `make`
* `cmake`

> ⚠️ Make sure you're using the `MINGW64` shell (`mingw64.exe`), **not** the `MSYS` or `UCRT` ones.


## 🛠 Setup & Build Instructions (Highly Detailed)

These steps will guide you from cloning the repo to compiling and running your project on any machine.

### ✅ Step 1: Clone the Repository

```bash
git clone https://github.com/yuvrajkarna2717/cpp_setup.git
cd cpp_setup
```

### ✅ Step 2: Create the Build Directory

CMake prefers out-of-source builds (keeps things clean):

```bash
mkdir build
cd build
```

### ✅ Step 3: Run CMake to Generate Build Files

```bash
cmake ..
```

* This scans `CMakeLists.txt`, checks for your compiler, and prepares a build system.
* It will fail if `cmake` or `g++` are not installed.

### ✅ Step 4: Build the Project

```bash
cmake --build .
```

* Compiles `main.cpp` into an executable (e.g., `main.exe` on Windows)
* Incremental: Only recompiles changed files.

### ✅ Step 5: Run the Executable

```bash
./main.exe    # Windows
./main        # macOS/Linux
```

---

## 🚀 Quick Rebuild & Run Using `run.sh`

Instead of running commands manually every time, you can use the helper script:

### 📄 `run.sh` Contents

```bash
#!/bin/bash
cd build || exit
cmake --build .
echo -e "\n--- Running ---\n"
./main.exe
```

### ▶️ How to Use It

1. Make it executable (only once):

```bash
chmod +x run.sh
```

2. Run the full compile + execute process:

```bash
./run.sh
```

> 📝 This script assumes you already have a `build/` directory and it’s configured via `cmake ..`. If not, run steps 2 & 3 first.

---

## 🔁 What to Do After Code Changes?

| Change Type              | What You Run                                  |
| ------------------------ | --------------------------------------------- |
| `.cpp` or `.h` modified  | `cmake --build . && ./main.exe` or `./run.sh` |
| New file / renamed file  | `cmake .. && cmake --build . && ./main.exe`   |
| `CMakeLists.txt` changed | `cmake ..` again before building              |

---

## 📂 Project Structure

```
cpp_setup/
├── CMakeLists.txt      # CMake configuration
├── main.cpp            # Entry point
├── run.sh              # Automate build + run
└── build/              # (Generated) build files & executable
```

---

## 📜 License

MIT License — free to use, modify, and distribute.

---

## 👨‍💻 Author

[Yuvraj Karna](https://github.com/yuvrajkarna27)

---

## 🌟 Support

If this project helps you, please consider ⭐ starring the repo to show your support!
