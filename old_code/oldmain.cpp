void rungeKutta4(Body& body1, Body& body2, const double& G, const bool& relativity);
double sep(const Body& body1, const Body& body2);
string giveMomentum(const Body& body1, const Body& body2, const double& units);
string giveKE(const Body& body1, const Body& body2, const double& units);
string giveSep(const Body& body1, const Body& body2, const double& units);

int main(int argc, const char * argv[]) {
	Body body1 = Body(x1, y1, p1X, p1Y, MASS_1);
	Body body2 = Body(x2, y2, p2X, p2Y, MASS_2);
	//Prepare the files for output of the bodies
    string xyline = "x , y";
    //firstBody << xyline << endl;
    //secondBody << xyline << endl;

    //Find out if orbits should be relativistic or not
    bool relative = false;
    char ans = 'n';
    cout << "Use relativistic corrections or not? (y/n) ";
    cin >> ans;
    cout << endl;
    if (ans == 'y') relative = true;

    //Find out the number of orbits
    int userNum = 0;
    cout << "For how many orbits should the simulation run? ";
    cin >> userNum;
    cout << endl;

    //Set parameters for orbit number
    const size_t NUM_ORBITS = userNum;
    size_t orbitCount = 0;

    double closestPoint = sep(body1, body2);

    //Evolve the system using the solver
    while (orbitCount < NUM_ORBITS)
    {
        if (NUM_ORBITS - orbitCount < 100)
        {
            firstBody << body1 << endl;
            secondBody << body2 << endl;
        }
        if (abs(x1 - x2) * 100 < abs(body1.getX() - body2.getX()))
        {
            cerr << "Bodies no longer orbiting." << endl;
            firstBody.close();
            secondBody.close();
            cout << "Closest point was " << closestPoint << " in code units." << endl;
            return 5;
        }

        double lasty = body2.getY();

        rungeKutta4(body1, body2, G_SCALED, relative);

        if (sep(body1, body2) < closestPoint) closestPoint = sep(body1, body2);

        if ((body2.getX() > 0) && (body2.getY() > 0) && (lasty < 0))
        {
            ++orbitCount;
            if ((NUM_ORBITS <= 100) && (orbitCount % 10 == 0)) cout << orbitCount << endl << giveMomentum(body1, body2, pUnits) << giveKE(body1, body2, KEUnits) << giveSep(body1, body2, L) << endl;
            else if ((NUM_ORBITS <= 1000) && (orbitCount % 50 == 0)) cout << orbitCount << endl << giveMomentum(body1, body2, pUnits) << giveKE(body1, body2, KEUnits) << giveSep(body1, body2, L) << endl;
            else if ((NUM_ORBITS <= 100000) && (orbitCount % 100 == 0)) cout << orbitCount << endl << giveMomentum(body1, body2, pUnits) << giveKE(body1, body2, KEUnits) << giveSep(body1, body2, L) << endl;
            else if (orbitCount % 1000 == 0) cout << orbitCount << endl << giveMomentum(body1, body2, pUnits) << giveKE(body1, body2, KEUnits) << giveSep(body1, body2, L) << endl;
        }
    }

    firstBody.close();
    secondBody.close();

    cout << "Closest point was " << closestPoint << " in code units." << endl;

    return 0;
}

string giveMomentum(const Body& body1, const Body& body2, const double& units)
{
    stringstream os;
    double p1 = body1.getP() * units;
    double p2 = body2.getP() * units;
    os << "Body 1's momentum is " << p1 << " Newton-seconds." << endl;
    os << "Body 2's momentum is " << p2 << " Newton-seconds." << endl;
    return os.str();
}

string giveKE(const Body& body1, const Body& body2, const double& units)
{
    stringstream os;
    double KE1 = body1.getKE() * units;
    double KE2 = body2.getKE() * units;
    os << "Total kinetic energy of the system is " << KE1 + KE2 << " joules." << endl;
    return os.str();
}

double sep(const Body& body1, const Body& body2)
{
    double x = body1.getX() - body2.getX();
    double y = body1.getY() - body2.getY();
    double sep = pow(pow(x, 2.0) + pow(y, 2.0), 0.5);
    return sep;
}

string giveSep(const Body& body1, const Body& body2, const double& units)
{
    stringstream os;
    double separation = sep(body1, body2) * units;
    os << "Separation of bodies is " << separation << " meters." << endl;
    return os.str();
}

