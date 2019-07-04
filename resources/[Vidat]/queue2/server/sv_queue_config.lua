Config = {}

-- priority list can be any identifier. (hex steamid, steamid32, ip) Integer = power over other people with priority
-- a lot of the steamid converting websites are broken rn and give you the wrong steamid. I use https://steamid.xyz/ with no problems.
-- you can also give priority through the API, read the examples/readme.
Config.Priority = {
    ["steam:110000111fc352b"] = 100, -- AJ 
    ["steam:110000107a78e07"] = 100, -- Arash- Owner
    ["steam:11000011783a55b"] = 85, -- Arman Semi-Dev
    ["steam:11000010a1b83df"] = 100, -- MaMad Owner
    ["steam:11000010494a934"] = 80, -- Obi Vika
    ["steam:110000118eae7af"] = 80, -- hooman :| dahanamo gaiidi :|
    ["steam:11000011926c808"] = 80, -- Armin.luckynoob medic
    ["steam:11000010f0a6439"] = 70, -- Peyman- Admin
    ["steam:110000115e0be8a"] = 70, -- MehdiJokerPir- Rais medic
    ["steam:110000111ca680b"] = 70, -- Bigezmoge streamer
    ["steam:11000011ae643c7"] = 70, -- amberat streamer good RP and funny guy
    ["steam:110000102c04e96"] = 70, -- PythQn
    ["steam:110000111236158"] = 85, -- Matin_Dark Semi-Dev
    ["steam:11000011c6ff036"] = 70, -- gift from arash
    ["steam:11000010b4600ae"] = 70, -- Mr Toxic streamer
    ["steam:110000133ffcac3"] = 70, -- Mr X
    ["steam:110000133201d43"] = 70, -- Moonlight medic khoob
    ["steam:11000010657ab8f"] = 70, -- Ali Besi
    -- ["steam:1100001196679b9"] = 70, -- zartosht streamer
    ["steam:11000010b421c27"] = 70, -- AmoBig streamer
    ["steam:110000139d27238"] = 70, -- Mostafa hojati
    ["steam:11000011a939660"] = 70, -- RaRa Avis (gift from mamad)
    -- ["steam:110000137a8ae0e"] = 70, -- Refiqe arash o Ebi
    -- ["steam:110000111eff7bf"] = 70, -- Mazel Streamer
    -- ["steam:11000011a3f0a06"] = 70, --game_over streamer
    ['steam:1100001175a3989'] = 70, -- amroz
    ['steam:11000010daa7aba'] = 70, -- sec shot
    ['steam:11000010c235ed7'] = 85, -- lightpower Semi-Dev
    ['steam:110000110d40cf8'] = 70, -- Rais mechanic RVN
    ['steam:110000113d8b713'] = 70, -- Majestic
    ['steam:11000010900dc25'] = 70, -- King mml
    ['steam:110000104a518bd'] = 70, -- Alixreza
    ['steam:110000107069137'] = 70, -- Alixreza
    ['steam:11000011926282d'] = 70, -- noclip
    ['steam:11000011cd6e829'] = 70, -- TwiTch.Tv/Bugmazel

    -- [''] = 70,
    ["ip:127.0.0.0"] = 85
}

-- require people to run steam
Config.RequireSteam = false

-- "whitelist" only server
Config.PriorityOnly = false

-- disables hardcap, should keep this true
Config.DisableHardCap = true

-- will remove players from connecting if they don't load within: __ seconds; May need to increase this if you have a lot of downloads.
-- i have yet to find an easy way to determine whether they are still connecting and downloading content or are hanging in the loadscreen.
-- This may cause session provider errors if it is too low because the removed player may still be connecting, and will let the next person through...
-- even if the server is full. 10 minutes should be enough
Config.ConnectTimeOut = 600

-- will remove players from queue if the server doesn't recieve a message from them within: __ seconds
Config.QueueTimeOut = 90

-- will give players temporary priority when they disconnect and when they start loading in
Config.EnableGrace = true

-- how much priority power grace time will give
Config.GracePower = 5

-- how long grace time lasts in seconds
Config.GraceTime = 180

-- on resource start, players can join the queue but will not let them join for __ milliseconds
-- this will let the queue settle and lets other resources finish initializing
Config.JoinDelay = 30000

-- will show how many people have temporary priority in the connection message
Config.ShowTemp = false

-- simple localization
Config.Language = {
    joining = "\xF0\x9F\x8E\x89Joining...",
    connecting = "\xE2\x8F\xB3Connecting...",
    idrr = "\xE2\x9D\x97[Queue] Error: Couldn't retrieve any of your id's, try restarting.",
    err = "\xE2\x9D\x97[Queue] There was an error",
    pos = "\xF0\x9F\x90\x8CYou are %d/%d in queue \xF0\x9F\x95\x9C%s",
    connectingerr = "\xE2\x9D\x97[Queue] Error: Error adding you to connecting list",
    timedout = "\xE2\x9D\x97[Queue] Error: Timed out?",
    wlonly = "\xE2\x9D\x97[Queue] You must be whitelisted to join this server",
    steam = "\xE2\x9D\x97 [Queue] Error: Steam must be running"
}
