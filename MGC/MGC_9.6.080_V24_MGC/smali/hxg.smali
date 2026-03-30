.class public final Lhxg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lnpa;

.field public final b:Lnpa;

.field public final c:Lnpa;

.field public final d:Landroid/os/Handler;

.field public final e:I

.field public f:F

.field public g:I

.field public h:Z

.field public final i:Landroid/animation/ValueAnimator;

.field public final j:Landroid/animation/ValueAnimator;

.field public k:Z

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public final p:Ljava/lang/Runnable;

.field private q:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lprf;Landroid/graphics/Matrix;I)V
    .locals 4

    goto/32 :goto_35

    nop

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

    goto/32 :goto_4b

    nop

    nop

    :goto_1
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 p2, 0x1f4

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

    nop

    :goto_3
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, p0, Lhxg;->l:F

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_6
    const-string v2, "main"

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lfbv;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 p3, 0xa

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p1, Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lfbv;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lhxg;->d:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    invoke-direct {p2, p0, p3, v1}, Ldwi;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_11
    const-string v3, "Rectangle Path 1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-direct {p2}, Leac;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput p3, p0, Lhxg;->e:I

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

    :goto_16
    const/16 p1, 0xcc

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lhxg;->p:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lnpa;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "ring_object 4"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p2, p0, p3, v1}, Ldwi;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Lhxg;->c:Lnpa;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    iput-object p1, p0, Lhxg;->j:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, v1}, Lfbv;-><init>([Ljava/lang/String;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v1, p0, v2}, Lhsx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    :goto_26
    filled-new-array {p1, v0}, [I

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_29
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2a
    const/16 p3, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    const-string v3, "Stroke 1"

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

    :goto_2c
    new-array p1, p1, [F

    nop

    nop

    fill-array-data p1, :array_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, v1}, Lfbv;-><init>([Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p2, Lhxf;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2f
    new-instance p2, Ldwi;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v1, Lhsx;

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

    :goto_31
    new-instance p2, Ldwi;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p2, p0}, Lhxf;-><init>(Lhxg;)V

    goto/32 :goto_3

    nop

    nop

    :goto_33
    const-string v1, "star_2"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v0, v3}, Lfbv;-><init>([Ljava/lang/String;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p1, p2}, Lhxg;->c(Lprf;Landroid/graphics/Matrix;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v0, Lnpa;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_38
    iput-object p1, p0, Lhxg;->i:Landroid/animation/ValueAnimator;

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

    nop

    :goto_39
    invoke-direct {v0, v1}, Lnpa;-><init>(I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v0, p0, Lhxg;->b:Lnpa;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v2, "temp"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v0, v1}, Lnpa;-><init>(I)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_42
    invoke-direct {p2}, Leac;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v0, v1}, Lnpa;-><init>(I)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p2, p0}, Lhxe;-><init>(Lhxg;)V

    goto/32 :goto_4c

    nop

    nop

    :goto_45
    const/4 v1, 0x0

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

    nop

    :goto_46
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_47
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_4f

    nop

    nop

    :goto_49
    const-wide/16 p2, 0xfa

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

    :goto_4a
    new-instance v0, Lnpa;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4b
    iput-boolean v0, p0, Lhxg;->k:Z

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

    nop

    :goto_4c
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v0, v2}, Lfbv;-><init>([Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance p2, Leac;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance p2, Lhxe;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_50
    iput v1, p0, Lhxg;->m:F

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v0, Lfbv;

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

    :goto_52
    iput-object v0, p0, Lhxg;->a:Lnpa;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_53
    new-instance p2, Leac;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_54
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_55
    new-instance v0, Lfbv;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_56
    iput v1, p0, Lhxg;->n:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iput v1, p0, Lhxg;->o:F

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
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhxg;->i:Landroid/animation/ValueAnimator;

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

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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

    :goto_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lhxg;->k:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lhxg;->c:Lnpa;

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

    :goto_7
    iput v0, p0, Lhxg;->f:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0xcc

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Lhxg;->g:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lhxg;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lhxg;->i:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    const/4 v0, 0x0

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

    :goto_10
    iget v0, v0, Lnpa;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final b(Z)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhxg;->d:Landroid/os/Handler;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_14

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-object v1, p0, Lhxg;->p:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lhxg;->d:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const-wide/16 v1, 0x1f4

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

    :goto_c
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x6

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_10
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lhxg;->p:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lhxg;->h:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-long p0, p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget p0, p0, Lhxg;->e:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_19
    const v1, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide/16 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lhxg;->j:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final c(Lprf;Landroid/graphics/Matrix;)V
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    mul-float/2addr p1, p2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lprf;->c:Landroid/graphics/Rect;

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

    :goto_5
    sub-float v1, v0, p2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x18

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

    :goto_7
    iget p2, p0, Lhxg;->m:F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    iget-boolean p1, p0, Lhxg;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_c
    cmpl-float p1, p1, v0

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

    :goto_d
    sub-float/2addr p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3b

    nop

    nop

    :goto_10
    iget p2, p0, Lhxg;->l:F

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    const/high16 p2, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_13
    if-gtz p1, :cond_2

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

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_14
    int-to-long v0, p0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p2, p0, Lhxg;->p:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1c
    iput p1, p0, Lhxg;->m:F

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lhxg;->d:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1f
    add-float/2addr v0, p2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_20
    iget-object p1, p0, Lhxg;->b:Lnpa;

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

    :goto_21
    cmpg-float v1, p1, v1

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

    nop

    :goto_22
    iget-object p2, p0, Lhxg;->p:Ljava/lang/Runnable;

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

    :goto_23
    sub-float/2addr p1, p2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    invoke-virtual {p1, p2}, Lnpa;->a(F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    mul-float/2addr p2, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_29
    iget v0, v0, Lnpa;->a:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    if-nez p1, :cond_5

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, p2}, Lnpa;->a(F)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, p1}, Lnpa;->a(F)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget p2, p0, Lhxg;->m:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_32
    iput p1, p0, Lhxg;->l:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lhxg;->c:Lnpa;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_34
    iget-object p1, p0, Lhxg;->q:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :goto_36
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lhxg;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lhxg;->c:Lnpa;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p1, p0, Lhxg;->d:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3a
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    :goto_3c
    goto/32 :goto_8

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object p2, p0, Lhxg;->q:Landroid/graphics/Matrix;

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_34

    nop

    nop

    :goto_40
    iget p2, p0, Lhxg;->l:F

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

    :goto_41
    iput p1, p0, Lhxg;->o:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

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

    :goto_43
    iget-object p1, p0, Lhxg;->a:Lnpa;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_44
    iput p1, p0, Lhxg;->n:F

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_28

    nop

    nop

    :goto_46
    new-instance v0, Landroid/graphics/RectF;

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

    :goto_47
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget p0, p0, Lhxg;->e:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget v2, v2, Lnpa;->a:F

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

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

    :goto_4
    const v1, 0x9

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhxg;->c:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "ViewfinderFace: Center: %f,%f / Radius: %f"

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

    :goto_7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_f

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

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

    :goto_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

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

    :goto_e
    return-object p0

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Lhxg;->b:Lnpa;

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

    :goto_11
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

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

    :goto_14
    iget v1, v1, Lnpa;->a:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lhxg;->a:Lnpa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    iget p0, p0, Lnpa;->a:F

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
.end method