void hamiltonianfunc(const Body& body1, const Body& body2, const double& G, double (&array)[4][2])
{
    Hamiltonian ham = Hamiltonian(body1, body2, G);
    
    array[0][0] = ham.getdqax();
    array[0][1] = ham.getdqay();
    array[1][0] = ham.getdqbx();
    array[1][1] = ham.getdqby();
    array[2][0] = ham.getdpax();
    array[2][1] = ham.getdpay();
    array[3][0] = ham.getdpbx();
    array[3][1] = ham.getdpby();
}

void pmfunc(const Body& body1, const Body& body2, const double& G, double (&array)[4][2])
{
    PM pmink = PM(body1, body2, G);
    
    array[0][0] = pmink.getdqax();
    array[0][1] = pmink.getdqay();
    array[1][0] = pmink.getdqbx();
    array[1][1] = pmink.getdqby();
    array[2][0] = pmink.getdpax();
    array[2][1] = pmink.getdpay();
    array[3][0] = pmink.getdpbx();
    array[3][1] = pmink.getdpby();
}

void change(const Body& body1, const Body& body2, const double& G, double (&array)[4][2], const bool& relativity)
{
    if (relativity) pmfunc(body1, body2, G, array);
    
    else hamiltonianfunc(body1, body2, G, array);
}

