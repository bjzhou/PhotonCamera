.class public final Luhz;
.super Luns;
.source "PG"


# instance fields
.field private final b:Ljava/lang/ThreadLocal;

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(Luad;Ltzy;)V
    .locals 1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Luhz;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2}, Lunx;->c(Luad;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p2, v0}, Luad;->get(Luac;)Luab;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-interface {p1, v0}, Luad;->get(Luac;)Luab;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Luhz;->P(Luad;Ljava/lang/Object;)V

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p2}, Ltzy;->r()Luad;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    new-instance v0, Ljava/lang/ThreadLocal;

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

    :goto_a
    move-object v0, p1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, v0}, Luad;->plus(Luad;)Luad;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Luaa;->k:Ltzz;

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

    nop

    :goto_e
    sget-object v0, Luia;->a:Luia;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    instance-of p2, p2, Lufp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p2}, Lunx;->b(Luad;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

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

    :goto_11
    sget-object v0, Luia;->a:Luia;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p2, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    invoke-direct {p0, v0, p2}, Luns;-><init>(Luad;Ltzy;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz p2, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_16
    goto/16 :goto_b

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop
.end method


# virtual methods
.method public final P(Luad;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Luhz;->threadLocalIsSet:Z

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

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    new-instance v0, Ltxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Luhz;->b:Ljava/lang/ThreadLocal;

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

    :goto_5
    invoke-direct {v0, p1, p2}, Ltxv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final Q()Z
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    iget-object v0, p0, Luhz;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Luhz;->b:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    return v2

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    goto/32 :goto_0

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    const v0, 0x17

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    iget-boolean v0, p0, Luhz;->threadLocalIsSet:Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final eF(Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_26

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Luhz;->Q()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    :goto_3
    iget-object v0, p0, Luhz;->e:Ltzy;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Ltxv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Luhz;->threadLocalIsSet:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Ltxv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v3}, Lunx;->c(Luad;Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_e
    invoke-static {p1, v0}, Lucg;->m(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v4, Lunx;->a:Lunv;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_11
    if-ne v3, v4, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1, v3}, Lufo;->c(Ltzy;Luad;Ljava/lang/Object;)Luhz;

    move-result-object v2

    nop

    :goto_13
    :try_start_0
    iget-object p0, p0, Luhz;->e:Ltzy;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ltzy;->t(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Ltzy;->r()Luad;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_19
    iget-object v0, p0, Luhz;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x18

    nop

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

    :goto_1b
    check-cast v0, Ltxv;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Luhz;->e:Ltzy;

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

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1, v0}, Lunx;->c(Luad;Ljava/lang/Object;)V

    :goto_21
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v1, v2}, Lunx;->b(Luad;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    :goto_2b
    check-cast v1, Luad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2c
    invoke-virtual {v2}, Luhz;->Q()Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    :goto_2e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v3}, Lunx;->c(Luad;Ljava/lang/Object;)V

    :goto_30
    goto/32 :goto_14

    nop

    nop

    :goto_31
    iget-object v0, p0, Luhz;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
