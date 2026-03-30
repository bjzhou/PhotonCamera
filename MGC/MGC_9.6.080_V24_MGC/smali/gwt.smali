.class Lgwt;
.super Lgws;
.source "PG"


# instance fields
.field final synthetic b:Lgwx;


# direct methods
.method public constructor <init>(Lgwx;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lgws;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgwt;->b:Lgwx;

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

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1, v0}, Lnxc;->O(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

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

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    invoke-interface {p0}, Lnxc;->s()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_6
    iget-object v2, v2, Lgwx;->m:Lgvg;

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

    nop

    :goto_7
    iget-object p0, p0, Lgwx;->f:Lnxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Lgwx;->f:Lnxc;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lgwt;->b:Lgwx;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lgvg;->a()F

    move-result v0

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
    iget-object v2, p0, Lgwt;->b:Lgwx;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1}, Lnxc;->c()F

    move-result v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    iget-object v0, v0, Lgwx;->m:Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    invoke-interface {v0, v1}, Lnxc;->Q(F)V

    goto/32 :goto_9

    nop

    nop

    :goto_10
    iget-object v1, v0, Lgwx;->m:Lgvg;

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

    :goto_11
    iget-object p0, p0, Lgwt;->b:Lgwx;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lgwt;->b:Lgwx;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    div-float/2addr v1, v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_29

    nop

    nop

    :goto_16
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1}, Lnxc;->e()F

    move-result v1

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

    :goto_18
    sget-object v1, Lnwy;->e:Lnwy;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Lgwx;->f:Lnxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    check-cast v1, Ljava/lang/Float;

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

    :goto_1b
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v2, Lgwo;->e:Lgwo;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0, v1}, Lnxc;->U(Lnwy;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Lgvg;->a()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1f
    iget-object v0, v0, Lgwx;->f:Lnxc;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0}, Lnxc;->q()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, v0, Lgwx;->f:Lnxc;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_22
    invoke-interface {v0, v1}, Lnxc;->P(F)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, v1, Lgwx;->f:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lgwt;->b:Lgwx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lgwt;->b:Lgwx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_26
    invoke-static {v2, v1}, Ljava/lang/StrictMath;->max(FF)F

    move-result v0

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

    :goto_27
    div-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2a
    const v1, 0x18

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lgwt;->b:Lgwx;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v2, Lhly;->y:Lhmn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lgwx;->f:Lnxc;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v2}, Lgvg;->b(Lgwo;)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_30
    iget-object v1, v0, Lgwx;->l:Lhoh;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lgwt;->b:Lgwx;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_0
    if-gez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object v0, p0, Lgwt;->b:Lgwx;

    nop

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

    nop

    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lgwx;->f:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_7
    invoke-interface {v2}, Lnxc;->b()F

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lgvg;->a()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    cmpl-float v0, v1, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, v1}, Lnxc;->O(F)V

    :goto_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lgwt;->b:Lgwx;

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
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, v2, Lgwx;->f:Lnxc;

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

    :goto_f
    iget-object v0, p0, Lgwt;->b:Lgwx;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_10
    const/high16 v0, 0x42c80000    # 100.0f

    nop

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

    :goto_11
    invoke-virtual {v0}, Lhco;->i()Z

    move-result v0

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
    iget-object v2, p0, Lgwt;->b:Lgwx;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    iget-object v0, v0, Lgwx;->f:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lgwx;->f:Lnxc;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lgwt;->b:Lgwx;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lgwx;->f:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Lnxc;->b()F

    move-result v1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_1a
    iget-object v0, p0, Lgwt;->b:Lgwx;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    mul-float/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lgwt;->b:Lgwx;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    iget-object v0, v0, Lgwx;->m:Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1e
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

    :goto_1f
    iget-object v1, v0, Lgwx;->f:Lnxc;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_20
    int-to-float v1, v1

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

    :goto_21
    mul-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0}, Lnxc;->L()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    nop

    nop

    :goto_24
    iget-object v0, v0, Lgwx;->f:Lnxc;

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

    :goto_25
    invoke-interface {v1}, Lnxc;->e()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0}, Lnxc;->K()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x17

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, v0, Lgwx;->i:Lhco;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    iget-object p0, p0, Lgwt;->b:Lgwx;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2c
    div-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Lnxc;->N()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop
.end method

.method public c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public d()V
    .locals 0

    goto/32 :goto_0

    nop

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

    nop
.end method

.method public e()V
    .locals 0

    goto/32 :goto_0

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
.end method