void rungeKutta4(Body& body1, Body& body2, const double& G, const bool& relativity)
{
    //Redefine the step size to fit the arclength
    double qX = body2.getX() - body1.getX();
    double qY = body2.getY() - body1.getY();
    double pX = abs(body2.getMomentumX()) + abs(body1.getMomentumX());
    double pY = abs(body2.getMomentumY()) + abs(body1.getMomentumY());
    
    double qDot = pow(qX, 2) + pow(qY, 2);
    double pDot = pow(pX, 2) + pow(pY, 2);
    
    double stepSize = 2 * pow(pDot + (1 / pow(qDot, 2)), -0.5);
    
    //Establish k1 for the RungeKutta algorithm, use the known derivatives from the Hamiltonian
    double change1[4][2];
    change(body1, body2, G, change1, relativity);
    double k1[2][2]{{change1[0][0] * stepSize, change1[0][1] * stepSize}, {change1[1][0] * stepSize, change1[1][1] * stepSize}};
    double kP1[2][2]{{change1[2][0] * stepSize, change1[2][1] * stepSize}, {change1[3][0] * stepSize, change1[3][1] * stepSize}};
    
    double k12[2][2]{{k1[0][0] / 2, k1[0][1] / 2}, {k1[1][0] / 2, k1[1][1] / 2}};
    double kP12[2][2]{{kP1[0][0] / 2, kP1[0][1] / 2}, {kP1[1][0] / 2, kP1[1][1] / 2}};
    
    Body bodyk11 = Body(body1.getX() + k12[0][0], body1.getY() + k12[0][1], body1.getMomentumX() + kP12[0][0], body1.getMomentumY() + kP12[0][1], body1.getMass());
    Body bodyk12 = Body(body2.getX() + k12[1][0], body2.getY() + k12[1][1], body2.getMomentumX() + kP12[1][0], body2.getMomentumY() + kP12[1][1], body2.getMass());
    
    //Establish k2 for the algorithm
    double change2[4][2];
    change(bodyk11, bodyk12, G, change2, relativity);
    double k2[2][2]{{change2[0][0] * stepSize, change2[0][1] * stepSize}, {change2[1][0] * stepSize, change2[1][1] * stepSize}};
    double kP2[2][2]{{change2[2][0] * stepSize, change2[2][1] * stepSize}, {change2[3][0] * stepSize, change2[3][1] * stepSize}};
    
    double k22[2][2]{{k2[0][0] / 2, k2[0][1] / 2}, {k2[1][0] / 2, k2[1][1] / 2}};
    double kP22[2][2]{{kP2[0][0] / 2, kP2[0][1] / 2}, {kP2[1][0] / 2, kP2[1][1] / 2}};
    
    Body bodyk21 = Body(body1.getX() + k22[0][0], body1.getY() + k22[0][1], body1.getMomentumX() + kP22[0][0], body1.getMomentumY() + kP22[0][1], body1.getMass());
    Body bodyk22 = Body(body2.getX() + k22[1][0], body2.getY() + k22[1][1], body2.getMomentumX() + kP22[1][0], body2.getMomentumY() + kP22[1][1], body2.getMass());
    
    //Establish k3
    double change3[4][2];
    change(bodyk21, bodyk22, G, change3, relativity);
    double k3[2][2]{{change3[0][0] * stepSize, change3[0][1] * stepSize}, {change3[1][0] * stepSize, change3[1][1] * stepSize}};
    double kP3[2][2]{{change3[2][0] * stepSize, change3[2][1] * stepSize}, {change3[3][0] * stepSize, change3[3][1] * stepSize}};
    
    Body bodyk31 = Body(body1.getX() + k3[0][0], body1.getY() + k3[0][1], body1.getMomentumX() + kP3[0][0], body1.getMomentumY() + kP3[0][1], body1.getMass());
    Body bodyk32 = Body(body2.getX() + k3[1][0], body2.getY() + k3[1][1], body2.getMomentumX() + kP3[1][0], body2.getMomentumY() + kP3[1][1], body2.getMass());
    
    //Establish k4
    double change4[4][2];
    change(bodyk31, bodyk32, G, change4, relativity);
    double k4[2][2]{{change4[0][0] * stepSize, change4[0][1] * stepSize}, {change4[1][0] * stepSize, change4[1][1] * stepSize}};
    double kP4[2][2]{{change4[2][0] * stepSize, change4[2][1] * stepSize}, {change4[3][0] * stepSize, change4[3][1] * stepSize}};
    
    //Modify k1, k2, k3, and k4 so that they are weighted correctly
    double k1F[2][2]{{k1[0][0] / 6, k1[0][1] / 6}, {k1[1][0] / 6, k1[1][1] / 6}};
    double kP1F[2][2]{{kP1[0][0] / 6, kP1[0][1] / 6}, {kP1[1][0] / 6, kP1[1][1] / 6}};
    
    double k2F[2][2]{{k2[0][0] / 3, k2[0][1] / 3}, {k2[1][0] / 3, k2[1][1] / 3}};
    double kP2F[2][2]{{kP2[0][0] / 3, kP2[0][1] / 3}, {kP2[1][0] / 3, kP2[1][1] / 3}};
    
    double k3F[2][2]{{k3[0][0] / 3, k3[0][1] / 3}, {k3[1][0] / 3, k3[1][1] / 3}};
    double kP3F[2][2]{{kP3[0][0] / 3, kP3[0][1] / 3}, {kP3[1][0] / 3, kP3[1][1] / 3}};
    
    double k4F[2][2]{{k4[0][0] / 6, k4[0][1] / 6}, {k4[1][0] / 6, k4[1][1] / 6}};
    double kP4F[2][2]{{kP4[0][0] / 6, kP4[0][1] / 6}, {kP4[1][0] / 6, kP4[1][1] / 6}};
    
    //Use the weighted k1, k2, k3, and k4 to create the steps
    double step[2][2]{{k1F[0][0] + k2F[0][0] + k3F[0][0] + k4F[0][0], k1F[0][1] + k2F[0][1] + k3F[0][1] + k4F[0][1]}, {k1F[1][0] + k2F[1][0] + k3F[1][0] + k4F[1][0], k1F[1][1] + k2F[1][1] + k3F[1][1] + k4F[1][1]}};
    
    double stepP[2][2]{{kP1F[0][0] + kP2F[0][0] + kP3F[0][0] + kP4F[0][0], kP1F[0][1] + kP2F[0][1] + kP3F[0][1] + kP4F[0][1]}, {kP1F[1][0] + kP2F[1][0] + kP3F[1][0] + kP4F[1][0], kP1F[1][1] + kP2F[1][1] + kP3F[1][1] + kP4F[1][1]}};
    
    //Add the step to the original position and momentum
    body1.setPosition(body1.getX() + step[0][0], body1.getY() + step[0][1]);
    body2.setPosition(body2.getX() + step[1][0], body2.getY() + step[1][1]);
    body1.setMomentum(body1.getMomentumX() + stepP[0][0], body1.getMomentumY() + stepP[0][1]);
    body2.setMomentum(body2.getMomentumX() + stepP[1][0], body2.getMomentumY() + stepP[1][1]);
}
