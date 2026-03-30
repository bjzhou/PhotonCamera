.class public final Lffc;
.super Lfez;
.source "PG"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public c:F

.field public d:J

.field public e:F

.field public f:F

.field public g:I

.field public h:F

.field public i:F

.field public j:Lezb;

.field public k:Z

.field public l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lfez;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    const/high16 v1, -0x31000000

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

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lffc;->k:Z

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    iput v1, p0, Lffc;->f:F

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

    :goto_5
    const/high16 v1, 0x4f000000

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    iput v0, p0, Lffc;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iput v1, p0, Lffc;->i:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    iput v1, p0, Lffc;->h:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v1, p0, Lffc;->e:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lffc;->l:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    iput-wide v1, p0, Lffc;->d:J

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

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Lffc;->c:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x9

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

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    const v1, 0x17

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean v0, p0, Lffc;->m:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c()F
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lffc;->f:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, v0, Lezb;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    div-float/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_9
    sub-float/2addr p0, v1

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

    :goto_a
    sub-float/2addr v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lffc;->j:Lezb;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_14
    iget v1, v0, Lezb;->h:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final cancel()V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfez;->a:Ljava/util/Set;

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
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    goto :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lffc;->h()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lfez;->a(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto/32 :goto_5

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1c

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lffc;->m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    const v0, 0x7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()F
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

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

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    :goto_6
    const v0, 0x17

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const/high16 v1, 0x4f000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lffc;->j:Lezb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    cmpl-float v1, p0, v1

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

    :goto_e
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_10
    return p0

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p0, v0, Lezb;->i:F

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lffc;->i:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final doFrame(J)V
    .locals 7

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lffc;->e()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    if-ge v0, v1, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_7f

    nop

    nop

    :goto_2
    neg-float v3, v3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lffc;->e()F

    move-result v0

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    goto/32 :goto_7d

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

    :goto_9
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_a
    const-string p2, "Frame must be [%f,%f]. It is %f"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lffc;->d()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Lffc;->e:F

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_5b

    nop

    nop

    :goto_e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lffc;->d()F

    move-result v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_48

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lffc;->j()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Lffc;->g:I

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

    :goto_14
    invoke-virtual {p0, p1}, Lfez;->a(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_86

    nop

    nop

    :goto_18
    iget p1, p0, Lffc;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p1, :cond_5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lffc;->g()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v0, p0, Lffc;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_20
    invoke-static {v0, v2, v5}, Lffd;->a(FFF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lffc;->getRepeatMode()I

    move-result v0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_22
    if-lez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_6
    :goto_23
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, p0, Lffc;->i:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_25
    div-float/2addr v3, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v3, :cond_7

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_27
    iget v0, v0, Lezb;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int/2addr v0, v4

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

    :goto_29
    iget v0, p0, Lffc;->g:I

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

    nop

    :goto_2a
    const v0, 0x4

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2b
    throw p1

    nop

    nop

    :goto_2c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lffc;->d()F

    move-result p1

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lffc;->getRepeatCount()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lffc;->j:Lezb;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_32
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lffc;->m()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-gez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-float/2addr v0, v3

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

    :goto_38
    xor-int/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_39
    cmpl-float p1, p1, v0

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

    nop

    :goto_3a
    if-eq v0, v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3b
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_3d
    float-to-double v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lfez;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3f
    sub-long v3, p1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget p0, p0, Lffc;->f:F

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_42
    sget-object v3, Lffd;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v0, p0, Lffc;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lffc;->getRepeatCount()I

    move-result v0

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_45
    iget-wide v1, p0, Lffc;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_46
    iget-boolean v0, p0, Lffc;->l:Z

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const v1, 0x4e6e6b28    # 1.0E9f

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

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v2, :cond_a

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4a
    iget-boolean v0, p0, Lffc;->m:Z

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4c
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Lffc;->d()F

    move-result v5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p1, p0, Lffc;->j:Lezb;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_54
    cmpg-float v0, p1, p2

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_55
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_43

    nop

    nop

    :goto_58
    iget v0, p0, Lffc;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_59
    iget v0, p0, Lffc;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_5a
    iput-wide p1, p0, Lffc;->d:J

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_40

    nop

    nop

    :goto_5d
    goto/32 :goto_3f

    nop

    nop

    :goto_5e
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0}, Lfez;->b()V

    :goto_61
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_62
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_63
    iput v0, p0, Lffc;->f:F

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_5a

    nop

    nop

    :goto_65
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_66
    cmpl-float v1, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0}, Lffc;->e()F

    move-result p1

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_68
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_69
    long-to-float v3, v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6a
    div-float/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_6b
    if-lez v0, :cond_b

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4d

    nop

    :goto_6c
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0}, Lffc;->e()F

    move-result v2

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

    nop

    nop

    :goto_6e
    invoke-virtual {p0}, Lffc;->h()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_70
    double-to-float v0, v5

    nop

    nop

    :goto_71
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_72
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_73
    if-gez v0, :cond_c

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_58

    nop

    nop

    :goto_74
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_75
    if-nez v0, :cond_d

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_76
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_77
    if-nez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_e
    :goto_78
    goto/32 :goto_60

    nop

    nop

    :goto_79
    iput-wide p1, p0, Lffc;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_7a
    div-float/2addr v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_7b
    iput p1, p0, Lffc;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    if-eqz v5, :cond_f

    nop

    nop

    goto/32 :goto_5d

    nop

    :cond_f
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget p1, p0, Lffc;->c:F

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

    :goto_80
    iget v0, p0, Lffc;->e:F

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget v1, p0, Lffc;->e:F

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_82
    iget-boolean v2, p0, Lffc;->l:Z

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_83
    if-ne v0, v1, :cond_10

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-lez v1, :cond_11

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_85
    iput-boolean v0, p0, Lffc;->m:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_87
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_89
    iget v0, p0, Lffc;->e:F

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    cmpg-float v1, v0, v2

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget p2, p0, Lffc;->h:F

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_8c
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iput p1, p0, Lffc;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    filled-new-array {p2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_2e

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-ltz p1, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-nez v0, :cond_13

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_93
    iput v0, p0, Lffc;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_94
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_95
    iget-boolean v1, p0, Lffc;->k:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_96
    cmp-long v5, v1, v3

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_97
    cmpg-float p1, p1, p2

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p0}, Lffc;->m()Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_99
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {p0}, Lffc;->m()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop
.end method

