# Job-Based Player Blips for FiveM

## Overview
This FiveM script dynamically displays player blips on the map for specific jobs, such as police and EMS, allowing team members to locate each other easily. The script is fully configurable, enabling server admins to add new jobs with custom blip properties in a hassle-free manner.

---

## Features
- **Job-Specific Blips**: Displays blips only for players in certain jobs (e.g., police and EMS).
- **Customizable Blip Properties**: Configure blip color, icon (sprite), and scale for each job in the `config.lua` file.
- **Dynamic Updates**: Blips are updated every 10 seconds to reflect player movement and status changes.
- **Player Name Display**: Each blip is labeled with the corresponding player’s name.
- **Scalable**: Easily add new jobs or modify existing ones using the simple configuration system.
- **Lightweight and Optimized**: Designed to have minimal performance impact on clients and the server.

---

## Requirements
- **FiveM Server** with ESX Framework installed.
- Basic knowledge of FiveM server setup to integrate the script.

---

## Installation

1. **Download the Script**:
   - Clone this repository or download it as a ZIP file and extract it.

2. **Add to Server Resources**:
   - Place the extracted folder in your server's `resources` directory.

3. **Configure Jobs**:
   - Open the `config.lua` file and add or modify jobs with their respective properties:
     ```lua
     Config.BlipJobs = {
         ['police'] = {
             color = 3, -- Blue
             sprite = 60, -- Badge icon
             scale = 0.8
         },
         ['ems'] = {
             color = 1, -- Red
             sprite = 61, -- Medical icon
             scale = 0.8
         }
     }
     ```

4. **Add to `server.cfg`**:
   - Add the resource to your `server.cfg`:
     ```
     ensure JobBasedBlips
     ```

5. **Restart Your Server**:
   - Restart your server to load the script.

---

## Configuration
The script uses `config.lua` to manage job-specific settings. Each job can have:
- **Color**: Determines the blip color (integer value).
- **Sprite**: Defines the blip icon (integer value).
- **Scale**: Adjusts the size of the blip (float value).

For example, to add a `mechanic` job:
```lua
['mechanic'] = {
    color = 17, -- Green
    sprite = 402, -- Wrench icon
    scale = 0.8
}
