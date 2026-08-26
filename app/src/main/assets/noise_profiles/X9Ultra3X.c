/* Generated test code to dump a table of data for external validation
 * of the noise model parameters.
 */
#include <stdio.h>
#include <assert.h>
double compute_noise_model_entry_S(int plane, int sens);
double compute_noise_model_entry_O(int plane, int sens);
int main(void) {
    for (int plane = 0; plane < 4; plane++) {
        for (int sens = 100; sens <= 12700; sens += 100) {
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
    static double noise_model_A[] = { 3.3896564559003246e-07,3.208231998187638e-07,3.2404575737504195e-07,3.3500316057863256e-07 };
    static double noise_model_B[] = { -5.9785425148083518e-06,-1.4013929837368631e-06,-2.2373441656533086e-06,-4.3699187896710286e-06 };
    double A = noise_model_A[plane];
    double B = noise_model_B[plane];
    double s = A * sens + B;
    return s < 0.0 ? 0.0 : s;
}

double compute_noise_model_entry_O(int plane, int sens) {
    static double noise_model_C[] = { 4.9614578190505954e-13,4.5948719127071957e-13,4.4735722217478566e-13,4.9797439384455169e-13 };
    static double noise_model_D[] = { 3.7359794804986528e-07,3.512376123840507e-07,3.3526320117041061e-07,3.4157991092656035e-07 };
    double digital_gain = (sens / 12700.0) < 1.0 ? 1.0 : (sens / 12700.0);
    double C = noise_model_C[plane];
    double D = noise_model_D[plane];
    double o = C * sens * sens + D * digital_gain * digital_gain;
    return o < 0.0 ? 0.0 : o;
}
