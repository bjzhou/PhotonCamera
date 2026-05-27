.class public Lcom/agc/Res$id;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/Res;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "id"
.end annotation


# static fields
.field public static final FAKE_STATUS_BAR_VIEW_ID:I

.field public static final FAKE_TRANSLUCENT_VIEW_ID:I

.field public static final GLIDE_CUSTOM_VIEW_TARGET_TAG:I

.field public static final agc_agc_ruler:I

.field public static final agc_cancel:I

.field public static final agc_color_checked:I

.field public static final agc_color_mix_layout:I

.field public static final agc_color_mix_tv_done:I

.field public static final agc_color_reset:I

.field public static final agc_color_slider_bar:I

.field public static final agc_csb:I

.field public static final agc_fw_btn_clear:I

.field public static final agc_fw_list_view:I

.field public static final agc_iv_close:I

.field public static final agc_iv_refresh:I

.field public static final agc_iv_reset:I

.field public static final agc_iv_selected:I

.field public static final agc_iv_thumb:I

.field public static final agc_list_view:I

.field public static agc_lut_selector:I

.field public static agc_process_bar:I

.field public static final agc_root:I

.field public static final agc_save:I

.field public static final agc_seek_bar:I

.field public static final agc_tips:I

.field public static agc_tv_process:I

.field public static final agc_tv_thumb:I

.field public static final agc_view:I

.field public static agc_view_pager:I

.field public static final cb_model:I

.field public static final cb_time:I

.field public static final circle_view:I

.field public static final color_mix_ll_overried:I

.field public static cure_grid_view:I

.field public static final et_watermark:I

.field public static item_art:I

.field public static item_hasselblad:I

.field public static item_leica:I

.field public static item_time:I

.field public static final iv_back:I

.field public static final iv_confirm:I

.field public static final iv_guide:I

.field public static final iv_info:I

.field public static final ll_content:I

.field public static final ll_guide:I

.field public static llt_title:I

.field public static lut_header_list:I

.field public static rb_spring01:I

.field public static rb_spring02:I

.field public static rb_spring03:I

.field public static rb_spring_black:I

.field public static rb_spring_white:I

.field public static rg_spring:I

.field public static final rl_custom:I

.field public static final rl_model:I

.field public static rl_spring:I

.field public static final rl_time:I

.field public static final rv_list:I

.field public static final summary:I

.field public static final title:I

.field public static final tv_art:I

.field public static tv_cure_pre:I

.field public static final tv_custom:I

.field public static tv_gamma:I

.field public static final tv_guide:I

.field public static final tv_hasselblad:I

.field public static final tv_leica:I

.field public static tv_sect:I

.field public static final tv_tap:I

.field public static final tv_thumb_hint:I

.field public static final tv_time:I

.field public static tv_title:I

.field public static tv_tone:I

.field public static final tv_value:I

.field public static final tv_value_hint:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "agc_view"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_view:I

    const-string v0, "title"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->title:I

    const-string v0, "summary"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->summary:I

    const-string v0, "agc_root"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_root:I

    const-string v0, "agc_iv_thumb"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_iv_thumb:I

    const-string v0, "agc_iv_close"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_iv_close:I

    const-string v0, "agc_iv_selected"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_iv_selected:I

    const-string v0, "agc_tv_thumb"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_tv_thumb:I

    const-string v0, "circle_view"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->circle_view:I

    const-string v0, "agc_list_view"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_list_view:I

    const-string v0, "agc_agc_ruler"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_agc_ruler:I

    const-string v0, "agc_cancel"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_cancel:I

    const-string v0, "agc_save"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_save:I

    const-string v0, "ll_content"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->ll_content:I

    const-string v0, "tv_value"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_value:I

    const-string v0, "tv_value_hint"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_value_hint:I

    const-string v0, "tv_thumb_hint"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_thumb_hint:I

    const-string v0, "rv_list"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rv_list:I

    const-string v0, "agc_fw_btn_clear"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_fw_btn_clear:I

    const-string v0, "agc_fw_list_view"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_fw_list_view:I

    const-string v0, "agc_csb"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_csb:I

    const-string v0, "agc_tips"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_tips:I

    const-string v0, "color_mix_layout"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_color_mix_layout:I

    const-string v0, "color_slider_bar"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_color_slider_bar:I

    const-string v0, "color_mix_tv_done"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_color_mix_tv_done:I

    const-string v0, "agc_color_reset"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_color_reset:I

    const-string v0, "agc_iv_reset"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_iv_reset:I

    const-string v0, "agc_seek_bar"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_seek_bar:I

    const-string v0, "agc_iv_refresh"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_iv_refresh:I

    const-string v0, "agc_color_checked"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_color_checked:I

    const-string v0, "color_mix_ll_overried"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->color_mix_ll_overried:I

    const-string v0, "iv_back"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->iv_back:I

    const-string v0, "iv_confirm"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->iv_confirm:I

    const-string v0, "iv_guide"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->iv_guide:I

    const-string v0, "tv_guide"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_guide:I

    const-string v0, "ll_guide"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->ll_guide:I

    const-string v0, "tv_tap"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_tap:I

    const-string v0, "et_watermark"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->et_watermark:I

    const-string v0, "rl_time"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rl_time:I

    const-string v0, "rl_model"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rl_model:I

    const-string v0, "rl_custom"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rl_custom:I

    const-string v0, "cb_time"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->cb_time:I

    const-string v0, "cb_model"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->cb_model:I

    const-string v0, "tv_custom"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_custom:I

    const-string v0, "tv_leica"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_leica:I

    const-string v0, "tv_hasselblad"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_hasselblad:I

    const-string v0, "tv_art"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_art:I

    const-string v0, "tv_time"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_time:I

    const-string v0, "iv_info"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->iv_info:I

    const-string v0, "statusbarutil_fake_status_bar_view"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->FAKE_STATUS_BAR_VIEW_ID:I

    const-string v0, "statusbarutil_translucent_view"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->FAKE_TRANSLUCENT_VIEW_ID:I

    const-string v0, "glide_custom_view_target_tag"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->GLIDE_CUSTOM_VIEW_TARGET_TAG:I

    const-string v0, "item_leica"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->item_leica:I

    const-string v0, "item_hasselblad"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->item_hasselblad:I

    const-string v0, "item_art"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->item_art:I

    const-string v0, "item_time"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->item_time:I

    const-string v0, "cure_grid_view"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->cure_grid_view:I

    const-string v0, "tv_tone"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_tone:I

    const-string v0, "tv_gamma"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_gamma:I

    const-string v0, "tv_sect"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_sect:I

    const-string v0, "tv_title"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_title:I

    const-string v0, "llt_title"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->llt_title:I

    const-string v0, "lut_header_list"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->lut_header_list:I

    const-string v0, "rl_spring"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rl_spring:I

    const-string v0, "rg_spring"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rg_spring:I

    const-string v0, "rb_spring_white"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rb_spring_white:I

    const-string v0, "rb_spring_black"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rb_spring_black:I

    const-string v0, "rb_spring01"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rb_spring01:I

    const-string v0, "rb_spring02"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rb_spring02:I

    const-string v0, "rb_spring03"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->rb_spring03:I

    const-string v0, "tv_cure_pre"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->tv_cure_pre:I

    const-string v0, "agc_process_bar"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_process_bar:I

    const-string v0, "agc_tv_process"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_tv_process:I

    const-string v0, "agc_lut_selector"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_lut_selector:I

    const-string v0, "agc_view_pager"

    invoke-static {v0}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$id;->agc_view_pager:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
