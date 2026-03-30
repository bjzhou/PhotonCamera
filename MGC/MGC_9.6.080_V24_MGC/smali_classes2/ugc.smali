.class public abstract Lugc;
.super Luoi;
.source "PG"


# instance fields
.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Luoi;-><init>(JLuoj;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v0, 0x0

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v2, Luol;->f:Luoj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lugc;->e:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v0, 0x18

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final F(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_12

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    move-object p1, p2

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p2, Luft;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const-string v0, "Fatal exception in coroutines machinery for "

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, v0, v1}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const v1, 0x12

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_8

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    if-nez p2, :cond_1

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_16
    if-nez p2, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, p2}, Lrgw;->am(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lugc;->p()Ltzy;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p2, v0, p1}, Luft;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Ltzy;->r()Luad;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x9

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

    :goto_1d
    invoke-static {p0, p2}, Lucg;->l(Luad;Ljava/lang/Throwable;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    :goto_1f
    return-void

    nop

    nop

    :goto_20
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop
.end method

.method public abstract l()Ljava/lang/Object;
.end method

.method public o(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    goto/32 :goto_4

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
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    check-cast p1, Lufi;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    instance-of p0, p1, Lufi;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object p1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

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

    nop

    :goto_c
    iget-object p0, p1, Lufi;->b:Ljava/lang/Throwable;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public abstract p()Ltzy;
.end method

.method public final run()V
    .locals 9

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_1
    :try_start_0
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    goto :goto_a

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    sget-boolean v0, Lufu;->a:Z

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lugc;->p()Ltzy;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lunb;

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lunb;->b:Ltzy;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lunb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ltzy;->r()Luad;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v2, v0}, Lunx;->b(Luad;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v3, Lunx;->a:Lunv;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    if-eq v0, v3, :cond_1

    nop

    nop

    invoke-static {v1, v2, v0}, Lufo;->c(Ltzy;Luad;Ljava/lang/Object;)Luhz;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v4, v0}, Lugc;->F(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lrgw;->aj(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v3, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Luhz;->Q()Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v2, v0}, Lunx;->c(Luad;Ljava/lang/Object;)V

    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Luhz;->Q()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    :cond_3
    invoke-static {v2, v0}, Lunx;->c(Luad;Ljava/lang/Object;)V

    :cond_4
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Ltxx;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const v0, 0xf

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v3, v4

    nop

    nop

    nop

    nop

    :goto_14
    :try_start_3
    invoke-interface {v1}, Ltzy;->r()Luad;

    move-result-object v5

    nop

    invoke-virtual {p0}, Lugc;->l()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v6}, Lugc;->o(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    nop

    nop

    if-nez v7, :cond_6

    nop

    iget v8, p0, Lugc;->e:I

    nop

    nop

    invoke-static {v8}, Luch;->M(I)Z

    move-result v8

    nop

    if-eqz v8, :cond_6

    nop

    nop

    nop

    nop

    sget-object v8, Lugy;->c:Ltzz;

    nop

    nop

    invoke-interface {v5, v8}, Luad;->get(Luac;)Luab;

    move-result-object v5

    nop

    check-cast v5, Lugy;

    nop

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :cond_6
    move-object v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v5, :cond_8

    nop

    invoke-interface {v5}, Lugy;->q()Z

    move-result v8

    nop

    if-nez v8, :cond_8

    nop

    nop

    nop

    invoke-interface {v5}, Lugy;->m()Ljava/util/concurrent/CancellationException;

    move-result-object v5

    nop

    invoke-virtual {p0, v6, v5}, Lugc;->v(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-boolean v6, Lufu;->b:Z

    nop

    if-eqz v6, :cond_7

    nop

    nop

    nop

    invoke-static {v5, v1}, Lunu;->a(Ljava/lang/Throwable;Luao;)Ljava/lang/Throwable;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :cond_7
    invoke-static {v5}, Lrgw;->aj(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    invoke-interface {v1, v5}, Ltzy;->t(Ljava/lang/Object;)V

    goto :goto_16

    nop

    nop

    nop

    :cond_8
    if-eqz v7, :cond_9

    nop

    invoke-static {v7}, Lrgw;->aj(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    invoke-interface {v1, v5}, Ltzy;->t(Ljava/lang/Object;)V

    goto :goto_16

    nop

    nop

    nop

    nop

    :cond_9
    invoke-virtual {p0, v6}, Lugc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    invoke-interface {v1, v5}, Ltzy;->t(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x20

    nop

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
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method
