To automatically pause Spotify music when macOS Text to Speech (TTS) starts, you can use a combination of Automator, AppleScript, and a third-party tool called Keyboard Maestro. Here’s a step-by-step guide:

### Step 1: Install Keyboard Maestro
1. **Download and install** [Keyboard Maestro](https://www.keyboardmaestro.com/main/).
2. **Open Keyboard Maestro** and grant it necessary permissions in System Preferences if prompted.

### Step 2: Create an Automator Service to Trigger the Pause
1. **Open Automator** (found in Applications).
2. Choose **Service** as the type of document.
3. Set the **Service receives selected** to **no input** in **any application**.
4. In the left panel, search for **Run AppleScript** and drag it to the workflow area.
5. Replace the default script with the following AppleScript that pauses Spotify:

    ```applescript
    tell application "Spotify"
        if player state is playing then
            pause
        end if
    end tell
    ```

6. Save the service as **Pause Spotify**.

### Step 3: Create a Keyboard Maestro Macro
1. **Open Keyboard Maestro** and create a new macro.
2. Name the macro **Pause Spotify on TTS**.
3. Add a **Trigger** to the macro:
    - Click on **New Trigger**.
    - Select **USB Device Key Trigger**.
    - Choose **Text to Speech** from the list of available devices.
4. Add an **Action** to the macro:
    - Click on **New Action**.
    - Select **Execute an AppleScript**.
    - Enter the following AppleScript:

    ```applescript
    tell application "Spotify"
        if player state is playing then
            pause
        end if
    end tell
    ```

### Step 4: Create a Resume Macro
1. **Create another macro** in Keyboard Maestro.
2. Name the macro **Resume Spotify after TTS**.
3. Add a **Trigger** to the macro:
    - Click on **New Trigger**.
    - Select **USB Device Key Trigger**.
    - Choose **Text to Speech** from the list of available devices.
    - Set the **Trigger** to fire when the device is **disconnected**.
4. Add an **Action** to the macro:
    - Click on **New Action**.
    - Select **Execute an AppleScript**.
    - Enter the following AppleScript:

    ```applescript
    tell application "Spotify"
        play
    end tell
    ```

### Step 5: Test the Setup
1. **Open Spotify** and start playing music.
2. **Trigger Text to Speech** on your Mac (e.g., by selecting text and choosing "Start Speaking" from the context menu).
3. **Verify** that Spotify pauses when TTS starts and resumes when TTS stops.

By following these steps, you should have a system that automatically pauses Spotify when macOS Text to Speech starts and resumes playback when TTS stops.