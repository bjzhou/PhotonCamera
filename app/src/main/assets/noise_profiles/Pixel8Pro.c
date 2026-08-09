/* Generated test code to dump a table of data for external validation
 * of the noise model parameters.
 */
#include <stdio.h>
#include <assert.h>
double compute_noise_model_entry_S(int plane, int sens);
double compute_noise_model_entry_O(int plane, int sens);
int main(void) {
    for (int plane = 0; plane < 4; plane++) {
        for (int sens = 21; sens <= 1600; sens += 100) {
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
    static double noise_model_A[] = { 8.4642446458204e-07,7.885580710116388e-07,7.913266061026989e-07,8.050064129709212e-07 };
    static double noise_model_B[] = { -3.3548195112894123e-06,-6.809009788763011e-07,-7.872168829134742e-07,-2.1650529662197835e-06 };
    double A = noise_model_A[plane];
    double B = noise_model_B[plane];
    double s = A * sens + B;
    return s < 0.0 ? 0.0 : s;
}

double compute_noise_model_entry_O(int plane, int sens) {
    static double noise_model_C[] = { 1.869442572495001e-12,1.450600972594844e-12,1.5203739200556638e-12,1.7126408145869544e-12 };
    static double noise_model_D[] = { 9.084048689765456e-07,8.720875192909893e-07,8.823589207357054e-07,8.763068694811695e-07 };
    double digital_gain = (sens / 666.0) < 1.0 ? 1.0 : (sens / 666.0);
    double C = noise_model_C[plane];
    double D = noise_model_D[plane];
    double o = C * sens * sens + D * digital_gain * digital_gain;
    return o < 0.0 ? 0.0 : o;
}
