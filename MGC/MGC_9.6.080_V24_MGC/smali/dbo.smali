.class final Ldbo;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Luis;


# direct methods
.method public constructor <init>(Luis;Ltzy;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ldbo;->d:Luis;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lufs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    check-cast p2, Ltzy;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ldbo;

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

    :goto_4
    invoke-virtual {p0, p1}, Ldbo;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Luag;->a:Luag;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2, p0}, Lufv;->m(Lujf;Ljava/lang/Throwable;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    goto/16 :goto_1a

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Ldbo;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    throw p1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Ldbo;->d:Luis;

    nop

    nop

    :try_start_0
    invoke-interface {v2}, Lujf;->C()Luii;

    move-result-object p1

    nop

    nop

    move-object v1, p1

    nop

    nop

    nop

    :goto_11
    iput-object v2, p0, Ldbo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    iput-object v1, p0, Ldbo;->b:Ljava/lang/Object;

    nop

    nop

    const/4 p1, 0x1

    nop

    iput p1, p0, Ldbo;->c:I

    nop

    nop

    move-object p1, v1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Luii;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Luii;->a(Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    return-object v0

    nop

    :cond_2
    :goto_12
    check-cast p1, Ljava/lang/Boolean;

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    move-object p1, v1

    nop

    nop

    nop

    nop

    check-cast p1, Luii;

    nop

    invoke-virtual {p1}, Luii;->b()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Ltyg;

    nop

    sget-object p1, Ldbq;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    const/4 v3, 0x0

    nop

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lbxs;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v2, p0}, Lufv;->m(Lujf;Ljava/lang/Throwable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Ldbo;->a:Ljava/lang/Object;

    nop

    nop

    :try_start_1
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    :goto_1a
    :try_start_2
    throw p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    iget v1, p0, Ldbo;->c:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ldbo;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p0, p2}, Ldbo;-><init>(Luis;Ltzy;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ldbo;->d:Luis;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
