.class public final Lgdf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgcy;


# instance fields
.field public final a:Lqht;

.field public final b:Lsrr;

.field public final c:[F

.field public final d:[F

.field public e:Z

.field public f:Lj$/time/Instant;

.field public final g:Landroid/view/animation/Interpolator;

.field public final h:Lqjs;

.field public final i:Liof;


# direct methods
.method public constructor <init>(Lqht;Lgdg;Lsrr;)V
    .locals 8

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_31

    nop

    :goto_1
    const v3, 0x3ee147ae    # 0.44f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lgdf;->f:Lj$/time/Instant;

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

    :goto_3
    const v6, 0x3f0f5c29    # 0.56f

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgdf;->a:Lqht;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6
    iput-object v1, p0, Lgdf;->c:[F

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    new-array v1, v0, [F

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

    :goto_8
    new-instance p1, Lhdn;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p2, p3}, Liof;->F(II)Lqjs;

    move-result-object p1

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

    :goto_b
    new-instance v0, Landroid/view/animation/PathInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const/16 v0, 0x10

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const p2, 0x7f130054

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p2, Lhdn;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    iput-object p3, p0, Lgdf;->g:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_12
    invoke-direct {p3, p1, p2}, Lgde;-><init>(Lhdn;Lhdn;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x19

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x3ccccccd    # 0.025f

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_17

    nop

    nop

    :goto_16
    new-instance v1, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v2, Landroid/graphics/PointF;

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

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v3, p3, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p2, v1, v2, v0}, Lhdn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v2, 0x42c80000    # 100.0f

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    new-instance p3, Lgde;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lgdf;->d:[F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-array v0, v0, [F

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

    :goto_21
    check-cast p1, Liof;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p1, p2, v1, v4}, Lhdn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_24
    const v3, 0x3d072b02    # 0.033f

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    iput-object p1, p0, Lgdf;->h:Lqjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_26
    add-int v0, v0, v1

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

    :goto_27
    const v5, 0x3ea8f5c3    # 0.33f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_28
    iput-object p3, p0, Lgdf;->b:Lsrr;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-boolean v0, p0, Lgdf;->e:Z

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

    :goto_2b
    new-instance p2, Landroid/graphics/PointF;

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

    :goto_2c
    const v4, 0x3f28f5c3    # 0.66f

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    const p3, 0x7f130053

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p1, p0, Lgdf;->i:Liof;

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

    :goto_30
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_32
    new-instance v4, Landroid/view/animation/PathInterpolator;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    :goto_34
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_35
    const v3, 0x43858000    # 267.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v4, v5, p3, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p2, p1}, Lgdg;->a(Lqht;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_39
    invoke-direct {p2, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_16

    nop

    nop
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/Frame;Ltas;[FLqiu;Lqjs;)V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-direct {p1, v0}, Lgbe;-><init>(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v4, p4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    move-object v3, p3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

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

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v2, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v6, Lgdd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    new-instance p1, Lgbe;

    nop

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

    :goto_f
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    iget-object p2, p2, Ltas;->c:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p2, Ltas;->b:Lj$/util/Optional;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x19

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

    :goto_15
    invoke-direct/range {v0 .. v5}, Lgdd;-><init>(Lgdf;Z[FLqiu;Lqjs;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v1, p0

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

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2, v6}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1b
    invoke-virtual {v0, p1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v5, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    iput-boolean p1, p0, Lgdf;->e:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
