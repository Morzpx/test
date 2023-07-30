local MAJOR, MINOR = "LibColorNames", 1;

if(not LibStub)then
	error(MAJOR.." requires LibStub to function!");
end

local lib = LibStub:NewLibrary(MAJOR, MINOR);

if not lib then
    error(MAJOR.." creating library with LibStub failed!");
    return
end

local named_colors = {
  aliceblue = "F0F8FF",
  antiquewhite = "FAEBD7",
  aqua = "00FFFF",
  aquamarine = "7FFFD4",
  artifact = "E6CC80",
  azure = "F0FFFF",
  beige = "F5F5DC",
  bisque = "FFE4C4",
  black = "000000",
  blanchedalmond = "FFEBCD",
  blue = "0000FF",
  blueviolet = "8A2BE2",
  brown = "A52A2A",
  burlywood = "DEB887",
  cadetblue = "5F9EA0",
  charteuse = "7FFF00",
  chocolate = "D2691E",
  common = "FFFFFF",
  coral = "FF7F50",
  cornflowerblue = "6495ED",
  cornsilk = "FFF8DC",
  crimson = "DC143C",
  cyan = "00FFFF",
  darkblue = "00008B",
  darkcyan = "008B8B",
  darkgoldenrod = "B8860B",
  darkgray = "A9A9A9",
  darkgrey = "A9A9A9",
  darkgreen = "006400",
  darkkhaki = "BDB76B",
  darkmagenta = "8B008B",
  darkolivegreen = "556B2F",
  darkorange = "FF8C00",
  darkorchid = "9932CC",
  darkred = "8B0000",
  darksalmon = "E9967A",
  darkseagreen = "8FBC8F",
  darkslateblue = "483D8B",
  darkslategray = "2F4F4F",
  darkslategrey = "2F4F4F",
  darkturquoise = "00CED1",
  darkviolet = "9400D3",
  deathknight = "C41E3A",
  deeppink = "FF1493",
  deepskyblue = "008FFF",
  demonhunter = "A330C9",
  dimgray = "696969",
  dimgrey = "696969",
  dodgerblue = "1E90FF",
  druid = "FF7C0A",
  epic = "A335EE",
  firebrick = "B22222",
  floralwhite = "FFFAF0",
  forestgreen = "228B22",
  fuchsia = "FF00FF",
  gainsboro = "DCDCDC",
  ghostwhite = "F8F8FF",
  gold = "FFD700",
  goldenrod = "DAA520",
  gray = "808080",
  grey = "808080",
  green = "008000",
  greenyellow = "ADFF2F",
  heirloom = "00CCFF",
  honeydew = "F0FFF0",
  hotpink = "FF69B4",
  hunter = "AAD372",
  indianred = "CD5C5C",
  indigo = "4B0082",
  ivory = "FFFFF0",
  khaki = "F0E68C",
  lavender = "E6E6FA",
  lavenderblush = "FFF0F5",
  lawngreen = "7CFC00",
  legendary = "FF8000",
  lemonchiffon = "FFFACD",
  lightblue = "ADD8E6",
  lightcoral = "F08080",
  lightcyan = "E0FFFF",
  lightgoldenrodyellow = "FAFAD2",
  lightgrey = "D3D3D3",
  lightgray = "D3D3D3",
  lightgreen = "90EE90",
  lightpink = "FFB6C1",
  lightsalmon = "FFA07A",
  lightseagreen = "20B2AA",
  lightskyblue = "87CEFA",
  lightslategray = "778899",
  lightslategrey = "778899",
  lightsteelblue = "B0C4DE",
  lightyellow = "FFFFE0",
  lime = "00FF00",
  limegreen = "32CD32",
  linen = "FAF0E6",
  mage = "3FC7EB",
  magenta = "FF00FF",
  maroon = "800000",
  mediumaquamarine = "66CDAA",
  mediumblue = "0000CD",
  mediumorchid = "BA55D3",
  mediumpurple = "9370DB",
  mediumseagreen = "3CB371",
  mediumslateblue = "7B68EE",
  mediumspringgreen = "00FA9A",
  mediumturquoise = "48D1CC",
  mediumvioletred = "C71585",
  midnightblue = "191970",
  mintcream = "F5FFFA",
  mistyrose = "FFE4E1",
  moccasin = "FFE4B5",
  monk = "00FF98",
  navajowhite = "FFDEAD",
  navyblue = "000080",
  oldlace = "FDF5E6",
  olive = "808000",
  olivedarb = "6B8E23",
  orange = "FFA500",
  orangered = "FF4500",
  orchid = "DA70D6",
  paladin = "F48CBA",
  palegoldenrod = "EEE8AA",
  palegreen = "98FB98",
  paleturquoise = "AFEEEE",
  palevioletred = "DB7093",
  papayawhip = "FFEFD5",
  peachpuff = "FFDAB9",
  peru = "CD853F",
  pink = "FFC0CB",
  plum = "DDA0DD",
  poor = "9D9D9D",
  powderblue = "B0E0E6",
  priest = "FFFFFF",
  purple = "800080",
  rare = "0070DD",
  rebeccapurple = "663399",
  red = "FF0000",
  rogue = "FFF468",
  rosybrown = "BC8F8F",
  royalblue = "4169E1",
  saddlebrown = "8B4513",
  salmon = "FA8072",
  sandybrown = "F4A460",
  seagreen = "2E8B57",
  seashell = "FFF5EE",
  shaman = "0070DD",
  sienna = "A0522D",
  silver = "C0C0C0",
  skyblue = "87CEEB",
  slateblue = "6A5ACD",
  slategray = "708090",
  slategrey = "708090",
  snow = "FFFAFA",
  springgreen = "00FF7F",
  steelblue = "4682B4",
  tan = "D2B48C",
  teal = "008080",
  thistle = "D8BFD8",
  tomato = "FF6347",
  turquoise = "40E0D0",
  uncommon = "1EFF00",
  violet = "EE82EE",
  warlock = "8788EE",
  warrior = "C69B6D",
  wheat = "F5DEB3",
  white = "FFFFFF",
  whitesmoke = "F5F5F5",
  yellow = "FFFF00",
  yellowgreen = "9ACD32"
}

