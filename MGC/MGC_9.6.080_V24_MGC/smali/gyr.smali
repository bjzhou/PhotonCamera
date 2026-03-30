.class public Lgyr;
.super Lgyy;
.source "PG"


# instance fields
.field public final e:Lglm;

.field public final f:Lngo;

.field public final g:Lmyc;

.field public final h:Lndu;

.field public i:Lgyy;

.field public final j:Lrbh;

.field public final k:Liof;


# direct methods
.method public constructor <init>(Lglm;Lngo;Lmyc;Lndu;Lrbh;Liof;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgyr;->e:Lglm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lgyy;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lgyr;->j:Lrbh;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lgyr;->h:Lndu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p2, p0, Lgyr;->f:Lngo;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iput-object p3, p0, Lgyr;->g:Lmyc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iput-object p6, p0, Lgyr;->k:Liof;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final e()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lgyy;->e()I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgyr;->i:Lgyy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgyr;->h:Lndu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3
    invoke-interface {v0}, Lngo;->at()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Lmyc;->d(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lrbh;->s()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, v1}, Lndu;->v(Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lgyr;->g:Lmyc;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Liof;->x()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgyr;->k:Liof;

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

    :goto_d
    invoke-virtual {v0, v1}, Lglm;->y(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lgyr;->e:Lglm;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lgyr;->h:Lndu;

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

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    iget-object v0, p0, Lgyr;->f:Lngo;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-interface {v0, v1}, Lndu;->j(Z)V

    goto/32 :goto_12

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

    goto/32 :goto_10

    nop

    nop

    :goto_15
    iget-object v0, p0, Lgyr;->j:Lrbh;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop
.end method
