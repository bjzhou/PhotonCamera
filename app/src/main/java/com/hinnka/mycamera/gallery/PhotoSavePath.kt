package com.hinnka.mycamera.gallery

import android.os.Environment

enum class PhotoSavePath(val relativePath: String?) {
    DCIM_PHOTON(Environment.DIRECTORY_DCIM + "/PhotonCamera"),
    EXTERNAL_TREE(null);

    companion object {
        fun fromPersistedName(name: String?): PhotoSavePath {
            return entries.firstOrNull { it.name == name } ?: DCIM_PHOTON
        }
    }
}
