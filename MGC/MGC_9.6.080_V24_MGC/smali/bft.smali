.class final Lbft;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Lbgp;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ldpb;

.field final synthetic e:Lubo;


# direct methods
.method public constructor <init>(Lbgp;Ljava/util/Map;Ldpb;Lubo;Ltzy;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p5}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lbft;->e:Lubo;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lbft;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x2

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

    :goto_5
    iput-object p3, p0, Lbft;->d:Ldpb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lbft;->b:Lbgp;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lbft;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lufs;

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

    :goto_3
    check-cast p2, Ltzy;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lbft;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_6
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

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

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lbft;->b:Lbgp;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p1, Lbgp;->g:Lbob;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lbft;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    iget-object v1, v1, Lbgp;->l:Lbnx;

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

    :goto_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iput v3, p0, Lbft;->a:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v4, Lbfs;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Lbgp;->m:Lbob;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, v3}, Ldpb;->cv(F)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_e
    invoke-interface {p1, v4}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1e

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_13
    iget-object v1, p0, Lbft;->c:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lbft;->b:Lbgp;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Lbft;->a:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v4, v1, v3}, Lbfs;-><init>(Ljava/util/Map;Lubo;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p1, Lbgp;->k:Lbob;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    iget-object p1, p0, Lbft;->b:Lbgp;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_19
    iget-object p1, p0, Lbft;->d:Ldpb;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/high16 v3, 0x42fa0000    # 125.0f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v2, v1, p0}, Lbgp;->f(Ljava/util/Map;Ljava/util/Map;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1c
    invoke-interface {p1, v1}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    goto :goto_27

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x1

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

    :goto_21
    if-eq p0, v0, :cond_2

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_7

    nop

    :goto_23
    goto/32 :goto_0

    nop

    nop

    :goto_24
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

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

    :goto_26
    return-object v0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_24

    nop

    nop

    :goto_28
    iget-object v1, p0, Lbft;->c:Ljava/util/Map;

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

    :goto_29
    iget-object v3, p0, Lbft;->e:Lubo;

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

    :goto_2a
    iget-object v1, p0, Lbft;->b:Lbgp;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Lbgp;->h()Ljava/util/Map;

    move-result-object v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lbft;->b:Lbgp;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p1, v1}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_2e
    invoke-interface {v1, p1}, Lbnx;->d(F)V

    goto/32 :goto_14

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct/range {v0 .. v5}, Lbft;-><init>(Lbgp;Ljava/util/Map;Ldpb;Lubo;Ltzy;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_5
    iget-object v2, p0, Lbft;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lbft;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Lbft;->d:Ldpb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lbft;->b:Lbgp;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iget-object v4, p0, Lbft;->e:Lubo;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x17

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    move-object v5, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
