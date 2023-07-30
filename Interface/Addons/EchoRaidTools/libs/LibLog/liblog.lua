local MAJOR, MINOR = "LibLog", 1;

if(not LibStub)then
	error(MAJOR.." requires LibStub to function!");
end

local LibLog = LibStub:NewLibrary(MAJOR, MINOR);

if not LibLog then
    error(MAJOR.." creating library with LibStub failed!");
    return
end

LibLog.HistorySize = 1000