/* Generated test code to dump a table of data for external validation
 * of the noise model parameters.
 */
#include <stdio.h>
#include <assert.h>
double compute_noise_model_entry_S(int plane, int sens);
double compute_noise_model_entry_O(int plane, int sens);
int main(void) {
    for (int plane = 0; plane < 4; plane++) {
        for (int sens = 100; sens <= 9100; sens += 100) {
            double o = compute_noise_model_entry_O(plane, sens);
            double s = compute_noise_model_entry_S(plane, sens);
            printf("%d,%d,%lf,%lf\n", plane, sens, o, s);
        }
    }
    return 0;
}

/* Generated functions to map a given sensitivity to the O and S noise
 * model parameters in the DNG noise model. The planes are in
 * R, Gr, Gb, B order.
 */
double compute_noise_model_entry_S(int plane, int sens) {
    static double noise_model_A[] = { 1.8326389269617373e-07,1.8310841760634264e-07,1.8257826701051919e-07,1.8157910951989409e-07 };
    static double noise_model_B[] = { -2.0598894168819969e-07,-5.0396057411973582e-07,-5.3241333186416879e-07,-3.924086360945215e-07 };
    double A = noise_model_A[plane];
    double B = noise_model_B[plane];
    double s = A * sens + B;
    return s < 0.0 ? 0.0 : s;
}

double compute_noise_model_entry_O(int plane, int sens) {
    static double noise_model_C[] = { 1.5467896663927581e-13,1.5399684699652229e-13,1.5462212604176862e-13,1.5095015122305481e-13 };
    static double noise_model_D[] = { 2.438361775816499e-07,2.3725323086979802e-07,2.3872211548107904e-07,2.3799350248210071e-07 };
    double digital_gain = (sens / 9100.0) < 1.0 ? 1.0 : (sens / 9100.0);
    double C = noise_model_C[plane];
    double D = noise_model_D[plane];
    double o = C * sens * sens + D * digital_gain * digital_gain;
    return o < 0.0 ? 0.0 : o;
}
