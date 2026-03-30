.class public final Lrjr;
.super Lrjm;
.source "PG"


# static fields
.field public static final synthetic f:I

.field private static final g:Landroid/util/Property;


# instance fields
.field public final a:Leac;

.field public final b:Lrir;

.field public c:I

.field public d:Z

.field public e:F

.field private h:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    sput-object v0, Lrjr;->g:Landroid/util/Property;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const-class v1, Ljava/lang/Float;

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

    :goto_4
    invoke-direct {v0, v1}, Lrjq;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lrjq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const v1, 0xc

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

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrjw;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    new-instance p1, Leac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x3

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

    :goto_3
    invoke-direct {p1}, Leac;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrjr;->a:Leac;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lrjr;->b:Lrir;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Lrjm;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lrjr;->c:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrjr;->h:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public final b(Leki;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v2, Lrjk;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrjr;->h:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget v4, v4, v5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_7
    iget-object v3, p0, Lrjr;->b:Lrir;

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

    :goto_8
    sget-object v0, Lrjr;->g:Landroid/util/Property;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

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

    :goto_a
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_d
    new-array v2, v1, [F

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v2, 0x14d

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

    :goto_10
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Lrjr;->d:Z

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

    :goto_16
    iget-object v0, p0, Lrjr;->h:Landroid/animation/ObjectAnimator;

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

    :goto_17
    iget-object v0, p0, Lrjr;->h:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

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

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v2, Lrjp;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v4, v2, Lrjk;->c:I

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

    :goto_21
    iput v0, p0, Lrjr;->c:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    iget v3, v3, Lrir;->g:I

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

    :goto_23
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_24
    invoke-direct {v2, p0}, Lrjp;-><init>(Lrjr;)V

    goto/32 :goto_18

    nop

    nop

    :goto_25
    iget-object v0, p0, Lrjr;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput v3, v2, Lrjk;->d:I

    nop

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

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_28
    div-int/2addr v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2c
    iput-object v0, p0, Lrjr;->h:Landroid/animation/ObjectAnimator;

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

    :goto_2d
    iget-object v0, p0, Lrjr;->h:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lrjr;->h:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    const/4 v2, 0x0

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
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_33
    iget-object v4, v3, Lrir;->c:[I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method
