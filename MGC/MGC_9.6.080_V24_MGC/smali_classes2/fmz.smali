.class public final Lfmz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/app/ActivityManager;

.field public b:F

.field public final c:Lfdo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Lfmz;->c:Lfdo;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/android/apps/camera/ui/captureframe/UrAR/NrBoRltj;->fgqTcOpSx:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Landroid/app/ActivityManager;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    iput v0, p0, Lfmz;->b:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lfdo;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iput p1, p0, Lfmz;->b:F

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    const v0, 0xa

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    invoke-direct {v1, p1, v2}, Lfdo;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lfmz;->a:Landroid/app/ActivityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method
