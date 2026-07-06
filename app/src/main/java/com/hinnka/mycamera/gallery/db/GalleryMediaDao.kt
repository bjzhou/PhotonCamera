package com.hinnka.mycamera.gallery.db

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Query
import androidx.room.Upsert

@Dao
interface GalleryMediaDao {
    @Query("SELECT * FROM gallery_media WHERE id = :id LIMIT 1")
    suspend fun getById(id: String): GalleryMediaEntity?

    @Query("SELECT * FROM gallery_media ORDER BY dateAdded DESC LIMIT :limit OFFSET :offset")
    suspend fun queryPage(offset: Int, limit: Int): List<GalleryMediaEntity>

    @Query("SELECT * FROM gallery_media ORDER BY dateAdded DESC LIMIT 1")
    suspend fun queryLatest(): GalleryMediaEntity?

    @Query("SELECT id FROM gallery_media ORDER BY dateAdded DESC")
    suspend fun getIds(): List<String>

    @Query("SELECT COUNT(*) FROM gallery_media")
    suspend fun count(): Int

    @Upsert
    suspend fun upsert(entity: GalleryMediaEntity)

    @Upsert
    suspend fun upsertAll(entities: List<GalleryMediaEntity>)

    @Delete
    suspend fun delete(entity: GalleryMediaEntity)

    @Query("DELETE FROM gallery_media WHERE id = :id")
    suspend fun deleteById(id: String)
}
