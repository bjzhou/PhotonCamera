.class public final synthetic Lhfl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lhfp;

.field public final synthetic b:Landroid/graphics/PointF;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:Landroid/graphics/PointF;

.field public final synthetic e:Landroid/graphics/Rect;

.field public final synthetic f:Lhfm;

.field public final synthetic g:Lhfn;


# direct methods
.method public synthetic constructor <init>(Lhfp;Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/Rect;Lhfm;Lhfn;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p7, p0, Lhfl;->g:Lhfn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lhfl;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    iput-object p5, p0, Lhfl;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhfl;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhfl;->a:Lhfp;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lhfl;->f:Lhfm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iput-object p4, p0, Lhfl;->d:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, v2, Lhfp;->f:Landroid/animation/PointFEvaluator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1
    invoke-virtual {v4, p1, v1, v3}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    float-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-int/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v6, p0, Lhfl;->g:Lhfn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_41

    nop

    nop

    :goto_6
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v5, v8, v2}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_9
    iget-object v5, v6, Lhfn;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhfs;->a:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_c
    const-string v0, "move"

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v9, v6, Lhfn;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_f
    new-instance v1, Landroid/graphics/Point;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v5, v6, Lhfn;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_12
    sub-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v7, v6, Lhfn;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    iget-object v2, v6, Lhfn;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sub-int v5, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, v2, Lhfp;->i:Ljava/lang/Integer;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    sub-int v5, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v1, v8}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-int/2addr v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lhfl;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    sub-int v7, v1, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1e
    sub-int v5, v1, v5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, v8, v8}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, p0, Lhfl;->e:Landroid/graphics/Rect;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_23
    iget v1, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lhfs;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_26
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_27
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lhfl;->d:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v7, v5, v8}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v7, v8, v5}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2c
    sub-int/2addr v1, v4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2d
    float-to-int v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2e
    float-to-int v0, v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    :goto_30
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v3, p1, v0, v1}, Landroid/animation/PointFEvaluator;->evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, v6, Lhfn;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    goto/32 :goto_49

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_37
    iget v2, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_38
    const v0, 0x2

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_39
    iget v3, v0, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3a
    iget-object v10, v6, Lhfn;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v9, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_10

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v2, v5, v7, v9, v10}, Lhfp;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v5, v6, Lhfn;->a:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->invalidate()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v7, v6, Lhfn;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, v6, Lhfn;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_46
    iget-object v4, v2, Lhfp;->g:Landroid/animation/RectEvaluator;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->c(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const v1, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_49
    iget-object p0, p0, Lhfl;->f:Lhfm;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4a
    iget-object v2, p0, Lhfl;->a:Lhfp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p0, Lhfs;->a:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v7, v6, Lhfn;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_36

    nop

    :goto_4e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v9, v6, Lhfn;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v0, p0, Lhfl;->b:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v1, v2, Lhfp;->h:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
