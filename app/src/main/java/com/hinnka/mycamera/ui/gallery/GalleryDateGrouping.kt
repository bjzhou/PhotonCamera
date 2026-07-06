package com.hinnka.mycamera.ui.gallery

import android.content.Context
import android.text.format.DateUtils
import com.hinnka.mycamera.R
import com.hinnka.mycamera.gallery.MediaData
import java.time.Instant
import java.time.LocalDate
import java.time.ZoneId
import java.time.ZonedDateTime
import java.time.temporal.ChronoUnit

internal sealed interface GalleryGridEntry {
    data class Header(
        val key: String,
        val title: String
    ) : GalleryGridEntry

    data class Photo(
        val photo: MediaData,
        val index: Int
    ) : GalleryGridEntry
}

internal fun buildGalleryGridEntries(
    context: Context,
    photos: List<MediaData>
): List<GalleryGridEntry> {
    if (photos.isEmpty()) return emptyList()

    val zoneId = ZoneId.systemDefault()
    val today = LocalDate.now(zoneId)

    return buildList {
        photos
            .withIndex()
            .groupBy { indexedPhoto -> indexedPhoto.value.dateAdded.toLocalDate(zoneId) }
            .toSortedMap(compareByDescending { it })
            .forEach { (date, groupedPhotos) ->
                add(
                    GalleryGridEntry.Header(
                        key = "header_$date",
                        title = formatGalleryGroupTitle(context, date.atStartOfDay(zoneId), today)
                    )
                )
                groupedPhotos.forEach { indexedPhoto ->
                    add(
                        GalleryGridEntry.Photo(
                            photo = indexedPhoto.value,
                            index = indexedPhoto.index
                        )
                    )
                }
            }
    }
}

private fun formatGalleryGroupTitle(
    context: Context,
    targetDate: ZonedDateTime,
    today: LocalDate
): String {
    val localDate = targetDate.toLocalDate()
    val daysDiff = ChronoUnit.DAYS.between(localDate, today)
    return when (daysDiff) {
        0L -> context.getString(R.string.gallery_group_today)
        1L -> context.getString(R.string.gallery_group_yesterday)
        else -> {
            val flags = if (localDate.year == today.year) {
                DateUtils.FORMAT_SHOW_DATE or
                    DateUtils.FORMAT_SHOW_WEEKDAY or
                    DateUtils.FORMAT_NO_YEAR
            } else {
                DateUtils.FORMAT_SHOW_DATE or
                    DateUtils.FORMAT_SHOW_WEEKDAY or
                    DateUtils.FORMAT_SHOW_YEAR
            }
            DateUtils.formatDateTime(context, targetDate.toInstant().toEpochMilli(), flags)
        }
    }
}

private fun Long.toLocalDate(zoneId: ZoneId): LocalDate =
    Instant.ofEpochMilli(this).atZone(zoneId).toLocalDate()
