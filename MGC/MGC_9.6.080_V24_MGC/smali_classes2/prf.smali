.class public final Lprf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Point;

.field public final e:Landroid/graphics/Point;

.field public final f:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lprf;->d:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Lprf;->f:Landroid/graphics/Point;

    nop

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

    nop

    :goto_2
    iput-object p2, p0, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput p3, p0, Lprf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput p1, p0, Lprf;->a:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    iput-object p5, p0, Lprf;->e:Landroid/graphics/Point;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/hardware/camera2/params/Face;)Lprf;
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    new-instance v7, Lprf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-object v7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    move-object v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct/range {v0 .. v6}, Lprf;-><init>(ILandroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

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

    :goto_d
    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop
.end method
