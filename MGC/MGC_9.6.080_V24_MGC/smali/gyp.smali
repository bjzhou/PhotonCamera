.class Lgyp;
.super Lgyy;
.source "PG"


# instance fields
.field final synthetic b:Lgyr;


# direct methods
.method public constructor <init>(Lgyr;)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    invoke-direct {p0}, Lgyy;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgyp;->b:Lgyr;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()V
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

    :goto_1
    iput-object p0, v0, Lgyr;->i:Lgyy;

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
    iget-object v0, p0, Lgyp;->b:Lgyr;

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

.method public final e()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

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

.method public f()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgyr;->g:Lmyc;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lrbh;->q()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

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

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    invoke-interface {v0, v1}, Lndu;->j(Z)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lgyr;->j:Lrbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lngo;->al()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lgyr;->h:Lndu;

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

    :goto_a
    iget-object v0, p0, Lgyr;->e:Lglm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Lndu;->v(Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1, v1}, Lglm;->u(ZZ)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Lmyc;->d(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

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

    :goto_13
    iget-object p0, p0, Lgyp;->b:Lgyr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

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

    :goto_15
    goto/32 :goto_d

    nop

    :goto_16
    iget-object v0, p0, Lgyr;->h:Lndu;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Liof;->v()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lgyr;->f:Lngo;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lgyr;->k:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop
.end method
