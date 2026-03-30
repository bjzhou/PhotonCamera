.class public final Lunb;
.super Lugc;
.source "PG"

# interfaces
.implements Luao;
.implements Ltzy;


# instance fields
.field public final a:Lufp;

.field public final b:Ltzy;

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final f:Lueq;


# direct methods
.method public constructor <init>(Lufp;Ltzy;)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lunb;->a:Lufp;

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

    :goto_1
    sget-object p1, Lunc;->a:Lunv;

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

    :goto_2
    iput-object p2, p0, Lunb;->b:Ltzy;

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

    nop

    :goto_3
    invoke-direct {p0, v0}, Lugc;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Lunx;->a(Luad;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p2, Lueq;

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

    nop

    :goto_8
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iput-object p1, p0, Lunb;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lunb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lunb;->r()Luad;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-direct {p2, v0, p1}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Lunb;->f:Lueq;

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

    :goto_e
    const/4 v0, -0x1

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
.end method


# virtual methods
.method public final bW()Luao;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lunb;->b:Ltzy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final bY()V
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

.method public final c(Luad;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lunb;->a:Lufp;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, p1, p0}, Lufp;->f(Luad;Ljava/lang/Runnable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lunb;->e:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lunb;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    sget-boolean v1, Lufu;->a:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v1, p0, Lunb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lunb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lunc;->a:Lunv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop
.end method

.method public final p()Ltzy;
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final r()Luad;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lunb;->b:Ltzy;

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
    return-object p0

    nop

    :goto_2
    invoke-interface {p0}, Ltzy;->r()Luad;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final t(Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lugj;->o(Z)V

    :try_start_0
    invoke-virtual {p0}, Lunb;->r()Luad;

    move-result-object v2

    nop

    nop

    iget-object v3, p0, Lunb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {v2, v3}, Lunx;->b(Luad;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lunb;->b:Ltzy;

    nop

    nop

    invoke-interface {v4, p1}, Ltzy;->t(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Lunx;->c(Luad;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Lugj;->r()Z

    move-result p1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    sget-boolean v0, Lufu;->a:Z

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v2, p0, Lunb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lucg;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Luhu;->a()Lugj;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_7
    invoke-virtual {v1, v0}, Lufp;->cC(Luad;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_3
    invoke-static {v2, v3}, Lunx;->c(Luad;Ljava/lang/Object;)V

    throw p1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    nop

    nop

    goto/32 :goto_1e

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

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Lugj;->m(Z)V

    goto/32 :goto_18

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lugj;->m(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lunb;->b:Ltzy;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0}, Lugj;->n(Lugc;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

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

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v3, p0, Lunb;->e:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v2, p0, Lunb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_1c
    invoke-virtual {p1, v0, p0}, Lufp;->a(Luad;Ljava/lang/Runnable;)V

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lunb;->a:Lufp;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {p0, p1, v2}, Lugc;->F(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Lugj;->m(Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v0}, Ltzy;->r()Luad;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_22
    iget-object v1, p0, Lunb;->a:Lufp;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Luhu;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lugj;->p()Z

    move-result v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_e

    nop

    nop

    :goto_2a
    iput v3, p0, Lunb;->e:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, ", "

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lunb;->a:Lufp;

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

    :goto_3
    const-string v2, "DispatchedContinuation["

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p0, "]"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    const v1, 0xf

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lunb;->b:Ltzy;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-static {v0}, Lufv;->c(Ltzy;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    const v0, 0xa

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p1, Lufj;->a:Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    instance-of p0, p1, Lufj;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lufj;

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
.end method
