local loadingAddon,loadingAddonNamespace = ...;
local MAJOR, MINOR = "LibContainer", 1;

if(not LibStub)then
	error(MAJOR.." requires LibStub to function!");
end

local lib = LibStub:NewLibrary(MAJOR, MINOR);

if not lib then
    error(MAJOR.." creating library with LibStub failed!");
    return
end

loadingAddonNamespace.LibContainer = lib