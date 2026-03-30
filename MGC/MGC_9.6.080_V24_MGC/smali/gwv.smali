.class Lgwv;
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

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgwv;->b:Lgwx;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lgwv;->b:Lgwx;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lgwv;->b:Lgwx;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iget-object v1, v1, Lgwx;->g:Loyd;

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

    :goto_8
    cmpg-float v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    if-ltz v1, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1, v0}, Lnxc;->Q(F)V

    goto/32 :goto_1b

    nop

    nop

    :goto_b
    iget-object p0, p0, Lgwx;->f:Lnxc;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lgwv;->b:Lgwx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lgvg;->b(Lgwo;)F

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    iget-object v1, p0, Lgwv;->b:Lgwx;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Lgwx;->m:Lgvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    iget-object v1, v1, Lgwx;->f:Lnxc;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Lgwo;->b:Lgwo;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    iget-object v1, v1, Lgwx;->f:Lnxc;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0, v0}, Lnxc;->O(F)V

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lgwv;->b:Lgwx;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v1}, Lnxc;->z()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public c()V
    .locals 0

    goto/32 :goto_0

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

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public f()V
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
