.class final Lbgb;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Lbgp;

.field final synthetic c:F

.field final synthetic d:Labl;

.field private synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbgp;FLabl;Ltzy;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lbgb;->c:F

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
    iput-object p3, p0, Lbgb;->d:Labl;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbgb;->b:Lbgp;

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

    :goto_4
    invoke-direct {p0, p1, p4}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 p1, 0x2

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


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

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
    check-cast p2, Ltzy;

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

    :goto_2
    check-cast p1, Lake;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lbgb;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lbgb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_26

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_0
    :try_start_0
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v4, v1, Lucp;->a:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

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

    nop

    nop

    :goto_5
    iget-object v4, p0, Lbgb;->b:Lbgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v6, v5}, Ljava/lang/Float;-><init>(F)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p1, Lake;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v4, p0, Lbgb;->b:Lbgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_b
    iget-object v4, v4, Lbgp;->f:Lbob;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_d
    goto/16 :goto_1

    nop

    :catchall_0
    move-exception p1

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

    :goto_e
    invoke-direct {v1}, Lucp;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_f
    iget-object p1, p0, Lbgb;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v2}, Lbgp;->j(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v2}, Lbgp;->j(Z)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v4, p0, Lbgb;->b:Lbgp;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    iget-object v0, v0, Lbgp;->f:Lbob;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, v3}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lbgb;->b:Lbgp;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lbgb;->b:Lbgp;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    throw p1

    nop

    nop

    :goto_1a
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lbgb;->b:Lbgp;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1f
    new-instance v6, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v4}, Lbnx;->b()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4, v5}, Lbgp;->j(Z)V

    :try_start_1
    iget v4, v1, Lucp;->a:F

    nop

    nop

    invoke-static {v4}, Labb;->a(F)Laba;

    move-result-object v6

    nop

    nop

    iget v4, p0, Lbgb;->c:F

    nop

    new-instance v7, Ljava/lang/Float;

    nop

    nop

    invoke-direct {v7, v4}, Ljava/lang/Float;-><init>(F)V

    iget-object v8, p0, Lbgb;->d:Labl;

    nop

    nop

    nop

    new-instance v9, Lbga;

    nop

    invoke-direct {v9, p1, v1}, Lbga;-><init>(Lake;Lucp;)V

    iput v5, p0, Lbgb;->a:I

    nop

    nop

    const/4 v11, 0x4

    nop

    nop

    move-object v10, p0

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v6 .. v11}, Laba;->j(Laba;Ljava/lang/Object;Labl;Lubk;Ltzy;I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    invoke-interface {v4, v6}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v1, Lucp;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_25
    const/4 v3, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    iget-object p1, p0, Lbgb;->b:Lbgp;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v4, v4, Lbgp;->e:Lbnx;

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

    :goto_28
    iget-object p1, p1, Lbgp;->f:Lbob;

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

    :goto_29
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x18

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    iget v5, p0, Lbgb;->c:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_16

    nop

    :goto_2e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, p0, Lbgb;->a:I

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

    :goto_30
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1, v3}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lbgb;

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

    nop

    :goto_4
    const v1, 0xe

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

    :goto_5
    iget-object p0, p0, Lbgb;->d:Labl;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, v0, Lbgb;->e:Ljava/lang/Object;

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

    :goto_8
    invoke-direct {v0, v1, v2, p0, p2}, Lbgb;-><init>(Lbgp;FLabl;Ltzy;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lbgb;->b:Lbgp;

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
    const v0, 0x14

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

    :goto_d
    iget v2, p0, Lbgb;->c:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop
.end method
