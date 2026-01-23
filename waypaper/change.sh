#GOIDA##################

sleep 0.3

WALL=$(swww query | sed -n 's/.*image: \(.*\)$/\1/p')

matugen image $WALL

########################
