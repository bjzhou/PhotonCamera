package com.hinnka.mycamera.data

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.filterNotNull
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.flowOn
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch

/**
 * DataStore 扩展属性
 */
private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(
    name = "user_preferences",
    produceMigrations = { context ->
        listOf(
            OpenAiApiKeyEncryptionMigration(),
            BuiltInDeviceConfigurationMigration.create(context),
        )
    },
)

/**
 * 进程级的已解码设置状态与写入作用域。
 *
 * DataStore 本身是进程单例，这里同样保持单例：无论创建多少个 Repository 实例，
 * 都只有一个热订阅和一份解码结果，任何使用点同步读取到的都是同一个 [UserPreferences]。
 * 写入在进程作用域中执行，不会因调用方（Composable / ViewModel）销毁而被取消。
 */
private object PreferencesState {
    val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    @Volatile
    private var state: StateFlow<UserPreferences?>? = null

    fun state(source: Flow<UserPreferences>): StateFlow<UserPreferences?> = state ?: synchronized(this) {
        state ?: source.stateIn(scope, SharingStarted.Eagerly, null).also { state = it }
    }
}

enum class VolumeKeyAction {
    NONE,
    CAPTURE,
    EXPOSURE_COMPENSATION,
    ZOOM
}

enum class WidgetTheme {
    FOLLOW_SYSTEM,
    LIGHT,
    DARK
}

enum class DevelopAnimationStyle {
    FILM,
    INSTANT_PRINT
}

enum class CaptureButtonStyle {
    DEFAULT,
    COLOR,
    IMAGE;

    companion object {
        fun fromPersistedName(name: String?): CaptureButtonStyle {
            return entries.firstOrNull { it.name == name } ?: DEFAULT
        }
    }
}

/**
 * 用户偏好设置仓库：负责 DataStore 的加载与事务写入。
 * 设置项的读写逻辑都在 [UserPreferences] 中声明，使用点直接读写字段。
 */
class UserPreferencesRepository(private val context: Context) {

    val userPreferences: Flow<UserPreferences> = context.dataStore.data
        .map { preferences -> UserPreferences(preferences) }
        .flowOn(Dispatchers.IO)

    private val loadedState: StateFlow<UserPreferences?> = PreferencesState.state(userPreferences)

    /**
     * 已加载的设置（同步）。DataStore 尚未完成首次加载时为默认值。
     * 同一段逻辑读取多个字段时都来自这一个对象，天然一致。
     */
    val current: UserPreferences
        get() = loadedState.value ?: UserPreferences()

    /** 单个（或一组）字段的变化流，只在首次加载完成后发射，并去重。 */
    fun <T> flow(select: (UserPreferences) -> T): Flow<T> = loadedState
        .filterNotNull()
        .map(select)
        .distinctUntilChanged()

    /** 读取最新持久化的设置（挂起直到 DataStore 返回）。 */
    suspend fun latest(): UserPreferences = userPreferences.first()

    /**
     * 原子更新：在同一个 DataStore 事务中修改设置，block 内的多个赋值一起写入。
     *
     * ```
     * repository.update { retainCaptureSettings = enabled; customCaptureSettings = settings }
     * ```
     */
    suspend fun update(block: UserPreferences.() -> Unit) {
        context.dataStore.edit { preferences -> UserPreferences(preferences, writable = true).block() }
    }

    /** 在进程作用域内更新，调用方销毁不会中断写入。 */
    fun updateAsync(block: UserPreferences.() -> Unit) {
        PreferencesState.scope.launch { update(block) }
    }
}
