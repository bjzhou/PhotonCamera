package com.hinnka.mycamera.utils

import android.annotation.SuppressLint
import android.content.Context
import android.location.Location
import android.location.LocationManager

class LocationManager(private val context: Context) {
    private val locationManager = context.getSystemService(Context.LOCATION_SERVICE) as LocationManager

    private var currentLocation: Location? = null

    @SuppressLint("MissingPermission")
    fun updateLocation() {
        if (!hasLocationPermission()) {
            return
        }

        try {
            val providers = locationManager.getProviders(true)
            var bestLocation: Location? = null
            for (provider in providers) {
                val l = locationManager.getLastKnownLocation(provider) ?: continue
                if (bestLocation == null || l.accuracy < bestLocation.accuracy) {
                    bestLocation = l
                }
            }
            currentLocation = bestLocation
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get last known location", e)
        }
    }

    fun getCurrentLocation(): Location? {
        updateLocation()
        val location = currentLocation ?: return null
        if (DeviceUtil.canShowPhantom) {
            val converted = CoordinateConverter.wgs84ToGcj02(location.latitude, location.longitude)
            location.latitude = converted[0]
            location.longitude = converted[1]
        }
        return location
    }

    private fun hasLocationPermission(): Boolean {
        val fineLocation = androidx.core.content.ContextCompat.checkSelfPermission(
            context,
            android.Manifest.permission.ACCESS_FINE_LOCATION
        ) == android.content.pm.PackageManager.PERMISSION_GRANTED
        val coarseLocation = androidx.core.content.ContextCompat.checkSelfPermission(
            context,
            android.Manifest.permission.ACCESS_COARSE_LOCATION
        ) == android.content.pm.PackageManager.PERMISSION_GRANTED
        return fineLocation || coarseLocation
    }

    companion object {
        private const val TAG = "LocationManager"
    }
}
