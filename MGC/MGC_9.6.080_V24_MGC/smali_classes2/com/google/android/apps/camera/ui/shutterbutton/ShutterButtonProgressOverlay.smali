.class public Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:I

.field public c:F

.field public d:I

.field public final e:I

.field public final f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lj$/util/Optional;

.field public k:Landroid/animation/AnimatorSet;

.field public l:Landroid/animation/ValueAnimator;

.field public m:I

.field private final n:I

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/view/animation/Interpolator;

.field private final q:Landroid/view/animation/Interpolator;

.field private final r:I

.field private final s:F

.field private t:I

.field private u:I

.field private v:I

.field private final w:Landroid/graphics/RectF;

.field private x:I

.field private y:Landroid/animation/AnimatorSet;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m(IJZ)V
    .locals 6

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v1, v3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_33

    nop

    nop

    :goto_2
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 p4, 0x168

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long v0, p2, v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_4c

    nop

    nop

    :goto_6
    goto/32 :goto_50

    nop

    nop

    :goto_7
    float-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    :goto_a
    cmp-long p1, p2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lt p1, v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    filled-new-array {v3, p4}, [I

    move-result-object p4

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p3, Lieq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v2, p4, :cond_2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v1, v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_13
    const-wide/16 v4, 0xbb8

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    if-gez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_17
    if-nez p4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_5
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1b
    if-gtz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    mul-float/2addr p1, p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_7
    goto/32 :goto_18

    nop

    :goto_1f
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_20
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_30

    nop

    nop

    :goto_22
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 p4, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_25
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_27
    move p1, v2

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2e
    invoke-direct {p3, p0, p4, v0}, Lieq;-><init>(Landroid/view/View;I[B)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->invalidate()V

    goto/32 :goto_46

    nop

    nop

    :goto_30
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_31
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_32
    move p1, v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_33
    const/16 v4, 0x64

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

    :goto_34
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_35
    const p2, 0x40666666    # 3.6f

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    :goto_37
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_43

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_42

    nop

    nop

    :goto_3a
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

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

    :goto_3c
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3d
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_3f
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p4, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_41
    iput v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->m:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_42
    const/4 p1, -0x1

    nop

    nop

    :goto_43
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_45
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_49
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4a
    if-nez p4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-eqz v1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4e
    iget-object p3, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->q:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v0, 0x4

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move p1, v3

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_51
    if-nez p4, :cond_c

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->d:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-wide p2, v4

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_f

    nop

    nop

    :goto_55
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_56
    if-nez p4, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4
    const v0, 0x7f0706ea

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 p1, 0xff

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_9
    iput p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->m:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->o:Landroid/graphics/Paint;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->b()I

    move-result p1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_f
    iput v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->n:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->j:Lj$/util/Optional;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->setVisibility(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->i:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_17
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->x:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1b
    iput p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->f:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->y:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->a()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x7f0706e9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1

    nop

    nop

    :goto_22
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/16 v1, 0x14

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->w:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->p:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->h:Z

    nop

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

    :goto_30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_31
    iput v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_33
    const v1, 0x7f0706e7

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_34
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_36
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_38
    iput v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->s:F

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->q:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3a
    iput v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3b
    iput v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->t:I

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x10c000d

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3f
    const/16 v0, 0x33

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_40
    iput p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->r:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_41
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->a:Landroid/graphics/Paint;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_42
    const v1, 0x1b

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_44
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_46
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->k:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected a()F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

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
.end method

.method protected b()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-static {p0}, Lnzk;->w(Landroid/view/View;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aput v0, v1, v3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->y:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a
    new-array v1, v1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, p0, v2}, Lngx;-><init>(Landroid/view/View;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->y:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->f:I

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

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    const v0, 0x12

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->y:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_13
    aput v0, v1, v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v1, Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-wide/16 v3, 0x85

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

    :goto_19
    new-instance v1, Lngx;

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    :goto_1d
    int-to-float v0, v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1e
    const/4 v3, 0x1

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

    :goto_1f
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->y:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_21
    invoke-direct {v1, p0}, Lngy;-><init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->p:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_25
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_27
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->y:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_29
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_1f

    nop

    nop

    :goto_2a
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v1, Lngy;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public final d(IJZ)V
    .locals 9

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    move v4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    move-wide v2, p2

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

    :goto_8
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    move-object v0, p0

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

    :goto_a
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    move v1, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    :goto_12
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->e(IJZZZLj$/util/Optional;Lj$/util/Optional;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final e(IJZZZLj$/util/Optional;Lj$/util/Optional;)V
    .locals 5

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->k:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_2
    iput-boolean p6, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v2, Lieq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->k:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p7, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->f:I

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p5, -0x1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2, p0, p7, v3}, Lieq;-><init>(Landroid/view/View;I[B)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p7, Lngw;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->q:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_10
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    filled-new-array {p8, v0}, [I

    move-result-object p8

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_12
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_71

    nop

    :goto_14
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->y:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lngx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p5, :cond_3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v4, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_19
    check-cast p8, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->q:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->k:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p5, p2, p3, p4}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->7ecc92917e9c4556cc19f457ddc41af8m(IJZ)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->e:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_72

    nop

    nop

    :goto_21
    aput p7, v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p5}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_23
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aput v4, v3, p5

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p5, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_27
    invoke-virtual {p8, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_28
    aput-object p8, v1, p5

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p8, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput p5, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->t:I

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p8}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_2d
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 p7, 0x14

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p8, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    :goto_30
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, p7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aput-object p7, v1, p1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

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

    nop

    :goto_37
    iget p8, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_38
    if-eqz p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_8
    goto/32 :goto_14

    nop

    nop

    :goto_39
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->k:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_3a
    if-nez p6, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_9
    :goto_3b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_9

    nop

    nop

    :goto_3d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3e
    invoke-static {p8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p8

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3f
    iput-boolean p5, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->g:Z

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->l:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_43
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_44
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_48
    if-nez p5, :cond_a

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_a
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->o:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_4b
    new-array v1, v2, [Landroid/animation/Animator;

    nop

    nop

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

    :goto_4c
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->k:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-wide/16 v0, 0xa7

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance v0, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4f
    if-nez p1, :cond_b

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-boolean p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->g:Z

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_51
    if-nez p8, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_52
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->h:Z

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {v0, p0, p1}, Lngx;-><init>(Landroid/view/View;I)V

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_56
    invoke-direct {p7, p0}, Lngw;-><init>(Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;)V

    goto/32 :goto_31

    nop

    nop

    :goto_57
    iget-object p8, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->k:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/32 :goto_6

    nop

    nop

    :goto_59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->7ecc92917e9c4556cc19f457ddc41af8m(IJZ)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->c()V

    :goto_5b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_15

    nop

    nop

    :goto_5e
    const/4 p5, 0x0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_5f
    iput p8, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->x:I

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_60
    iget p5, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->r:I

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    int-to-float p7, p7

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_62
    new-array v3, v2, [F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_63
    iput p5, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->d:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p7

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_65
    iget-object p8, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->k:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/16 v0, 0x64

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_68
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_6f

    nop

    nop

    :goto_6a
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_6b
    iput-object p7, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->j:Lj$/util/Optional;

    nop

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

    :goto_6c
    invoke-virtual {p7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_6d
    if-nez p1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->y:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_6f
    if-eqz p4, :cond_e

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_e
    goto/32 :goto_3a

    nop

    nop

    :goto_70
    invoke-virtual {p8, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_48

    nop

    nop
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->u:I

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

    nop

    nop

    :goto_1
    add-float/2addr v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    sub-float v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v7, 0x0

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

    nop

    :goto_5
    iget v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->v:I

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

    :goto_6
    iget v2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7
    iget v3, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->s:F

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->m:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->b:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->t:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_18

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_13
    sub-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v5, v0

    nop

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

    :goto_17
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    mul-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v0, v0, -0x5a

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-float v6, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->o:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->t:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_41

    nop

    :goto_20
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_23
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    int-to-float v4, v4

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
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_42

    nop

    :goto_27
    iget v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->c:F

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    mul-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2c
    iget p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->d:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2d
    iget v3, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->s:F

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-float v2, v2

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

    nop

    :goto_2f
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_30
    move-object v3, p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_31
    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_32
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->v:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_35
    sub-float v5, v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_36
    iget v1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->c:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_37
    iget-object v8, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->o:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_38
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_39
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->u:I

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

    :goto_3b
    if-eq v0, v1, :cond_4

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_3c
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->h:Z

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->a:Landroid/graphics/Paint;

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

    :goto_3e
    iget v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->m:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3f
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_40
    div-int/lit8 v2, v1, 0x2

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_41
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->w:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_44
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_46
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->w:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr p4, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p4, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p5, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->v:I

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    div-int/lit8 p5, p5, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    sub-int/2addr p5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    div-int/lit8 p4, p4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
