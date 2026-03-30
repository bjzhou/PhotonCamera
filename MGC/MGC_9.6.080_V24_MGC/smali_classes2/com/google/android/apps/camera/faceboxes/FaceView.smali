.class public Lcom/google/android/apps/camera/faceboxes/FaceView;
.super Lhwv;
.source "PG"


# instance fields
.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    nop

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

    :goto_1
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_2
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Lhwv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const p0, 0x7f0600cb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceboxes/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const p0, 0x7f0701bb

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    iput-object p2, p0, Lcom/google/android/apps/camera/faceboxes/FaceView;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    new-instance p2, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop
.end method
