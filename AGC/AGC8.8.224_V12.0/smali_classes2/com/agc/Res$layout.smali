.class public Lcom/agc/Res$layout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/Res;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "layout"
.end annotation


# static fields
.field public static final activity_about_watermark:I

.field public static final activity_custom_watermark:I

.field public static final agc_activity_default_error:I

.field public static final agc_asv_pop_list_item:I

.field public static final agc_asv_shadow_list_item:I

.field public static final agc_chooser_dialog:I

.field public static final agc_config_load_dialog:I

.field public static final agc_cure_dialog:I

.field public static final agc_dialog_color_mix:I

.field public static final agc_dialog_layout:I

.field public static final agc_first_run_education_view_layout:I

.field public static final agc_focal_control:I

.field public static final agc_fw_dialog_layout:I

.field public static final agc_fw_list_item:I

.field public static final agc_fw_log_overlay:I

.field public static final agc_input_dialog:I

.field public static final agc_input_dialog_item:I

.field public static final agc_input_dialog_title:I

.field public static final agc_item_style_image:I

.field public static final agc_item_style_text:I

.field public static final agc_layout_color_mix:I

.field public static final agc_layout_watermark_item:I

.field public static final agc_library_preference_dialog:I

.field public static final agc_lut_header_text:I

.field public static final agc_lut_item_layout:I

.field public static final agc_lut_pager_layout:I

.field public static final agc_lut_selecotr_layout:I

.field public static final agc_mutiple_window:I

.field public static final agc_patch_preference:I

.field public static final agc_ruler_window:I

.field public static final agc_seekbar_dialog:I

.field public static final agc_watermark_dialog:I

.field public static final agc_wb_pop_window:I

.field public static final hide:I

.field public static final preference_camera_info:I

.field public static final preference_camera_info_item:I

.field public static final preference_with_margin:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "hide"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->hide:I

    const-string v0, "preference_with_margin"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->preference_with_margin:I

    const-string v0, "agc_wb_pop_window"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_wb_pop_window:I

    const-string v0, "agc_asv_pop_list_item"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_asv_pop_list_item:I

    const-string v0, "preference_camera_info"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->preference_camera_info:I

    const-string v0, "preference_camera_info_item"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->preference_camera_info_item:I

    const-string v0, "agc_mutiple_window"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_mutiple_window:I

    const-string v0, "agc_item_style_text"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_item_style_text:I

    const-string v0, "agc_item_style_image"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_item_style_image:I

    const-string v0, "agc_asv_shadow_list_item"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_asv_shadow_list_item:I

    const-string v0, "agc_ruler_window"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_ruler_window:I

    const-string v0, "agc_dialog_layout"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_dialog_layout:I

    const-string v0, "agc_seekbar_dialog"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_seekbar_dialog:I

    const-string v0, "agc_focal_control"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_focal_control:I

    const-string v0, "agc_activity_default_error"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_activity_default_error:I

    const-string v0, "agc_fw_log_overlay"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_fw_log_overlay:I

    const-string v0, "agc_fw_list_item"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_fw_list_item:I

    const-string v0, "agc_fw_dialog_layout"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_fw_dialog_layout:I

    const-string v0, "agc_patch_preference"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_patch_preference:I

    const-string v0, "agc_chooser_dialog"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_chooser_dialog:I

    const-string v0, "agc_input_dialog"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_input_dialog:I

    const-string v0, "agc_input_dialog_item"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_input_dialog_item:I

    const-string v0, "agc_input_dialog_title"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_input_dialog_title:I

    const-string v0, "agc_config_load_dialog"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_config_load_dialog:I

    const-string v0, "agc_library_preference_dialog"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_library_preference_dialog:I

    const-string v0, "agc_dialog_color_mix"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_dialog_color_mix:I

    const-string v0, "agc_layout_color_mix"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_layout_color_mix:I

    const-string v0, "agc_first_run_education_view_layout"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_first_run_education_view_layout:I

    const-string v0, "agc_activity_custom_watermark"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->activity_custom_watermark:I

    const-string v0, "agc_activity_about_watermark"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->activity_about_watermark:I

    const-string v0, "agc_layout_watermark_item"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_layout_watermark_item:I

    const-string v0, "agc_watermark_dialog"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_watermark_dialog:I

    const-string v0, "agc_cure_dialog"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_cure_dialog:I

    const-string v0, "agc_lut_selector_layout"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_lut_selecotr_layout:I

    const-string v0, "agc_lut_header_text"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_lut_header_text:I

    const-string v0, "agc_lut_item_layout"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_lut_item_layout:I

    const-string v0, "agc_lut_pager_layout"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$layout;->agc_lut_pager_layout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
