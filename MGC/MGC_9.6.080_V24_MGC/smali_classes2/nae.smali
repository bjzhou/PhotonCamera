.class public final synthetic Lnae;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

.field public final synthetic b:Landroid/graphics/Canvas;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/hotshot/HotshotView;Landroid/graphics/Canvas;FF)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lnae;->a:Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lnae;->c:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lnae;->b:Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput p4, p0, Lnae;->d:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    mul-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    if-ne v3, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_21

    nop

    nop

    :goto_7
    iget v2, p0, Lnae;->c:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v1, 0x41700000    # 15.0f

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    const v1, 0x17

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p0, p0, Lnae;->d:F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p1, Lnal;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    iget-object p1, p1, Lnal;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    iget-object v1, p0, Lnae;->b:Landroid/graphics/Canvas;

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

    :goto_12
    iget-object v1, p1, Lnal;->a:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, v2, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Lnac;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    iget v1, v2, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Lnac;->a(Z)F

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v3}, Lnac;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p1, Lnal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Lnae;->a:Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_1b
    div-float/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p1, Lnal;->a:Lnac;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1d
    const/high16 v3, 0x42c80000    # 100.0f

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2, p0, v0, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_23

    nop

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_6

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
