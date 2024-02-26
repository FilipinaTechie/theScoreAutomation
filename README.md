# theScope Mobile Automation

## Introduction
This project utilizes Ruby, and Appium with Cucumber for mobile application testing. It is structured to support behavior-driven development (BDD) with an emphasis on end-to-end testing.

## Prerequisites
- Ruby 3.3.0
- Bundler  2.5.6
- Node.js v21.6.2
- npm 10.2.4
- Appium 2.5.1
- Homebrew 4.2.9 
- An iOS or Android simulator/emulator setup on your system

## Test Specification
You can find the test specification here: [Test Specification](https://docs.google.com/document/d/1IDYtmelyQIl-dXao-EQH3YAvfBvu4KSdnyfB4fjQbDI/edit?usp=)


## Getting Started

### Cloning the Repository
To clone the repository to your local machine, use the following command in your terminal:
```bash
git clone https://github.com/FilipinaTechie/theScoreAutomation.git
```

### Setting Up the Environment
1. **Install Ruby and Bundler (if not already installed):**
```bash
brew install ruby
gem install bundler
```

2. **Install Project Dependencies:**
   Navigate to the project directory and install the Ruby gems specified in the `Gemfile`:
```bash
bundle install
```

3. **Install Node.js and npm (if not already installed):**
```bash
brew install node
```

4. **Install Appium:**
```bash
npm install -g appium
```

5. **Verify Appium Installation:**
   - Use `appium-doctor` to check if all Appium dependencies are met.
   - Ensure to list available drivers `appium driver list`
   - Then install the necessary driver for your tests `appium install driver <driver_name>` 
```bash
npm install -g appium-doctor
appium-doctor --ios # For iOS setup
appium-doctor --android # For Android setup
```
Follow the recommendations provided by `appium-doctor` to ensure your setup is complete.

### Running the Project
- Ensure to define the PLATFORM (**_ios or android_**)
- Ensure to define the TEST_ENV to **sauce** if you want to run in saucelabs
To run the tests, use the following command:
```bash
PLATFORM=<platform> TEST_ENV=<test_env> bundle exec cucumber
example: PLATFORM=android TEST_ENV=sauce bundle exec cucumber
```

## Tips for Successful Setup
- Ensure Xcode is installed (for iOS) or Android Studio (for Android) for the emulator/simulator setup.
- Pay attention to the output of `appium-doctor`; it provides crucial information about missing dependencies or configurations.
- Make sure your device emulator/simulator is set up and running before executing tests.
- Regularly update your dependencies to keep up with new versions of Appium and other tools.
```