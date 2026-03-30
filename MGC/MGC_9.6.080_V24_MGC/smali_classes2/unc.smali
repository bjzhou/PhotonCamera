.class public final Lunc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lunv;

.field public static final b:Lunv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lunv;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "UNDEFINED"

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    nop

    :goto_5
    const-string v1, "REUSABLE_CLAIMED"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lunc;->a:Lunv;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lunv;

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_b
    new-instance v0, Lunv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lunc;->b:Lunv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Lunv;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public static final a(Ltzy;Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, v3

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    iget-object v6, p0, Lunb;->b:Ltzy;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, p1}, Ltzy;->t(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lunb;->r()Luad;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Lugj;->p()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_7
    iput-object v0, p0, Lunb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lunb;->r()Luad;

    move-result-object v2

    nop

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

    :goto_9
    iput-object v0, p0, Lunb;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    iget-object v1, p0, Lunb;->a:Lufp;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_e
    invoke-static {}, Luhu;->a()Lugj;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2}, Lugj;->m(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0, p0}, Lufp;->a(Luad;Ljava/lang/Runnable;)V

    goto/32 :goto_30

    nop

    nop

    :goto_11
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Lufp;->cC(Luad;)Z

    move-result v1

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

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

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

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Lucg;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v1, Luhu;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    iput v2, p0, Lunb;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

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

    nop

    :goto_1b
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lunb;->r()Luad;

    move-result-object v4

    nop

    nop

    nop

    sget-object v5, Lugy;->c:Ltzz;

    nop

    nop

    invoke-interface {v4, v5}, Luad;->get(Luac;)Luab;

    move-result-object v4

    nop

    check-cast v4, Lugy;

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lugy;->q()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_3

    nop

    invoke-interface {v4}, Lugy;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0, p1}, Lugc;->v(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lrgw;->aj(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    invoke-interface {p0, p1}, Ltzy;->t(Ljava/lang/Object;)V

    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v0, p0, Lunb;->b:Ltzy;

    nop

    nop

    nop

    iget-object v4, p0, Lunb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ltzy;->r()Luad;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v4}, Lunx;->b(Luad;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    sget-object v6, Lunx;->a:Lunv;

    nop

    nop

    nop

    nop

    nop

    if-eq v4, v6, :cond_4

    nop

    nop

    nop

    nop

    invoke-static {v0, v5, v4}, Lufo;->c(Ltzy;Luad;Ljava/lang/Object;)Luhz;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lunb;->a:Lufp;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    sget-boolean v1, Lufu;->a:Z

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :catchall_1
    move-exception p1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

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

    nop

    :goto_22
    const/4 v2, 0x1

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

    :goto_23
    goto/16 :goto_1

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_24
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v2}, Lugj;->o(Z)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_26
    check-cast p0, Lunb;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v2}, Lugj;->m(Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_6
    :try_start_2
    invoke-virtual {v0}, Luhz;->Q()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v5, v4}, Lunx;->c(Luad;Ljava/lang/Object;)V

    :cond_7
    :goto_2a
    invoke-virtual {v1}, Lugj;->r()Z

    move-result p1

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p0, p1}, Ltzy;->t(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_8
    :try_start_3
    invoke-virtual {v0}, Luhz;->Q()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v5, v4}, Lunx;->c(Luad;Ljava/lang/Object;)V

    :cond_9
    throw p1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    nop

    nop

    :try_start_4
    invoke-virtual {p0, p1, v3}, Lugc;->F(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2e
    iput v2, p0, Lunb;->e:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2f
    if-eqz p1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_34
    instance-of v0, p0, Lunb;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_35
    invoke-virtual {v1, v2}, Lugj;->m(Z)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1, p0}, Lugj;->n(Lugc;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop
.end method
