.class Lcom/agc/widget/lut/LutSelectorLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutSelectorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutSelectorLayout;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutSelectorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$5;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$5;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-static {p1}, Lcom/agc/widget/lut/LutSelectorLayout;->access$400(Lcom/agc/widget/lut/LutSelectorLayout;)Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$5;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-static {p1}, Lcom/agc/widget/lut/LutSelectorLayout;->access$400(Lcom/agc/widget/lut/LutSelectorLayout;)Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;->onIntensity(I)V

    :cond_0
    double-to-float p1, v0

    const-string p2, "lib_lut_intensity_key"

    invoke-static {p2, p1}, Lcom/Utils/Pref;->setAuxProfilePrefFloatValue(Ljava/lang/String;F)V

    const-wide/16 p1, 0xa

    invoke-static {p1, p2}, Lcom/Utils/VibratorUtil;->Vibrate(J)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
