package com.hinnka.mycamera.billing

import android.app.Activity
import android.content.Context
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

class BillingManagerImpl(private val context: Context) : BillingManager {
    // 默认已付费或不需要付费逻辑，这里根据中国版本需求通常可能对内免费或使用其他计费方式
    // 暂时设为 true 以便测试，或者设为 false
    private val _isPurchased = MutableStateFlow(true) 
    override val isPurchased: StateFlow<Boolean> = _isPurchased.asStateFlow()

    override fun purchase(activity: Activity) {
        // China version might use other billing methods or be free
    }

    override fun refresh() {
    }
}
