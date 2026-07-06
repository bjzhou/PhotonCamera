package com.hinnka.mycamera.data

import android.content.Context
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import com.hinnka.mycamera.model.Film
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

object FilmData {
    private var _films: List<Film> = emptyList()
    val films: List<Film> get() = _films

    suspend fun init(context: Context) = withContext(Dispatchers.IO) {
        if (_films.isNotEmpty()) return@withContext
        try {
            val jsonString = context.assets.open("films.json").bufferedReader().use { it.readText() }
            val type = object : TypeToken<List<Film>>() {}.type
            _films = Gson().fromJson(jsonString, type)
            PLog.d("FilmData", "Loaded ${_films.size} films from assets")
        } catch (e: Exception) {
            PLog.e("FilmData", "Error loading films", e)
        }
    }

    fun getFilmById(id: String): Film? = _films.find { it.id == id }
}
