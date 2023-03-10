from math import hypot, cos, sin, degrees, atan2, radians, pi

class LatController():
    def __init__(self, eg, sh, lattice, pl, park):
 
        self.ego = eg
        self.shared = sh
        self.plan = pl
        self.parking = park
        self.lattice_path = lattice

        self.global_path = self.shared.global_path
        self.WB = 1.04 # wheel base
        self.k = 0.15 #1.5
        self.lookahead_default = 4 #look-ahead default

    def run(self):
        while True:
            try:
                # if self.parking.on == "on":
                #     self.parking_run()
                # elif self.parking.on == "forced":
                #     self.parking_run2()
                # elif self.parking.on == "U_turn":
                # #     self.U_turn()
                
                # elif self.parking.on == "off":
                self.path = self.lattice_path[self.shared.selected_lane]
                # print(len(self.lattice_path), "\n", self.shared.selected_lane)
                # self.path = self.shared.global_path
                lookahead = min(self.k * self.ego.speed +
                                self.lookahead_default, 6)
                target_index = len(self.path.x) - 49

                # target_index = len(self.path.x) - 45 # Siheung

                # lookahead = min(self.k * self.ego.speed + self.lookahead_default, 7)
                # target_index = int(lookahead * 10)

                target_x, target_y = self.path.x[target_index], self.path.y[target_index]
                tmp = degrees(atan2(target_y - self.ego.y,
                                    target_x - self.ego.x)) % 360


                alpha = self.ego.heading - tmp
                angle = atan2(2.0 * self.WB * sin(radians(alpha)) / lookahead, 1.0)

                if degrees(angle) < 0.5 and degrees(angle) > -0.5:
                    angle = 0

                self.steer = max(min(degrees(angle), 27.0), -27.0)

                return self.steer

            except IndexError:
                print("++++++++lat_controller+++++++++")

    def parking_run(self):
        if self.parking.direction == 0:
            self.path = self.parking.forward_path
            lookahead = 5
        else:
            self.path = self.parking.backward_path
            lookahead = 5
        # if not self.parking.inflection_on:
        target_index = lookahead + self.parking.index
        # else:
        #     target_index = len(self.parking.backward_path.x) - 1

        target_x, target_y = self.path.x[target_index], self.path.y[target_index]
        tmp = degrees(atan2(target_y - self.ego.y, target_x - self.ego.x)) % 360

        heading = self.ego.heading
        ###### Back Driving ######
        if self.ego.input_gear == 2:
            heading += 180
            heading %= 360
        ##########################

        alpha = heading - tmp
        angle = atan2(2.0 * self.WB *
                      sin(radians(alpha)) / lookahead, 1.0)

        ###### Back Driving ######
        if self.ego.input_gear == 2:
            angle = -1.5*angle
        ##########################

        if degrees(angle) < 3.5 and degrees(angle) > -3.5:
            angle = 0

        self.steer = max(min(degrees(angle), 27.0), -27.0)

    def parking_run2(self):
        self.steer = self.ego.target_steer
    
    def U_turn(self):
        self.path = self.lattice_path[self.shared.selected_lane]
        lookahead = min(self.k * self.ego.speed +
                        self.lookahead_default, 6)
        target_index = 5

        target_x, target_y = self.path.x[target_index], self.path.y[target_index]
        tmp = degrees(atan2(target_y - self.ego.y,
                            target_x - self.ego.x)) % 360


        alpha = self.ego.heading - tmp
        angle = atan2(2.0 * self.WB * sin(radians(alpha)) / lookahead, 1.0)

        if degrees(angle) < 0.5 and degrees(angle) > -0.5:
            angle = 0

        self.steer = max(min(degrees(angle), 27.0), -27.0)
