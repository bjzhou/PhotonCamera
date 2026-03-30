.class public abstract Ljf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final a:F

.field private final b:I

.field public final c:Landroid/view/View;

.field public d:Z

.field private final e:I

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:I

.field private final i:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    div-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-array v1, v0, [I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Ljf;->a:F

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

    nop

    :goto_5
    iput-object v1, p0, Ljf;->i:[I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_12
    iput p1, p0, Ljf;->e:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput p1, p0, Ljf;->b:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x2

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

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1a
    iput-object p1, p0, Ljf;->c:Landroid/view/View;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public abstract a()Lgm;
.end method

.method public b()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop
.end method

.method protected c()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lgm;->k()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljf;->a()Lgm;

    move-result-object p0

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

    :goto_4
    const/4 p0, 0x1

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

    :goto_5
    invoke-interface {p0}, Lgm;->u()Z

    move-result v0

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

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljf;->f:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ljf;->c:Landroid/view/View;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ljf;->g:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Ljf;->c:Landroid/view/View;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Ljf;->h:I

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9e

    nop

    nop

    :goto_5
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_8
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_9
    iput-object p2, p0, Ljf;->f:Ljava/lang/Runnable;

    nop

    :goto_a
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_1
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p2, p0, Ljf;->g:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_13
    const/4 v7, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    int-to-float v4, v4

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

    :goto_15
    const v1, 0xd

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move p2, v1

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

    :goto_17
    invoke-interface {v4}, Lgm;->u()Z

    move-result v5

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_18
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    :goto_19
    goto/16 :goto_9a

    nop

    nop

    :goto_1a
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    cmpg-float p2, p2, v4

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_62

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_22
    move-object v5, v4

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_23
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v5}, Ljb;->isShown()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p2, p0, v4, v0}, Lau;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v4, 0x12

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto/32 :goto_2a

    nop

    nop

    :goto_2a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Ljf;->b()Z

    move-result p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2d
    int-to-long v4, v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Ljf;->d()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    :goto_30
    cmpl-float v5, p2, v5

    nop

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

    :goto_31
    add-float/2addr v4, v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_32
    if-nez p2, :cond_6

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

    :cond_6
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_34
    invoke-virtual {v6, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_35
    if-ne v4, v1, :cond_7

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Ljf;->a()Lgm;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_38
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_39
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-boolean p2, p0, Ljf;->d:Z

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_3b
    move p2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_3c
    if-nez v6, :cond_8

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_8
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_3d
    if-ne p2, v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_3e
    move-wide v3, v5

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-ltz v4, :cond_a

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_70

    nop

    nop

    :goto_40
    goto/16 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sub-int/2addr v5, v6

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_43
    aget v7, v7, v1

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_44
    if-gez v5, :cond_b

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :cond_b
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz p2, :cond_c

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_c
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget v0, p0, Ljf;->e:I

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v5, v6, v3}, Ljb;->a(Landroid/view/MotionEvent;I)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_49
    iget v4, p0, Ljf;->b:I

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

    :goto_4a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-gez v6, :cond_d

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p2, p0, Ljf;->f:Ljava/lang/Runnable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance p2, Lau;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_e

    nop

    nop

    :goto_50
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_51
    iget v3, p0, Ljf;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-eqz p2, :cond_e

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_a1

    nop

    nop

    :goto_53
    invoke-direct {p2, p0, v4, v0}, Lau;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_54
    int-to-long v4, v0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_55
    cmpl-float v6, v4, v5

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_56
    iget-object p2, p0, Ljf;->g:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    neg-int v3, v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_58
    neg-float v5, v0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_5b
    iget-object p2, p0, Ljf;->f:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    cmpg-float v4, v4, v5

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_5d
    invoke-virtual {v6, v3, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget v0, p0, Ljf;->a:F

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v3, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_61
    return v2

    nop

    :goto_62
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    neg-int v4, v4

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_64
    if-gez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {v4}, Lgm;->bU()Landroid/widget/ListView;

    move-result-object v4

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

    nop

    :goto_66
    goto :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_68
    if-eqz p2, :cond_10

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :cond_10
    :goto_69
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p0}, Ljf;->d()V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_6d
    iput-object p2, p0, Ljf;->g:Ljava/lang/Runnable;

    nop

    nop

    :goto_6e
    goto/32 :goto_12

    nop

    nop

    :goto_6f
    if-eqz v5, :cond_11

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :cond_11
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_71
    invoke-virtual {v3, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_d

    nop

    nop

    :goto_72
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    aget v4, v3, v2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_74
    new-instance p2, Lau;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_76
    if-ltz p2, :cond_12

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_77
    check-cast v5, Ljb;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_78
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_79
    aget v3, v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7a
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_7b
    const/4 v9, 0x0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_7c
    iget v0, p0, Ljf;->h:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v7, p0, Ljf;->i:[I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7e
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_7f
    sub-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_67

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_82
    if-eqz v4, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_13
    :goto_83
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_84
    goto :goto_83

    nop

    :goto_85
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0}, Ljf;->c()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto :goto_83

    nop

    :goto_88
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_89
    if-ne v4, v5, :cond_14

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_a3

    nop

    nop

    :goto_8a
    aget v3, v3, v1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    const/16 v4, 0x11

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8c
    move p2, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v3, p0, Ljf;->c:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_8e
    add-float/2addr v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_8f
    iget-boolean p1, p0, Ljf;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_90
    iget-object v3, p0, Ljf;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_92
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_93
    if-nez p2, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_c

    nop

    nop

    :goto_94
    if-ne p2, v0, :cond_16

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move p2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_a0

    nop

    nop

    :goto_99
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :goto_9a
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_9a

    nop

    nop

    :goto_9c
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_9d
    return v1

    nop

    nop

    :goto_9e
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v3, p0, Ljf;->c:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-nez v3, :cond_17

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-nez p1, :cond_18

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_18
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v3, p0, Ljf;->i:[I

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-ne v4, v0, :cond_19

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    :cond_19
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_a4
    if-nez v4, :cond_1a

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_1a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a5
    move p2, v1

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_a6
    goto/16 :goto_e

    nop

    :goto_a7
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ljf;->h:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

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

    :goto_2
    const/4 p1, -0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Ljf;->f:Ljava/lang/Runnable;

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

    :goto_4
    iput-boolean p1, p0, Ljf;->d:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

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
    iget-object p0, p0, Ljf;->c:Landroid/view/View;

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

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
