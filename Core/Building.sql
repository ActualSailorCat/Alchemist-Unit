--=============================================
-- Atelier Building by SailorCat
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,											Kind)
VALUES	('BUILDING_SAILOR_ALCHEMIST_SHOP',				'KIND_BUILDING'),
		('DYNMOD_SAILOR_ALCHEMIST_SHOP_PROJECT_BOOST',	'KIND_MODIFIER');

-----------------------------------------------	
-- DynamicModifiers
-----------------------------------------------	
INSERT INTO DynamicModifiers
		(ModifierType,									CollectionType,			EffectType)
VALUES	('DYNMOD_SAILOR_ALCHEMIST_SHOP_PROJECT_BOOST',	'COLLECTION_OWNER',		'EFFECT_ADJUST_ALL_PROJECTS_PRODUCTION');

-----------------------------------------------	
-- Buildings
-----------------------------------------------	
INSERT INTO Buildings (
		BuildingType,
		Name,
		Description,
		PrereqTech,
		Cost,
		MaxPlayerInstances,
		Capital,
		PrereqDistrict,
		PurchaseYield,
		InternalOnly
		)
VALUES (
		'BUILDING_SAILOR_ALCHEMIST_SHOP', -- BuildingType
		'LOC_BUILDING_SAILOR_ALCHEMIST_SHOP_NAME', -- Name
		'LOC_BUILDING_SAILOR_ALCHEMIST_SHOP_DESCRIPTION', -- Description
		'TECH_WRITING', -- PrereqTech
		75, -- Cost
		-1, -- MaxPlayerInstances
		0, -- Capital
		'DISTRICT_CITY_CENTER', -- PrereqDistrict
		'YIELD_GOLD', -- PurchaseYield
		0 -- InternalOnly
		);

-----------------------------------------------	
-- Building_YieldsPerEra
-----------------------------------------------	
INSERT INTO Building_YieldsPerEra (BuildingType, YieldType, YieldChange) VALUES ('BUILDING_SAILOR_ALCHEMIST_SHOP', 'YIELD_GOLD', 2);

-----------------------------------------------	
-- BuildingModifiers
-----------------------------------------------	
INSERT INTO BuildingModifiers
		(BuildingType,						ModifierId)
VALUES	('BUILDING_SAILOR_ALCHEMIST_SHOP', 'SAILOR_ALCHEMIST_SHOP_GRANT_UNIT'),
		('BUILDING_SAILOR_ALCHEMIST_SHOP', 'SAILOR_ALCHEMIST_SHOP_PROJECT_BOOST');

-----------------------------------------------	
-- Modifiers
-----------------------------------------------	
INSERT INTO Modifiers
		(ModifierId,							ModifierType)
VALUES	('SAILOR_ALCHEMIST_SHOP_GRANT_UNIT',	'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_CITY'),
		('SAILOR_ALCHEMIST_SHOP_PROJECT_BOOST',	'DYNMOD_SAILOR_ALCHEMIST_SHOP_PROJECT_BOOST');

-----------------------------------------------	
-- ModifierArguments
-----------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,							Name,		Value)
VALUES	('SAILOR_ALCHEMIST_SHOP_GRANT_UNIT',	'Amount',	1),
		('SAILOR_ALCHEMIST_SHOP_GRANT_UNIT',	'UnitType', 'UNIT_SAILOR_ALCHEMIST'),
		('SAILOR_ALCHEMIST_SHOP_PROJECT_BOOST',	'Amount',	10);