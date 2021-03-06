Coordinate = require("Coordinate")
RoadObject = require("RoadObject")
RoadHelper = require "RoadHelper"
GameStatePrototype = require("GameStatePrototype")
SingleCurveRoadObject = require "SingleCurveRoadObject"

AppGameState = nil --By default, this is the global singleton

function love.load()
	love.window.setMode(1366, 768, { highdpi = true})

	--Create the ingamegrid
	AppGameState = GameStatePrototype.getInstance()
	--Set it to our default map

	-- local arcHighway = SingleCurveRoadObject(Coordinate(100, 100), Coordinate(300, 400))
	-- AppGameState:put(arcHighway)

	-- local arcHighway2 = SingleCurveRoadObject(Coordinate(500, 500), Coordinate(600, 400))
	-- AppGameState:put(arcHighway2)

	local highwayComponents = {
		-- RoadObject(0, 700, 2000, 10),
		-- SingleCurveRoadObject(Coordinate(600, 1200), Coordinate(700, 200), "concave"),
		-- SingleCurveRoadObject(Coordinate(700, 200), Coordinate(900, 1200), "concave"),
		RoadObject(900, 100, 20, 1200, { 125, 129, 130} ), --The major road on the left
		RoadObject(1400, 100, 20, 1200, { 125, 129, 130} ), --The major road on the right
		RoadObject(200, 200, 1500, 10, { 125, 129, 130}), --Intersecting road at the top
		RoadObject(920, 600, 480, 10, { 125, 129, 130}), --Intersecting road at the middle
		SingleCurveRoadObject(Coordinate(700, 700), Coordinate(920, 600), "concave")
	}

	for index, segment in pairs(highwayComponents) do
		AppGameState:put(segment)
	end
end

function love.update()

end
function love.draw()
	--Draw the GameGrid by iterating theough the AppGameState
	for i=1,AppGameState.drawArray.length do
		AppGameState.drawArray.items[i]:draw()
	end

	-- love.graphics.rectangle("fill", 1000, 1000, 10, 500)

end



