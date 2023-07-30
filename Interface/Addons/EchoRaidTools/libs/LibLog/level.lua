local LibLog = LibStub:GetLibrary("LibLog")

LibLog.Level = {
    DEBUG = 1,
    INFO = 2,
    WARN = 3,
    ERROR = 4,
    FATAL = 5,
    NONE = 6
}

function LibLog:GetLevelName(level)
   if level == self.Level.DEBUG then
      return "DEBUG"
   elseif level == self.Level.INFO then
      return "INFO"
   elseif level == self.Level.WARN then
      return "WARN"
   elseif level == self.Level.ERROR then
      return "ERROR"
   elseif level == self.Level.FATAL then
      return "FATAL"
   elseif level == self.Level.NONE then
      return "NONE"
   end

   return "???"
end