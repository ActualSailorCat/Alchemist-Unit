INSERT INTO Boosts
		(
		BoostID,
		TechnologyType,
		Boost,
		TriggerId,
		TriggerDescription,
		TriggerLongDescription,
		BoostClass,
		BuildingType,
		NumItems,
		RequiresResource
		)
SELECT	778,
		TechnologyType,
		Boost,
		TriggerId,
		'LOC_BOOST_TRIGGER_SAILOR_MATHEMATICS_PLACEHOLDER',
		'LOC_BOOST_TRIGGER_LONGDESC_SAILOR_MATHEMATICS_PLACEHOLDER',
		'BOOST_TRIGGER_HAVE_X_BUILDINGS',
		'BUILDING_SAILOR_ALCHEMIST_SHOP',
		3,
		0
FROM Boosts WHERE TechnologyType = 'TECH_MATHEMATICS';