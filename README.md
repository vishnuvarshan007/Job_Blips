Job-Based Player Blips for FiveM
Overview
This FiveM script dynamically displays player blips on the map for specific jobs, such as police and EMS, allowing team members to locate each other easily. The script is fully configurable, enabling server admins to add new jobs with custom blip properties in a hassle-free manner.

Features
Job-Specific Blips: Displays blips only for players in certain jobs (e.g., police and EMS).
Customizable Blip Properties: Configure blip color, icon (sprite), and scale for each job in the config.lua file.
Dynamic Updates: Blips are updated every 10 seconds to reflect player movement and status changes.
Player Name Display: Each blip is labeled with the corresponding player’s name.
Scalable: Easily add new jobs or modify existing ones using the simple configuration system.
Lightweight and Optimized: Designed to have minimal performance impact on clients and the server.
Requirements
FiveM Server with ESX Framework installed.
Basic knowledge of FiveM server setup to integrate the script.
Installation
Download the Script:

Clone this repository or download it as a ZIP file and extract it.
Add to Server Resources:

Place the extracted folder in your server's resources directory.
Configure Jobs:

Open the config.lua file and add or modify jobs with their respective properties:
lua
Copy code
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
Add to server.cfg:

Add the resource to your server.cfg:
plaintext
Copy code
ensure JobBasedBlips
Restart Your Server:

Restart your server to load the script.
Configuration
The script uses config.lua to manage job-specific settings. Each job can have:

Color: Determines the blip color (integer value).
Sprite: Defines the blip icon (integer value).
Scale: Adjusts the size of the blip (float value).
For example, to add a mechanic job:

lua
Copy code
['mechanic'] = {
    color = 17, -- Green
    sprite = 402, -- Wrench icon
    scale = 0.8
}
How It Works
Blip Creation:

Players in a specified job (e.g., police, EMS) will have a blip created on the map.
The blip will update dynamically every 10 seconds to reflect the player’s current position.
Server-Side Logic:

The server gathers data about all players (name, job, and coordinates) and broadcasts it to clients.
Client-Side Logic:

Each client receives the data and creates blips for team members based on their job.
Dynamic Extensibility:

Adding new jobs is as simple as editing the config.lua file.
Planned Features
Blip Visibility Toggle: Add an option for players to toggle their blip visibility on/off.
More ESX Integration: Support for extended job grades and off-duty roles.
Job-Specific Filters: Customize who can see whose blips (e.g., supervisors only).
Support
Feel free to open an issue if you encounter any bugs or need assistance.

Credits
Script Author: YourName
Framework: ESX
Contributors: Community suggestions and feedback
License
This project is licensed under the MIT License. You are free to use, modify, and distribute this script with proper attribution.
