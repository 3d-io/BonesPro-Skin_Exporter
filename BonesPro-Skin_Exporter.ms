-- Copyright 2020 3d-io
-- 3D-IO Games & Video Production GmbH | Albrechtstrasse 46 | 65185 Wiesbaden | GERMANY
-- Contact: info@3d-plugin.com

macroScript BonesProSkinExport
	category:"3d-io"
	buttonText:"BonesPro->Skin-Exporter"
	toolTip:"BonesPro->SkinExport"
	icon:#("BonesProSkinExport", 1)

(
	if $ == undefined then (
		messagebox "No obejct(s) selected" title:"BonesPro->SkinExporter Alert"
	) else (
		bpInSelection = #() 
		for obj in $ do (
			for m in obj.modifiers where iskindof m BonesPro do (
				append bpInSelection m;
			)
		)
		for bp in bpInSelection do (
			bp.skin_export();
		)
	)
)
