availableTuningMarkers = {
	--X, Y, Z, Vehicle Rotation (Use /markerpos to get perfect position and rotation (The command in sourceC.lua last row))
	{-30.694255828857, 1063.3110351562, 19.800998687744, 91.763275146484}, -- RS Workshop
}

tuningMenu = {
	[1] = {
		["categoryName"] = getLocalizedText("menu.performance"),
		["subMenu"] = {
			[1] = {
				["categoryName"] = getLocalizedText("menu.performance.engine"),
				["cameraSettings"] = {"bonnet_dummy", 110, 15, 6, true}, -- component, offsetX, offsetZ, zoom, hide component
				["upgradeData"] = "engine",
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 200, ["tuningData"] = {{"engineAcceleration"}, {"maxVelocity"}}},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.1"), ["tuningPrice"] = 10000, ["tuningData"] = {{"engineAcceleration", 2}, {"maxVelocity", 10}}},
					[3] = {["categoryName"] = getLocalizedText("tuningPack.2"), ["tuningPrice"] = 100000, ["tuningData"] = {{"engineAcceleration", 6}, {"maxVelocity", 20}}},
					[4] = {["categoryName"] = getLocalizedText("tuningPack.3"), ["tuningPrice"] = 500000, ["tuningData"] = {{"engineAcceleration", 8}, {"maxVelocity", 30}}}
				}
			},
			[2] = {
				["categoryName"] = getLocalizedText("menu.performance.turbo"),
				["cameraSettings"] = {"bonnet_dummy", 110, 15, 6, true},
				["upgradeData"] = "turbo",
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 50, ["tuningData"] = {{"engineInertia"}}},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.1"), ["tuningPrice"] = 6000, ["tuningData"] = {{"engineInertia", -10}}},
					[3] = {["categoryName"] = getLocalizedText("tuningPack.2"), ["tuningPrice"] = 12000, ["tuningData"] = {{"engineInertia", -20}}},
					[4] = {["categoryName"] = getLocalizedText("tuningPack.3"), ["tuningPrice"] = 80000, ["tuningData"] = {{"engineInertia", -30}}}
				}
			},
			[3] = {
				["categoryName"] = getLocalizedText("menu.performance.nitro"),
				["cameraSettings"] = {"boot_dummy", -65, 15, 6, true},
				["upgradeData"] = "nitro",
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.remove"), ["tuningPrice"] = 0, ["tuningData"] = 0},
					[2] = {["categoryName"] = "25%", ["tuningPrice"] = 10000, ["tuningData"] = 25},
					[3] = {["categoryName"] = "50%", ["tuningPrice"] = 20000, ["tuningData"] = 50},
					[4] = {["categoryName"] = "75%", ["tuningPrice"] = 50000, ["tuningData"] = 75},
					[5] = {["categoryName"] = "100%", ["tuningPrice"] = 100000, ["tuningData"] = 100}
				}
			},
			[4] = {
				["categoryName"] = getLocalizedText("menu.performance.tires"),
				["cameraSettings"] = {"wheel_rb_dummy", 60, 10, 4},
				["upgradeData"] = "tires",
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 50, ["tuningData"] = {{"tractionMultiplier"}, {"tractionLoss"}}},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.1"), ["tuningPrice"] = 2000, ["tuningData"] = {{"tractionMultiplier", 0.05}, {"tractionLoss", 0.02}}},
					[3] = {["categoryName"] = getLocalizedText("tuningPack.2"), ["tuningPrice"] = 5000, ["tuningData"] = {{"tractionMultiplier", 0.1}, {"tractionLoss", 0.03}}},
					[4] = {["categoryName"] = getLocalizedText("tuningPack.3"), ["tuningPrice"] = 10000, ["tuningData"] = {{"tractionMultiplier", 0.15}, {"tractionLoss", 0.04}}}
				}
			},
			[5] = {
				["categoryName"] = getLocalizedText("menu.performance.brakes"),
				["cameraSettings"] = {"wheel_rf_dummy", 35, 5, 2, true},
				["upgradeData"] = "brakes",
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 50, ["tuningData"] = {{"brakeDeceleration"}, {"brakeBias"}}},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.1"), ["tuningPrice"] = 1000, ["tuningData"] = {{"brakeDeceleration", 0.05}, {"brakeBias", 0.1}}},
					[3] = {["categoryName"] = getLocalizedText("tuningPack.2"), ["tuningPrice"] = 40000, ["tuningData"] = {{"brakeDeceleration", 0.1}, {"brakeBias", 0.175}}},
					[4] = {["categoryName"] = getLocalizedText("tuningPack.3"), ["tuningPrice"] = 60000, ["tuningData"] = {{"brakeDeceleration", 0.15}, {"brakeBias", 0.25}}}
				}
			},
			[6] = {
				["categoryName"] = getLocalizedText("menu.performance.mass"),
				["upgradeData"] = "mass",
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 50, ["tuningData"] = {{"mass"}}},
					[2] = {["categoryName"] = ("-25%"), ["tuningPrice"] = 100, ["tuningData"] = {{"mass", -1}}},
					[3] = {["categoryName"] = ("-50%"), ["tuningPrice"] = 500, ["tuningData"] = {{"mass", -2}}},
					[4] = {["categoryName"] = ("-75%"), ["tuningPrice"] = 1000, ["tuningData"] = {{"mass", -3}}}
				}
			},
			[7] = {
				["categoryName"] = getLocalizedText("menu.performance.suspension"),
				["cameraSettings"] = {"chassis_dummy", 0, 3, 10},
	            ["upgradeData"] = "suspension",
				["subMenu"] = {
                    [1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 50, ["tuningData"] = {{"suspensionLowerLimit"}}},
					[2] = {["categoryName"] = getLocalizedText("tuningsus.1"), ["tuningPrice"] = 500, ["tuningData"] = {{"suspensionLowerLimit", -0.08}}},
					[3] = {["categoryName"] = getLocalizedText("tuningsus.2"), ["tuningPrice"] = 1000, ["tuningData"] = {{"suspensionLowerLimit", 0.05}}},
					[4] = {["categoryName"] = getLocalizedText("tuningsus.3"), ["tuningPrice"] = 5000, ["tuningData"] = {{"suspensionLowerLimit", 0.1}}},
				}
			},
			[8] = {
				["categoryName"] = getLocalizedText("menu.gear"),
				["cameraSettings"] = {"bonnet_dummy", 110, 15, 6, true},
	            ["upgradeData"] = "gear",
				["subMenu"] = {
				    [1] = {["categoryName"] = getLocalizedText("tuningPackDBL.0"), ["tuningPrice"] = 50, ["tuningData"] = {{"numberOfGears"}}},
                    [2] = {["categoryName"] = getLocalizedText("tuningPackDBL.1"), ["tuningPrice"] = 60000, ["tuningData"] = {{"numberOfGears", 1}}}
				}
			},
			[9] = {
				["categoryName"] = getLocalizedText("menu.armor"),
	            ["upgradeData"] = "armor",
				["subMenu"] = {
				    [1] = {["categoryName"] = getLocalizedText("tuningPackDBL.0"), ["tuningPrice"] = 50, ["tuningData"] = {{"collisionDamageMultiplier"}}},
                    [2] = {["categoryName"] = getLocalizedText("tuningPackb.1"), ["tuningPrice"] = 50000, ["tuningData"] = {{"collisionDamageMultiplier", -0.2}}},
					[3] = {["categoryName"] = getLocalizedText("tuningPackb.2"), ["tuningPrice"] = 90000, ["tuningData"] = {{"collisionDamageMultiplier", -0.4}}},
					[4] = {["categoryName"] = getLocalizedText("tuningPackb.3"), ["tuningPrice"] = 160000, ["tuningData"] = {{"collisionDamageMultiplier", -0.4}}}, 
				}
			},
		}
	},
	[2] = {
	["categoryName"] = getLocalizedText("menu.123"),
	["subMenu"] = {
			[1] = {
				["categoryName"] = getLocalizedText("menu.extras.dbl"),
				["cameraSettings"] = {"wheel_lb_dummy", -65, 4, 5},
	            ["upgradeData"] = "dbl",
				["subMenu"] = {
                    [1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 50, ["tuningData"] = {{"modelFlags"}}},
					[2] = {["categoryName"] = getLocalizedText("tuningPackDBL.1"), ["tuningPrice"] = 500, ["tuningData"] = {{"modelFlags", 2105344}}} 
				}
			},
		}
	},
	[3] = {
		["categoryName"] = getLocalizedText("menu.optical"),
		["availableUpgrades"] = {}, -- automatic getting optical upgrades to selected category
		["subMenu"] = {
			[1] = {["categoryName"] = getLocalizedText("menu.optical.frontBumper"), ["upgradeSlot"] = 14, ["tuningPrice"] = 5000, ["cameraSettings"] = {"bump_front_dummy", 130, 10, 6}},
			[2] = {["categoryName"] = getLocalizedText("menu.optical.rearBumper"), ["upgradeSlot"] = 15, ["tuningPrice"] = 5000, ["cameraSettings"] = {"door_lf_dummy", -65, 3, 8}},
			[3] = {["categoryName"] = getLocalizedText("menu.optical.sideSkirt"), ["upgradeSlot"] = 3, ["tuningPrice"] = 600, ["cameraSettings"] = {"ug_wing_right", 65, 3, 4}},
			[4] = {["categoryName"] = getLocalizedText("menu.optical.roofScoop"), ["upgradeSlot"] = 7, ["tuningPrice"] = 700},
			[5] = {["categoryName"] = getLocalizedText("menu.optical.exhaust"), ["upgradeSlot"] = 13, ["tuningPrice"] = 3000, ["cameraSettings"] = {"wheel_lb_dummy", -65, 4, 5}},
			[6] = {["categoryName"] = getLocalizedText("menu.optical.spoiler"), ["upgradeSlot"] = 2, ["tuningPrice"] = 6000, ["cameraSettings"] = {"boot_dummy", -65, 3, 8}},
			[7] = {["categoryName"] = getLocalizedText("menu.optical.wheels"), ["upgradeSlot"] = 12, ["tuningPrice"] = 15000, ["cameraSettings"] = {"chassis_dummy", 52, 5, 10}},	
			[8] = {["categoryName"] = getLocalizedText("menu.optical.hood"), ["upgradeSlot"] = 0, ["tuningPrice"] = 2000},
			[9] = {["categoryName"] = getLocalizedText("menu.optical.hoodScoop"), ["upgradeSlot"] = 1, ["tuningPrice"] = 2000},			
			[10] = {["categoryName"] = getLocalizedText("menu.optical.frontBullars"), ["upgradeSlot"] = 4, ["tuningPrice"] = 5000, ["cameraSettings"] = {"bump_front_dummy", 130, 10, 6}},
			[11] = {["categoryName"] = getLocalizedText("menu.optical.rearBullars"), ["upgradeSlot"] = 5, ["tuningPrice"] = 5000, ["cameraSettings"] = {"door_lf_dummy", -65, 3, 8}},
			[12] = {["categoryName"] = getLocalizedText("menu.optical.misc"), ["upgradeSlot"] = 16, ["tuningPrice"] = 2000, ["cameraSettings"] = {"door_lf_dummy", -65, 3, 8}},
			[13] = {["categoryName"] = getLocalizedText("menu.optical.headlight"), ["upgradeSlot"] = 6, ["tuningPrice"] = 300, ["cameraSettings"] = {"bonnet_dummy", 90, 3, 13}},
			[14] = {["categoryName"] = getLocalizedText("menu.optical.hidraulics"), ["upgradeSlot"] = 9, ["tuningPrice"] = 15000},
			[15] = { -- custom optical item
				["categoryName"] = "Suspensión de Aire (/airride 0-5)",
				["cameraSettings"] = {"wheel_rf_dummy", 35, 5, 2, true},
				["upgradeSlot"] = 17,
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.remove"), ["tuningPrice"] = 0, ["tuningData"] = false},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.install"), ["tuningPrice"] = 2000000, ["tuningData"] = true}
				}
			},
			[16] = { -- custom optical item
				["categoryName"] = getLocalizedText("menu.optical.lampColor"),
				["cameraSettings"] = {"bonnet_dummy", 90, 3, 13},
				["upgradeSlot"] = 18,
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("menu.optical.lampColor"), ["tuningPrice"] = 2500, ["tuningData"] = "headlight"},
				}
			},
			[17] = { -- custom optical item
				["categoryName"] = "Neon (/neon)",
				["cameraSettings"] = {"chassis_dummy", 0, 3, 10},
				["upgradeSlot"] = 19,
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.remove"), ["tuningPrice"] = 50, ["tuningData"] = false},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.optical.neon.1"), ["tuningPrice"] = 50000, ["tuningData"] = "white"},
					[3] = {["categoryName"] = getLocalizedText("tuningPack.optical.neon.2"), ["tuningPrice"] = 50000, ["tuningData"] = "blue"},
					[4] = {["categoryName"] = getLocalizedText("tuningPack.optical.neon.3"), ["tuningPrice"] = 50000, ["tuningData"] = "green"},
					[5] = {["categoryName"] = getLocalizedText("tuningPack.optical.neon.4"), ["tuningPrice"] = 50000, ["tuningData"] = "red"},
					[6] = {["categoryName"] = getLocalizedText("tuningPack.optical.neon.5"), ["tuningPrice"] = 50000, ["tuningData"] = "yellow"},
					[7] = {["categoryName"] = getLocalizedText("tuningPack.optical.neon.6"), ["tuningPrice"] = 50000, ["tuningData"] = "pink"},
					[8] = {["categoryName"] = getLocalizedText("tuningPack.optical.neon.7"), ["tuningPrice"] = 50000, ["tuningData"] = "orange"},
					[9] = {["categoryName"] = getLocalizedText("tuningPack.optical.neon.8"), ["tuningPrice"] = 50000, ["tuningData"] = "lightblue"},
					[10] = {["categoryName"] = getLocalizedText("tuningPack.optical.neon.9"), ["tuningPrice"] = 50000, ["tuningData"] = "rasta"},
					[11] = {["categoryName"] = getLocalizedText("tuningPack.optical.neon.10"), ["tuningPrice"] = 50000, ["tuningData"] = "ice"},
				}
			},
		}
	},
	[4] = {
		["categoryName"] = getLocalizedText("menu.extras"),
		["subMenu"] = {
			[1] = {
				["categoryName"] = getLocalizedText("menu.extras.frontWheelSize"),
				["cameraSettings"] = {"bump_front_dummy", 105, 5, 5, true},
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.wheelSize.veryNarrow"), ["tuningPrice"] = 20000, ["tuningData"] = "verynarrow"},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.wheelSize.narrow"), ["tuningPrice"] = 10000, ["tuningData"] = "narrow"},
					[3] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 5000, ["tuningData"] = "default"},
					[4] = {["categoryName"] = getLocalizedText("tuningPack.wheelSize.wide"), ["tuningPrice"] = 10000, ["tuningData"] = "wide"},
					[5] = {["categoryName"] = getLocalizedText("tuningPack.wheelSize.veryWide"), ["tuningPrice"] = 20000, ["tuningData"] = "verywide"}
				}
			},
			[2] = {
				["categoryName"] = getLocalizedText("menu.extras.rearWheelSize"),
				["cameraSettings"] = {"bump_rear_dummy", -90, 5, 5, true},
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.wheelSize.veryNarrow"), ["tuningPrice"] = 20000, ["tuningData"] = "verynarrow"},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.wheelSize.narrow"), ["tuningPrice"] = 10000, ["tuningData"] = "narrow"},
					[3] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 5000, ["tuningData"] = "default"},
					[4] = {["categoryName"] = getLocalizedText("tuningPack.wheelSize.wide"), ["tuningPrice"] = 10000, ["tuningData"] = "wide"},
					[5] = {["categoryName"] = getLocalizedText("tuningPack.wheelSize.veryWide"), ["tuningPrice"] = 20000, ["tuningData"] = "verywide"}
				}
			},
			[3] = {
				["categoryName"] = getLocalizedText("menu.extras.offroad"),
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 1500, ["tuningData"] = "default"},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.offroad.dirt"), ["tuningPrice"] = 15000, ["tuningData"] = "dirt"},
					[3] = {["categoryName"] = getLocalizedText("tuningPack.offroad.sand"), ["tuningPrice"] = 15000, ["tuningData"] = "sand"}
				}
			},
			[4] = {
				["categoryName"] = getLocalizedText("menu.extras.driveType"),
				["propertyName"] = "driveType",
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.driveType.front"), ["tuningPrice"] = 10000, ["tuningData"] = "fwd"},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.driveType.all"), ["tuningPrice"] = 100000, ["tuningData"] = "awd"},
					[3] = {["categoryName"] = getLocalizedText("tuningPack.driveType.rear"), ["tuningPrice"] = 50000, ["tuningData"] = "rwd"}
				}
			},
			[5] = {
				["categoryName"] = getLocalizedText("menu.extras.bulletproofTires"),
				["cameraSettings"] = {"wheel_rb_dummy", 60, 10, 4},
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 0, ["tuningData"] = false},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.bulletproofTires"), ["tuningPrice"] = 85000, ["tuningData"] = true}
				}
			},
			[6] = {
				["categoryName"] = getLocalizedText("menu.extras.lsdDoor"),
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 0, ["tuningData"] = false},
					[2] = {["categoryName"] = getLocalizedText("menu.extras.lsdDoor"), ["tuningPrice"] = 135000, ["tuningData"] = true}
				}
			},
			[7] = {
				["categoryName"] = getLocalizedText("menu.extras.steeringLock"),
				["propertyName"] = "steeringLock",
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.0"), ["tuningPrice"] = 150, ["tuningData"] = false},
					[2] = {["categoryName"] = "30°", ["tuningPrice"] = 150, ["tuningData"] = 30},
					[3] = {["categoryName"] = "40°", ["tuningPrice"] = 150, ["tuningData"] = 40},
					[4] = {["categoryName"] = "50°", ["tuningPrice"] = 500, ["tuningData"] = 50},
					[5] = {["categoryName"] = "60°", ["tuningPrice"] = 1000, ["tuningData"] = 60}
				}
			},
			[8] = {
				["categoryName"] = getLocalizedText("menu.extras.numberplate"),
				["cameraSettings"] = {"wheel_lb_dummy", -65, 4, 5},
				["subMenu"] = {
					[1] = {["categoryName"] = getLocalizedText("tuningPack.numberplate.random"), ["tuningPrice"] = 5000, ["tuningData"] = "random"},
					[2] = {["categoryName"] = getLocalizedText("tuningPack.numberplate.custom"), ["tuningPrice"] = 150000, ["tuningData"] = "custom"}
				}
			},
		}
	},
	[5] = {
		["categoryName"] = getLocalizedText("menu.color"),
		["subMenu"] = {}
	},

}	


function getMainCategoryIDByName(name)
	if name then
		for categoryID, row in ipairs(tuningMenu) do
			if name == row["categoryName"] then
				return categoryID
			end
		end
	end
	
	return -1
end