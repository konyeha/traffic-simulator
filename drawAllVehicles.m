function[vehicle]=drawAllVehicles(inters, vehicle, road, lane, time, t, false)
    
    %number of Vehicles in Que
    if isfield(vehicle, 'length') == false
        in_que = 0;
    else
        in_que = length(vehicle); 
    end
    
    %number of new Vehicles Spawned
    spawned = length(road); 

    % Draw all old vehicles and current time
    if in_que > 0;
        for i = 1:in_que
            vehicle(i).figure = drawVehicle(vehicle(i), t);
        end
    end
    
    % Now assign and draw new vehicles
    if isnan(road) == false
        for j = 1:spawned
            [vehicle] = makeVehicle(inters,vehicle, in_que + j, lane(j), road(j), time, false);
            vehicle(in_que+j).figure = drawVehicle(vehicle(in_que+j), t);
        end
    end
end