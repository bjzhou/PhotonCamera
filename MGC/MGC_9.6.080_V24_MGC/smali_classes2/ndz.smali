.class public final Lndz;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:Lnne;

.field public b:J

.field public final synthetic c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

.field public d:I

.field private e:Ldyq;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lndz;->d:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p1, v0}, Ldyq;-><init>(Lltd;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lndz;->a:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_5
    invoke-direct {v0, v1}, Lltd;-><init>(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_a
    new-instance v0, Lltd;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x16

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

    :goto_d
    new-instance p1, Ldyq;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    sget-object p1, Lnne;->a:Lnne;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    iput-object p1, p0, Lndz;->e:Ldyq;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lngo;->M(Z)V

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iget-object p0, p0, Lneb;->d:Lngo;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    xor-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j:Lneb;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

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
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v1, 0xb

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

    nop

    :goto_2
    iput-object v0, p0, Lndz;->a:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aput-object v3, v2, v5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iput-wide v0, p0, Lndz;->b:J

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

    :goto_10
    const/16 v4, 0x27f

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p1, 0x1

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

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_0
    iget-object p3, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    if-gtz p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_5b

    nop

    nop

    :goto_2
    const-string p1, "Animations may only be canceled from the same thread as the animation handler"

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p3, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g:Lnec;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_6
    iput-object p2, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p3, p1, Lkfn;->a:F

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
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_51

    nop

    :goto_a
    invoke-interface {v2, v0, v1}, Lscz;->N(FF)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

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

    :goto_c
    const/16 v4, 0x1356

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p2, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_e
    iget-object p3, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    iput p2, v0, Ldyp;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_10
    sub-float v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 p3, 0x41700000    # 15.0f

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_14
    cmpg-float v4, v2, v3

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

    nop

    nop

    :goto_15
    goto :goto_12

    nop

    nop

    :goto_16
    goto/32 :goto_65

    nop

    nop

    :goto_17
    invoke-direct {v0, v1}, Ldyq;-><init>(Lltd;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lndz;->e:Ldyq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_19
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1a
    invoke-interface {p3}, Lnec;->b()V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

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

    :goto_1c
    iget-object p3, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g:Lnec;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    int-to-float v1, v1

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

    :goto_1e
    invoke-direct {v1, p1}, Lltd;-><init>(F)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x16

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    cmpl-float p3, p3, v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_21
    return p4

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3

    nop

    nop

    :goto_23
    const p3, -0x3b5d8000    # -1300.0f

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_24
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v0, Ldyq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_26
    invoke-direct {p1, p0, p2}, Lmgp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ldyp;->f()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x44a28000    # 1300.0f

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5c

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ltz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_2f
    const/4 p4, 0x1

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

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Lndy;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_32
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2}, Ldyc;->b()Z

    move-result p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_34
    neg-float p2, p3

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

    :goto_35
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_36
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getScrollX()I

    move-result p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    new-instance p1, Leng;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, p1}, Ldyp;->h(Ldym;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p3, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

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

    :goto_3b
    new-instance v1, Lltd;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p1, p0, p2}, Leng;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_49

    nop

    nop

    :goto_3d
    invoke-interface {p3}, Lnec;->a()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move v2, v3

    nop

    nop

    :goto_3f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p1, v0, Ldyq;->p:Lkfn;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    throw p0

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput v2, v0, Ldyp;->n:F

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

    :goto_44
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_45
    mul-float/2addr p3, v1

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

    :goto_46
    const/4 p2, 0x2

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

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p1, p0, Lndz;->e:Ldyq;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, p1}, Ldyp;->i(Ldyn;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4b
    sget-object p2, Lnne;->a:Lnne;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1, p2}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_4d
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {p1, v3, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a(FFF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4f
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object p2

    nop

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

    nop

    :goto_50
    iget-boolean p2, p1, Ldyp;->m:Z

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_13

    nop

    nop

    :goto_53
    const v0, 0x466a6000    # 15000.0f

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_54
    iput v3, v0, Ldyp;->o:F

    nop

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

    :goto_55
    check-cast v2, Lscz;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_56
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance p1, Lmgp;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sget-object p2, Lnne;->a:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {p3}, Lnec;->c()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5b
    const p3, 0x3dcccccd    # 0.1f

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, p4}, Ldyp;->c(Z)V

    :goto_5d
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5f
    iget-object p2, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iput-object p2, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_61
    const v1, -0x3f79999a    # -4.2f

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_62
    invoke-static {p4, p3, v1}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_64
    sget-object v2, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_65
    const-string p3, "absMaxVelocity %s must be non-negative"

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {p2, p3, v0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a(FFF)F

    move-result p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p3, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g:Lnec;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    iget-object p4, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_5
    sub-long/2addr p1, p3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x5

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput p1, p0, Lndz;->d:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lsdb;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p4, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p3, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

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

    :goto_13
    const/4 p1, 0x6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide p3, p0, Lndz;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d()Lnne;

    move-result-object p3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    iget-object p4, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lnne;->a:Lnne;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    invoke-static {p1}, Lkjj;->h(Landroid/view/View;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p4, p3}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, p3}, Lndy;->e(Lnne;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_11

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    cmp-long p1, p1, p3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1e
    if-nez p4, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_1f
    const-wide/16 p3, 0x1f4

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

    :goto_20
    if-eqz p4, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p3, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, p1, v1}, Lndy;->b(Lnne;Z)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d()Lnne;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lndz;->a:Lnne;

    nop

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

    :goto_4
    invoke-virtual {p2}, Lnne;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v3, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide v3, p0, Lndz;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    goto/32 :goto_25

    nop

    nop

    :goto_b
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v4, v0, v3}, Lmjv;->x(ILjava/lang/String;Ljava/lang/String;)V

    :goto_e
    goto/32 :goto_37

    nop

    nop

    :goto_f
    sget-object p1, Lnne;->a:Lnne;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_10
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3c

    nop

    nop

    :goto_12
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    const/4 p2, 0x3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lndz;->a:Lnne;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    if-eq p1, p2, :cond_0

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

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

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

    :goto_17
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_18
    return v2

    nop

    :goto_19
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

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

    :goto_1b
    invoke-virtual {p0, v1}, Lndz;->a(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

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

    :goto_1d
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getScrollY()I

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h(Lnne;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    sget-object p1, Lnne;->a:Lnne;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    invoke-virtual {p1, p2}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getScrollX()I

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lnne;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return v2

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_9

    nop

    nop

    :goto_26
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_28
    if-ne v0, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    return v1

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2c
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_10

    nop

    nop

    :goto_2e
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lmjv;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_30
    sget-object p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lsdb;

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

    :goto_31
    goto :goto_2a

    nop

    :goto_32
    goto/32 :goto_29

    nop

    nop

    :goto_33
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p2, Lnne;->a:Lnne;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v3, Lnne;->a:Lnne;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_36
    iput-object p1, p2, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Lnne;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_38
    if-nez p1, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p2, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

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

    nop

    nop

    :goto_3b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3c
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_3f
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    :goto_40
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p2, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

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

    :goto_42
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_11

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-ne p1, v2, :cond_7

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-boolean v0, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

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
.end method
