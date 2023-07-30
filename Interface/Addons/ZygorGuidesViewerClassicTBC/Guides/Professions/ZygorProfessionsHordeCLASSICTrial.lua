local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHCLASSIC") then return end
ZGV.BETASTART()
ZGV.BETAEND()
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZGV.BETASTART()
ZGV.BETAEND()
