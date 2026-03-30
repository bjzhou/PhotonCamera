.class public Lcom/google/android/apps/camera/wear/wearappv2/ui/RemoteShutterButtonProgressOverlay;
.super Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a()F
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/RemoteShutterButtonProgressOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 v0, 0x40400000    # 3.0f

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    :goto_8
    const v1, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/RemoteShutterButtonProgressOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    const v2, 0x7f0706d1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    div-float/2addr p0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    const v2, 0x7f0c00cf

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    add-float/2addr v1, v0

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method protected final b()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lnzk;->v(Landroid/view/View;)I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method
