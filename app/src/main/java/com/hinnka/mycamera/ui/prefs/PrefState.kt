package com.hinnka.mycamera.ui.prefs

import androidx.compose.runtime.Composable
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.Stable
import androidx.compose.runtime.State
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.remember
import androidx.compose.ui.platform.LocalContext
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.UserPreferences
import com.hinnka.mycamera.data.UserPreferencesRepository
import kotlin.reflect.KMutableProperty1

/** 进程内共享的设置仓库。 */
@Composable
fun rememberUserPreferencesRepository(): UserPreferencesRepository {
    val context = LocalContext.current
    return remember(context) {
        ContentRepository.getInstance(context).userPreferencesRepository
    }
}

/**
 * 只读订阅设置中的一个字段（或由多个字段派生的值），只在该值变化时重组：
 *
 * ```
 * val keepScreenOn by preferenceValue { it.keepScreenOn }
 * ```
 */
@Composable
fun <T> preferenceValue(select: (UserPreferences) -> T): State<T> {
    val repository = rememberUserPreferencesRepository()
    val flow = remember(repository) { repository.flow(select) }
    return flow.collectAsState(initial = remember(repository) { select(repository.current) })
}

/**
 * 在任意 Composable 中直接读写设置中的一个字段：
 *
 * ```
 * var keepScreenOn by rememberPreference(UserPreferences::keepScreenOn)
 * Switch(checked = keepScreenOn, onCheckedChange = { keepScreenOn = it })
 * ```
 *
 * 写入在进程作用域执行，不随当前界面销毁而取消。属性引用的 get/set 不依赖 kotlin-reflect。
 */
@Composable
fun <T> rememberPreference(property: KMutableProperty1<UserPreferences, T>): MutableState<T> {
    val repository = rememberUserPreferencesRepository()
    val state = preferenceValue { property.get(it) }
    return remember(repository, state) {
        PreferenceState(state) { value -> repository.updateAsync { property.set(this, value) } }
    }
}

@Stable
private class PreferenceState<T>(
    private val state: State<T>,
    private val onSet: (T) -> Unit,
) : MutableState<T> {
    override var value: T
        get() = state.value
        set(value) = onSet(value)

    override fun component1(): T = value

    override fun component2(): (T) -> Unit = onSet
}