.method public final e()F
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lffc;->j:Lezb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lffc;->h:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, v0, Lezb;->h:F

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    cmpl-float v1, p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_c
    const/high16 v1, -0x31000000

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xc

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

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lfez;->a(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lffc;->h()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lffc;->m()Z

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lffc;->i(Z)V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lffc;->k:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final getAnimatedFraction()F
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

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

    :goto_1
    iget v0, p0, Lffc;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lffc;->d()F

    move-result v0

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

    :goto_3
    div-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lffc;->j:Lezb;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    sub-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lffc;->m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lffc;->f:F

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    const v1, 0x3

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

    :goto_11
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    sub-float/2addr v1, p0

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

    :goto_14
    invoke-virtual {p0}, Lffc;->e()F

    move-result p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_16
    invoke-virtual {p0}, Lffc;->d()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
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

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    goto/16 :goto_d

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lffc;->e()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lffc;->c()F

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

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

.method public final getDuration()J
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    iget-object p0, p0, Lffc;->j:Lezb;

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

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lezb;->a()F

    move-result p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    const v0, 0x1f

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    float-to-long v0, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lffc;->i(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected final i(Z)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lffc;->k:Z

    nop

    nop

    nop

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
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final isRunning()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lffc;->k:Z

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

    nop
.end method

.method public final j()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lffc;->c:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    neg-float v0, v0

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lffc;->c:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final k(F)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float v0, v0, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lffc;->d()F

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lffc;->e()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide v0, p0, Lffc;->d:J

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

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lffc;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    :goto_a
    float-to-double v0, p1

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

    :goto_b
    iput p1, p0, Lffc;->e:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    double-to-float p1, v0

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lfez;->b()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x18

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

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    iput p1, p0, Lffc;->f:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_18
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, v0, v1}, Lffd;->a(FFF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean v0, p0, Lffc;->l:Z

    nop

    nop

    goto/32 :goto_13

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

    nop

    :goto_1c
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final l(FF)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    cmpl-float v0, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1c

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

    nop

    :goto_2
    cmpl-float v0, p1, v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    const-string p2, "minFrame (%s) must be <= maxFrame (%s)"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    goto/32 :goto_10

    nop

    nop

    :goto_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_2c

    nop

    :goto_8
    goto/32 :goto_2b

    nop

    nop

    :goto_9
    iget v0, v0, Lezb;->i:F

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    iput p2, p0, Lffc;->i:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lffc;->f:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, v1, v0}, Lffd;->a(FFF)F

    move-result p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, p1, p2}, Lffd;->a(FFF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    iput p1, p0, Lffc;->h:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_1a
    float-to-int p1, p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    const v1, -0x800001

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

    :goto_21
    iget v0, p0, Lffc;->h:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_22
    const v1, 0x18

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_23
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Lffc;->k(F)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_29
    iget v0, p0, Lffc;->i:F

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

    :goto_2a
    invoke-static {p2, v1, v0}, Lffd;->a(FFF)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2b
    iget v1, v0, Lezb;->h:F

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_e

    nop

    nop

    :goto_2d
    cmpl-float v0, p1, p2

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

    :goto_2e
    iget-object v0, p0, Lffc;->j:Lezb;

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

    :goto_2f
    add-int v0, v0, v1

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

    :goto_30
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

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

    :goto_31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    :goto_33
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_5

    nop
.end method

.method public final m()Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    cmpg-float p0, p0, v0

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

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Lffc;->c:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    if-ltz p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

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

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const/4 p0, 0x0

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
.end method

.method public final setRepeatMode(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lffc;->m:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Lfez;->setRepeatMode(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x2

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

    :goto_4
    iget-boolean p1, p0, Lffc;->m:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lffc;->j()V

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop
.end method
