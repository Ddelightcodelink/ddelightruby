/**
 * The function that takes the flight path as a string.
 * 
 * Output returns the coordinates and direction of the ship.
 * 
 * The function spaceship simulator. 
 * 
 */
function my_spaceship(flightPath) {
    var pathLength = flightPath.length;
    result = '';
    const Direction = {
        Up: 'up',
        Down: 'down',
        Right: 'right',
        Left: 'left'
    };
    current_direction = Direction.Up;
    currentX = 0;
    currentY = 0;
    // for loop to iterate over string parameter
    for(i = 0; i < pathLength; i++) {
        cmd = flightPath[i];
        switch (cmd) {
            case 'L':
                if(current_direction == Direction.Up) {
                    current_direction = Direction.Left;
                } else if(current_direction == Direction.Left) {
                    current_direction = Direction.Down;
                } else if(current_direction == Direction.Down) {
                    current_direction = Direction.Right;
                } else if(current_direction == Direction.Right) {
                    current_direction = Direction.Up;
                }
                break;
            case 'R':
                if(current_direction == Direction.Up) {
                    current_direction = Direction.Right;
                } else if(current_direction == Direction.Right) {
                    current_direction = Direction.Down;
                } else if(current_direction == Direction.Down) {
                    current_direction = Direction.Left;
                } else if(current_direction == Direction.Left) {
                    current_direction = Direction.Up;
                }
                break;
            case 'A':
                if(current_direction == Direction.Up) {
                    currentY -= 1;
                } else if(current_direction == Direction.Right) {
                    currentX += 1;
                } else if(current_direction == Direction.Down) {
                    currentY += 1;
                } else if(current_direction == Direction.Left) {
                    currentX -= 1;
                }
                break;
            }
        }
        result = "{x: "+ currentX+", y: "+currentY+", direction: '" +current_direction+"'}";
        return result;
    }

    //console.log(my_spaceship('RAALALL'));
    //console.log(my_spaceship('AAAA'));
    //console.log(my_spaceship(''));
    //console.log(my_spaceship('RAARA'));