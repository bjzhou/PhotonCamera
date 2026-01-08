package com.hinnka.mycamera.billing

import android.app.Activity
import kotlinx.coroutines.flow.StateFlow

/**
 * 计费管理器接口
 */
interface BillingManager {
    /**
     * 是否已付费（永久会员）
     */
    val isPurchased: StateFlow<Boolean>

    /**
     * 发起购买
     */
    fun purchase(activity: Activity)

    /**
     * 刷新购买状态
     */
    fun refresh()
}
