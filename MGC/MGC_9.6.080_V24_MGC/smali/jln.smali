.class final Ljln;
.super Lngv;
.source "PG"


# instance fields
.field final synthetic a:Lijo;

.field final synthetic b:Ljlr;


# direct methods
.method public constructor <init>(Ljlr;Lijo;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    iput-object p2, p0, Ljln;->a:Lijo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljln;->b:Ljlr;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lngv;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljlr;->q:Loyn;

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
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, v1}, Ljlr;->d(IZ)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Ljlr;->J:Lmkn;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const v0, 0xa

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    :goto_6
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lmkn;->f()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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

    :goto_a
    const-string v0, "Not taking picture because there\'s no active camera."

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ljlr;->p:Lmxa;

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

    nop

    :goto_c
    invoke-virtual {v0}, Ljlr;->e()Z

    move-result v0

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

    :goto_d
    invoke-virtual {v0}, Lmxa;->h()Z

    move-result v0

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

    :goto_e
    iget-object v1, v0, Ljlr;->S:Lkbf;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_10
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    const v1, 0x1d

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

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    sget-object p0, Ljlr;->a:Lsdb;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    const/16 v0, 0x996

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Ljln;->b:Ljlr;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Llyi;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ljln;->b:Ljlr;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_5

    nop

    :goto_1e
    invoke-virtual {p0}, Lggo;->n()V

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_24
    goto :goto_1f

    nop

    nop

    :goto_25
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Ljln;->b:Ljlr;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v0, v0, Llyi;->h:I

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

    :goto_2a
    return-void

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 0

    goto/32 :goto_e

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

    goto/32 :goto_10

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

    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

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

    :goto_3
    iget-object p0, p0, Ljln;->b:Ljlr;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lkbf;->i()Lqpa;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    iget-object p1, p0, Ljln;->a:Lijo;

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

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

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

    :goto_8
    check-cast p0, Loxv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    iget-object p1, p1, Lijo;->b:Loyd;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Ljlr;->S:Lkbf;

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

    :goto_b
    return-void

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

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lqpa;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljhy;->K:Lghe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljln;->b:Ljlr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lghe;->j()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljlr;->P:Ljhy;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lghe;->h()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lmkn;->e()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ljln;->b:Ljlr;

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

    nop

    :goto_4
    iget-object p0, p0, Ljhy;->K:Lghe;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljln;->b:Ljlr;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object p0, p0, Ljlr;->P:Ljhy;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Ljlr;->J:Lmkn;

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
.end method
