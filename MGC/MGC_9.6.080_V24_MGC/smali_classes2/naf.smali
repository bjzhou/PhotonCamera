.class public final Lnaf;
.super Lffl;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/hotshot/HotshotView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotView;)V
    .locals 0

    goto/32 :goto_2

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
    invoke-direct {p0}, Lffl;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnaf;->a:Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lffk;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    :goto_5
    mul-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    const v0, 0x9

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnaf;->a:Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lnaf;->a:Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lnaf;->a:Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

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

    :goto_11
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Landroid/graphics/RectF;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_15
    iget-object v1, p0, Lnaf;->a:Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    mul-float/2addr v1, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    const v1, 0x5

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

    :goto_18
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
