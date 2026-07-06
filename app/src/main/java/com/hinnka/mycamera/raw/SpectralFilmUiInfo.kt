package com.hinnka.mycamera.raw

import java.util.Locale

object SpectralFilmUiInfo {
    val availableFilms = listOf(
        "fujifilm_c200",
        "fujifilm_pro_400h",
        "fujifilm_provia_100f",
        "fujifilm_velvia_100",
        "fujifilm_xtra_400",
        "kodak_ektachrome_100",
        "kodak_ektar_100",
        "kodak_gold_200",
        "kodak_kodachrome_64",
        "kodak_portra_160",
        "kodak_portra_400",
        "kodak_portra_800",
        "kodak_portra_800_push1",
        "kodak_portra_800_push2",
        "kodak_ultramax_400",
        "kodak_verita_200d",
        "kodak_vision3_200t",
        "kodak_vision3_250d",
        "kodak_vision3_500t",
        "kodak_vision3_50d"
    )

    val availablePrints = listOf(
        "fujifilm_crystal_archive_typeii",
        "kodak_2383",
        "kodak_2393",
        "kodak_ektacolor_edge",
        "kodak_endura_premier",
        "kodak_portra_endura",
        "kodak_supra_endura",
        "kodak_ultra_endura"
    )

    private val positiveFilms = setOf(
        "fujifilm_provia_100f",
        "fujifilm_velvia_100",
        "kodak_ektachrome_100",
        "kodak_kodachrome_64"
    )

    fun isPositiveFilm(id: String?): Boolean {
        return id in positiveFilms
    }

    fun getFilmDisplayName(id: String): String {
        return when (id) {
            "fujifilm_c200" -> "Fujifilm C200"
            "fujifilm_pro_400h" -> "Fujifilm Pro 400H"
            "fujifilm_provia_100f" -> "Fujifilm Provia 100F"
            "fujifilm_velvia_100" -> "Fujifilm Velvia 100"
            "fujifilm_xtra_400" -> "Fujifilm Superia X-TRA 400"
            "kodak_ektachrome_100" -> "Kodak Ektachrome 100"
            "kodak_ektar_100" -> "Kodak Ektar 100"
            "kodak_gold_200" -> "Kodak Gold 200"
            "kodak_kodachrome_64" -> "Kodak Kodachrome 64"
            "kodak_portra_160" -> "Kodak Portra 160"
            "kodak_portra_400" -> "Kodak Portra 400"
            "kodak_portra_800" -> "Kodak Portra 800"
            "kodak_portra_800_push1" -> "Kodak Portra 800 Push 1"
            "kodak_portra_800_push2" -> "Kodak Portra 800 Push 2"
            "kodak_ultramax_400" -> "Kodak UltraMax 400"
            "kodak_verita_200d" -> "Kodak Vericolor II 200D"
            "kodak_vision3_200t" -> "Kodak Vision3 200T"
            "kodak_vision3_250d" -> "Kodak Vision3 250D"
            "kodak_vision3_500t" -> "Kodak Vision3 500T"
            "kodak_vision3_50d" -> "Kodak Vision3 50D"
            else -> id.split("_").joinToString(" ") { word ->
                word.replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.getDefault()) else it.toString() }
            }
        }
    }

    fun getPrintDisplayName(id: String): String {
        return when (id) {
            "fujifilm_crystal_archive_typeii" -> "Fujifilm Crystal Archive Type II"
            "kodak_2383" -> "Kodak 2383 Color Print"
            "kodak_2393" -> "Kodak 2393 Color Print"
            "kodak_ektacolor_edge" -> "Kodak Ektacolor Edge"
            "kodak_endura_premier" -> "Kodak Endura Premier"
            "kodak_portra_endura" -> "Kodak Portra Endura"
            "kodak_supra_endura" -> "Kodak Supra Endura"
            "kodak_ultra_endura" -> "Kodak Ultra Endura"
            else -> id.split("_").joinToString(" ") { word ->
                word.replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.getDefault()) else it.toString() }
            }
        }
    }
}
