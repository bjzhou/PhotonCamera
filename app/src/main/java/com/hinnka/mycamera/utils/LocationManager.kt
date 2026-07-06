package com.hinnka.mycamera.utils

import android.annotation.SuppressLint
import android.content.Context
import android.location.Location
import android.location.LocationManager

class LocationManager(private val context: Context) {
    private val locationManager = context.getSystemService(Context.LOCATION_SERVICE) as LocationManager

    private var currentLocation: Location? = null

    @SuppressLint("MissingPermission")
    fun requestCurrentLocation() {
        if (!hasLocationPermission()) {
            return
        }

        try {
            val providers = locationManager.getProviders(true)
            for (provider in providers) {
                locationManager.getCurrentLocation(provider, null, context.mainExecutor) { location ->
                    location?.let { updateCurrentLocation(it) }
                }
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to request current location", e)
        }
    }

    @SuppressLint("MissingPermission")
    fun updateLocation() {
        if (!hasLocationPermission()) {
            return
        }

        try {
            val providers = locationManager.getProviders(true)
            for (provider in providers) {
                val location = locationManager.getLastKnownLocation(provider) ?: continue
                updateCurrentLocation(location)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get last known location", e)
        }
    }

    fun getCurrentLocation(): Location? {
        updateLocation()
        val location = Location(currentLocation ?: return null)
        if (DeviceUtil.canShowPhantom) {
            val converted = CoordinateConverter.wgs84ToGcj02(location.latitude, location.longitude)
            location.latitude = converted[0]
            location.longitude = converted[1]
        }
        return location
    }

    private fun updateCurrentLocation(location: Location) {
        val previous = currentLocation
        if (previous == null || isBetterLocation(location, previous)) {
            currentLocation = Location(location)
        }
    }

    private fun isBetterLocation(location: Location, currentBest: Location): Boolean {
        if (location.elapsedRealtimeNanos != currentBest.elapsedRealtimeNanos) {
            return location.elapsedRealtimeNanos > currentBest.elapsedRealtimeNanos
        }
        return location.accuracy < currentBest.accuracy
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
