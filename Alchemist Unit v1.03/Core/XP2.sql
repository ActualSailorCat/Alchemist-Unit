INSERT INTO Units_XP2 (
		UnitType,
		ResourceMaintenanceAmount,
		ResourceCost,
		TourismBomb,
		CanEarnExperience,
		TourismBombPossible,
		CanFormMilitaryFormation,
		MajorCivOnly
		)
SELECT	'UNIT_SAILOR_ALCHEMIST',
		ResourceMaintenanceAmount,
		ResourceCost,
		TourismBomb,
		CanEarnExperience,
		TourismBombPossible,
		CanFormMilitaryFormation,
		MajorCivOnly
FROM Units_XP2 WHERE UnitType = 'UNIT_SETTLER';
