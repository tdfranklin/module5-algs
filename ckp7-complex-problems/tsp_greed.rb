def nearest_neighbor(nodes, start_node)
    unless start_node.visited
        cities = start_node.neighbors
        next_city = cities[0]

        cities.each do |city|
            next_city = city if city.distance < next_city.distance
        end
        start_node.visited = true
        start_node = next_city
    end
end