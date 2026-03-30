.class public final Lfzu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Loyn;

.field public final b:Lgae;

.field public final c:Lgah;

.field public final d:Landroid/view/GestureDetector;

.field public final e:Llyv;

.field public final f:Llyv;

.field private final g:Lpnv;

.field private final h:Loyd;

.field private final i:Loyn;

.field private j:Landroid/graphics/PointF;

.field private final k:Landroid/view/GestureDetector$OnGestureListener;

.field private final l:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpnv;Loyd;Llyv;Llyv;Loyn;Loyn;Lgae;Landroidx/wear/ambient/AmbientDelegate;Lgah;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lfzu;->g:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_2
    new-instance p4, Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p2, Landroid/view/GestureDetector;

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

    :goto_4
    invoke-direct {p4, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p9, p0, Lfzu;->l:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lfzt;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Lfzu;->e:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    iput-object p8, p0, Lfzu;->b:Lgae;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p7, p0, Lfzu;->a:Loyn;

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

    :goto_a
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    iput-object p6, p0, Lfzu;->i:Loyn;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p10, p0, Lfzu;->c:Lgah;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p5, p0, Lfzu;->f:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-direct {v0}, Lfzt;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lfzu;->k:Landroid/view/GestureDetector$OnGestureListener;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p2, p1, v0, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p2, p0, Lfzu;->d:Landroid/view/GestureDetector;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p3, p0, Lfzu;->h:Loyd;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 7

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, p1}, Lqek;-><init>(I)V

    goto/32 :goto_2a

    nop

    nop

    :goto_1
    new-instance v1, Lqek;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Lqek;->a(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v4, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lfzu;->h:Loyd;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_f
    check-cast p1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p0, Lfzu;->l:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lfzu;->j:Landroid/graphics/PointF;

    nop

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

    :goto_13
    if-ne p1, v1, :cond_0

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    :goto_15
    sub-float/2addr v0, v6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_17
    iget-object v1, v3, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sub-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    iget-object v2, p0, Lfzu;->g:Lpnv;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    iget v6, v2, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1d
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1, v1, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    check-cast v1, Lnnm;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Lfzq;->a()Landroid/graphics/RectF;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lfzu;->g:Lpnv;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v4, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    iget v5, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v2, Lfzq;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lfzu;->i:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v1, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p1, Lqek;

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

    :goto_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, v3, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_31
    iget v6, v2, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_32
    invoke-interface {v1, p1}, Lpnv;->d(Ljava/lang/String;)Lpnx;

    move-result-object p1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v1, Lqek;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v2, p1}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3a
    iget v1, v1, Lqek;->a:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1, v4, v0, v2}, Lnnm;->a(Landroid/graphics/PointF;Landroid/graphics/RectF;Z)Landroid/graphics/PointF;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3c
    iget-object p1, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p1}, Lpnu;->g()I

    move-result p1

    nop

    goto/32 :goto_26

    nop

    nop

    nop
.end method
