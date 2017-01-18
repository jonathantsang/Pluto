Coordinate = require("Coordinate")
RoadObject = require("RoadObject")
RoadHelper = require("RoadHelper")
InGameMemoryMap = require("InGameMemoryMap")

InGameGrid = nil

function love.load()
	love.window.setMode(1366, 768, {highdpi = true})

	--Creaate the ingamegrid
	InGameGrid = InGameMemoryMap:new()

	-- --Set it to our default map
	-- InGameGrid:put()
end

function love.update()

end

function love.draw()
	-- love.graphics.setColor( 189, 195, 199 )
	-- love.graphics.arc( "fill", 400, 300, 10, -math.pi, -math.pi/2)
	-- love.graphics.arc( "line", 400, 300, 10, -math.pi, -math.pi/2) --Anti-aliasing

	-- --Draw the recentalge for the road leading up to it
	-- love.graphics.rectangle("fill", 390, 300, 11, 500)
	-- love.graphics.rectangle("line", 390, 300, 10, 500)

	-- -- --Draw the rectangle leading out of the arc
	-- love.graphics.rectangle("fill", 400, 290, 500, 10)


	-- love.graphics.arc( "fill", 800, 300, 50, -math.pi, -math.pi/2)
	-- love.graphics.arc( "line", 800, 300, 50, -math.pi, -math.pi/2) --Anti-aliasing

	-- --Draw the recentalge for the road leading up to it
	-- love.graphics.rectangle("fill", 750, 300, 50, 500)
	-- love.graphics.rectangle("line", 750, 300, 50, 500)
	--Create a road
	highway404 = RoadObject:new(500, 500, 10, 500)
	highway404:draw()

	--Draw the next highway
	continuedHighway = RoadObject:new(510, 490, 200, 10)
	continuedHighway:draw()

	--Connect them
	RoadHelper.connectRoad(highway404, continuedHighway)
end


