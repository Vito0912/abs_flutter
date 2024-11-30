
# Project Setup

### Prerequisites
- **Flutter 3.24.4**<sup>1</sup>
- **Testing Device:** Either a physical device or an emulator. Ensure that you test your changes on at least one of these platforms: **Windows** or **Android.**
- *(Optional)* **Flutter Plugin** for your IDE, with **dart format** and **import sorting** enabled.
- *(Optional)* **Android Studio** to verify if the Android build works correctly.

<sup>1</sup> If updating Flutter, ensure compatibility with the specified version. If the version is incompatible, please contact me to update the build process.

---

### Important Guidelines

- **Dependency Policy:**
    - Adding dependencies with proprietary licenses is **not allowed**.
    - All dependencies must be **open-source** with a permissive license allowing usage in this project.
    - Dependencies must be compatible across all platforms (**Android, Windows, Linux, web, iOS, macOS**) or must not crash unsupported platforms.


- **Build Runner(!):**
    - Do **not** run `dart run build_runner build --delete-conflicting-outputs` without specifying the `--build-filter="./lib/xxx/**"` flag. Doing so may overwrite custom code critical to the old API being replaced.


- **Build Commands by Directory:**  
  For changes in the `lib/models/` directory:
  ```bash
  dart run build_runner build --build-filter="./lib/models/**" --delete-conflicting-outputs
  ```
  For changes in the `lib/api/` directory:
  ```bash
  dart run build_runner build --build-filter="./lib/api/**" --delete-conflicting-outputs
  ```

---

### Getting Started
1. Clone the repository.
2. Install dependencies:
   ```bash
   flutter pub get
   ```  
3. Start the application:
   ```bash
   flutter run
   ```  
4. **Happy coding!**

---

### Troubleshooting
If build errors occur related to files in the `lib/api/` or `lib/models/` directories, try the following steps:

```bash
flutter clean
flutter pub get
dart run build_runner build --build-filter="./lib/api/**" --delete-conflicting-outputs
dart run build_runner build --build-filter="./lib/models/**" --delete-conflicting-outputs
```

---

### Submitting a Pull Request

Before submitting a pull request, **alphabetically sort the keys** in the `en.json` (or any edited `.json` files). You can use the following commands to do this:

1. Install `arb_utils` globally:
   ```bash
   dart pub global activate arb_utils
   ```  

2. Generate metadata and sort keys:
   ```bash
   arb_utils generate-meta .\lib\l10n\intl_en.arb
   arb_utils sort .\lib\l10n\intl_en.arb
   ```

---