local hex_values = {
    ["0"] = 0,
    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
    ["4"] = 4,
    ["5"] = 5,
    ["6"] = 6,
    ["7"] = 7,
    ["8"] = 8,
    ["9"] = 9,
    ["a"] = 10,
    ["b"] = 11,
    ["c"] = 12,
    ["d"] = 13,
    ["e"] = 14,
    ["f"] = 15
}

local function convertHexToInt(hex)
    hex = hex or ""

    while hex:len() < 2 do
        hex = "0" .. hex
    end

    local first = hex:sub(1, 1)
    local second = hex:sub(2, 2)

    return hex_values[first:lower()] * 16 + hex_values[second:lower()]
end

function lib:Exists(name)
  return named_colors[name:lower()] ~= nil
end

function lib:Get(name)
  return named_colors[name:lower()]
end

function lib:Color(color, text)
  if not lib:Exists(color) then
	return text
  end

  return "|cFF" .. lib:Get(color) .. text .. "|r"
end

function lib:GetIntRGB(color)
    local hex = lib:Get(color)
    if not hex then
        return
    end

    local red = convertHexToInt(hex:sub(1, 2))
    local green = convertHexToInt(hex:sub(3, 4))
    local blue = convertHexToInt(hex:sub(5, 6))

    return red, green, blue
end

function lib:GetFloatRGB(color)
    if not lib:Exists(color) then
        return 0
    end

    local red, green, blue = lib:GetIntRGB(color)
    return red/255, green/255, blue/255
end

function lib:Brightness(color)
    if not lib:Exists(color) then
        return 0
    end

    local red, green, blue = lib:GetIntRGB(color)
    return (red + green + blue) / (3 * 255)
end

function lib:GetNames()
    local name_list = {}
    for name, value in pairs(named_colors) do
        table.insert(name_list, name)
    end

    table.sort(name_list, function(a, b) 
        return a < b
    end)

    return name_list
end