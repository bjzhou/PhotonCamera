.class public final Lopa;
.super Loqd;

# interfaces
.implements Looz;
.implements Loli;


# instance fields
.field public final a:Loku;

.field public final b:Lola;

.field public final c:Loon;

.field public final d:Loop;

.field public e:Loqh;


# direct methods
.method public constructor <init>(Loku;I)V
    .locals 0

    invoke-direct {p0, p2}, Loqd;-><init>(I)V

    iput-object p1, p0, Lopa;->a:Loku;

    sget-boolean p2, Lopw;->a:Z

    invoke-interface {p1}, Loku;->d()Lola;

    move-result-object p1

    iput-object p1, p0, Lopa;->b:Lola;

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->i(I)Loon;

    move-result-object p1

    iput-object p1, p0, Lopa;->c:Loon;

    sget-object p1, Loos;->a:Loos;

    invoke-static {p1}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object p1

    iput-object p1, p0, Lopa;->d:Loop;

    return-void
.end method

.method private final C()Loqh;
    .locals 4

    iget-object v0, p0, Lopa;->b:Lola;

    sget-object v1, Lora;->c:Lokv;

    invoke-interface {v0, v1}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    check-cast v0, Lora;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lopd;

    invoke-direct {v1, p0}, Lopd;-><init>(Lopa;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3}, Lopx;->l(Lora;ZLomk;I)Loqh;

    move-result-object v0

    iput-object v0, p0, Lopa;->e:Loqh;

    return-object v0
.end method

.method private final D(Lomk;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p2}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lopa;->b:Lola;

    new-instance v0, Lopl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lopl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lonm;->k(Lola;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final E(I)V
    .locals 4

    iget-object v0, p0, Lopa;->c:Loon;

    :cond_0
    iget v1, v0, Loon;->b:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-boolean v0, Lopw;->a:Z

    iget-object v0, p0, Lopa;->a:Loku;

    const/4 v1, 0x4

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    :goto_0
    if-nez v2, :cond_5

    instance-of v1, v0, Lowh;

    if-eqz v1, :cond_5

    invoke-static {p1}, Lopx;->h(I)Z

    move-result p1

    iget v1, p0, Loqd;->f:I

    invoke-static {v1}, Lopx;->h(I)Z

    move-result v1

    if-ne p1, v1, :cond_5

    move-object p1, v0

    check-cast p1, Lowh;

    iget-object p1, p1, Lowh;->a:Lopq;

    invoke-interface {v0}, Loku;->d()Lola;

    move-result-object v0

    invoke-virtual {p1, v0}, Lopq;->e(Lola;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object p1, Loru;->a:Ljava/lang/ThreadLocal;

    invoke-static {}, Loru;->a()Loql;

    move-result-object p1

    invoke-virtual {p1}, Loql;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Loql;->l(Loqd;)V

    return-void

    :cond_2
    invoke-virtual {p1, v3}, Loql;->m(Z)V

    :try_start_0
    iget-object v0, p0, Lopa;->a:Loku;

    invoke-static {p0, v0, v3}, Lopx;->g(Loqd;Loku;Z)V

    :cond_3
    invoke-virtual {p1}, Loql;->o()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {p1, v3}, Loql;->k(Z)V

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Loqd;->B(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v3}, Loql;->k(Z)V

    throw v0

    :cond_4
    invoke-virtual {p1, v0, p0}, Lopq;->d(Lola;Ljava/lang/Runnable;)V

    return-void

    :cond_5
    invoke-static {p0, v0, v2}, Lopx;->g(Loqd;Loku;Z)V

    return-void

    :pswitch_1
    iget-object v1, p0, Lopa;->c:Loon;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Loon;->c(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final F()V
    .locals 5

    iget-object v0, p0, Lopa;->a:Loku;

    instance-of v1, v0, Lowh;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lowh;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_6

    iget-object v1, v0, Lowh;->e:Loop;

    :cond_1
    iget-object v3, v1, Loop;->a:Ljava/lang/Object;

    sget-object v4, Lowi;->b:Loxb;

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lowh;->e:Loop;

    invoke-virtual {v3, v4, p0}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    instance-of v1, v3, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lowh;->e:Loop;

    invoke-virtual {v0, v3, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lopa;->v()V

    invoke-virtual {p0, v2}, Lopa;->k(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return-void
.end method

.method private final G(Ljava/lang/Object;ILomk;)V
    .locals 4

    iget-object v0, p0, Lopa;->d:Loop;

    :cond_0
    iget-object v1, v0, Loop;->a:Ljava/lang/Object;

    instance-of v2, v1, Loro;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Loro;

    invoke-static {v2, p1, p2, p3}, Lopa;->I(Loro;Ljava/lang/Object;ILomk;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lopa;->d:Loop;

    invoke-virtual {v3, v1, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lopa;->w()V

    invoke-direct {p0, p2}, Lopa;->E(I)V

    return-void

    :cond_1
    instance-of p2, v1, Lopc;

    if-eqz p2, :cond_3

    check-cast v1, Lopc;

    iget-object p2, v1, Lopc;->a:Loom;

    invoke-virtual {p2}, Loom;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, v1, Lopc;->b:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lopa;->t(Lomk;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already resumed, but proposed with update "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p2

    :goto_1
    goto :goto_0
.end method

.method private static final H(Lomk;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final I(Loro;Ljava/lang/Object;ILomk;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lopi;

    if-eqz v0, :cond_0

    sget-boolean p0, Lopw;->a:Z

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lopx;->h(I)Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p3, :cond_1

    instance-of p2, p0, Loox;

    if-eqz p2, :cond_3

    instance-of p2, p0, Loot;

    if-nez p2, :cond_3

    :cond_1
    new-instance p2, Loph;

    instance-of v0, p0, Loox;

    if-eqz v0, :cond_2

    check-cast p0, Loox;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    move-object v2, p0

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Loph;-><init>(Ljava/lang/Object;Loox;Lomk;Ljava/lang/Throwable;I)V

    move-object p1, p2

    :cond_3
    :goto_1
    return-object p1
.end method

.method static synthetic z(Lopa;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lopa;->G(Ljava/lang/Object;ILomk;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Lomk;)Loxb;
    .locals 4

    iget-object v0, p0, Lopa;->d:Loop;

    :cond_0
    iget-object v1, v0, Loop;->a:Ljava/lang/Object;

    instance-of v2, v1, Loro;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Loro;

    iget v3, p0, Lopa;->f:I

    invoke-static {v2, p1, v3, p2}, Lopa;->I(Loro;Ljava/lang/Object;ILomk;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lopa;->d:Loop;

    invoke-virtual {v3, v1, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lopa;->w()V

    sget-object p1, Lopb;->a:Loxb;

    return-object p1

    :cond_1
    instance-of p1, v1, Loph;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lomk;)V
    .locals 10

    instance-of v0, p1, Loox;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Loox;

    goto :goto_0

    :cond_0
    new-instance v0, Loqy;

    invoke-direct {v0, p1}, Loqy;-><init>(Lomk;)V

    :goto_0
    iget-object v7, p0, Lopa;->d:Loop;

    :cond_1
    :goto_1
    iget-object v8, v7, Loop;->a:Ljava/lang/Object;

    instance-of v1, v8, Loos;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lopa;->d:Loop;

    invoke-virtual {v1, v8, v0}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    instance-of v1, v8, Loox;

    if-eqz v1, :cond_3

    invoke-static {p1, v8}, Lopa;->H(Lomk;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    instance-of v1, v8, Lopi;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move-object v0, v8

    check-cast v0, Lopi;

    invoke-virtual {v0}, Lopi;->a()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1, v8}, Lopa;->H(Lomk;Ljava/lang/Object;)V

    :cond_4
    instance-of v1, v8, Lopc;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    iget-object v2, v0, Lopi;->b:Ljava/lang/Throwable;

    goto :goto_2

    :cond_5
    :goto_2
    invoke-direct {p0, p1, v2}, Lopa;->D(Lomk;Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    instance-of v1, v8, Loph;

    if-eqz v1, :cond_b

    move-object v1, v8

    check-cast v1, Loph;

    iget-object v3, v1, Loph;->b:Loox;

    if-eqz v3, :cond_8

    invoke-static {p1, v8}, Lopa;->H(Lomk;Ljava/lang/Object;)V

    :cond_8
    instance-of v3, v0, Loot;

    if-eqz v3, :cond_9

    return-void

    :cond_9
    invoke-virtual {v1}, Loph;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, v1, Loph;->e:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lopa;->D(Lomk;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/16 v3, 0x1d

    invoke-static {v1, v0, v2, v3}, Loph;->b(Loph;Loox;Ljava/lang/Throwable;I)Loph;

    move-result-object v1

    iget-object v2, p0, Lopa;->d:Loop;

    invoke-virtual {v2, v8, v1}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_b
    instance-of v1, v0, Loot;

    if-eqz v1, :cond_c

    return-void

    :cond_c
    new-instance v9, Loph;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    move-object v1, v9

    move-object v2, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Loph;-><init>(Ljava/lang/Object;Loox;Lomk;Ljava/lang/Throwable;I)V

    iget-object v1, p0, Lopa;->d:Loop;

    invoke-virtual {v1, v8, v9}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void
.end method

.method public final b(Ljava/lang/Object;Lomk;)V
    .locals 1

    iget v0, p0, Lopa;->f:I

    invoke-direct {p0, p1, v0, p2}, Lopa;->G(Ljava/lang/Object;ILomk;)V

    return-void
.end method

.method public final c(Lopq;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lopa;->a:Loku;

    instance-of v1, v0, Lowh;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lowh;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lowh;->a:Lopq;

    goto :goto_1

    :cond_1
    :goto_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    iget p1, p0, Lopa;->f:I

    :goto_2
    invoke-static {p0, p2, p1}, Lopa;->z(Lopa;Ljava/lang/Object;I)V

    return-void
.end method

.method public final cU()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lola;
    .locals 1

    iget-object v0, p0, Lopa;->b:Lola;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lojf;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Lopi;

    sget-boolean v1, Lopw;->b:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Loxa;->a(Ljava/lang/Throwable;Loli;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    :goto_0
    invoke-direct {p1, v0}, Lopi;-><init>(Ljava/lang/Throwable;)V

    :cond_1
    iget v0, p0, Lopa;->f:I

    invoke-static {p0, p1, v0}, Lopa;->z(Lopa;Ljava/lang/Object;I)V

    return-void
.end method

.method public final g()Loli;
    .locals 2

    iget-object v0, p0, Lopa;->a:Loku;

    instance-of v1, v0, Loli;

    if-eqz v1, :cond_0

    check-cast v0, Loli;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Lopa;->n()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Loro;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lopa;->A(Ljava/lang/Object;Lomk;)Loxb;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Lomk;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lopa;->A(Ljava/lang/Object;Lomk;)Loxb;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lopa;->d:Loop;

    :cond_0
    iget-object v1, v0, Loop;->a:Ljava/lang/Object;

    instance-of v2, v1, Loro;

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Lopc;

    instance-of v3, v1, Loox;

    invoke-direct {v2, p0, p1, v3}, Lopc;-><init>(Loku;Ljava/lang/Throwable;Z)V

    iget-object v4, p0, Lopa;->d:Loop;

    invoke-virtual {v4, v1, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v3, :cond_2

    check-cast v1, Loox;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1, p1}, Lopa;->s(Loox;Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {p0}, Lopa;->w()V

    iget p1, p0, Lopa;->f:I

    invoke-direct {p0, p1}, Lopa;->E(I)V

    return-void
.end method

.method public final l()V
    .locals 1

    sget-boolean v0, Lopw;->a:Z

    iget v0, p0, Lopa;->f:I

    invoke-direct {p0, v0}, Lopa;->E(I)V

    return-void
.end method

.method public final m()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lopa;->y()Z

    move-result v0

    iget-object v1, p0, Lopa;->c:Loon;

    :cond_0
    iget v2, v1, Loon;->b:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lopa;->F()V

    :cond_1
    invoke-virtual {p0}, Lopa;->n()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lopi;

    if-eqz v1, :cond_3

    check-cast v0, Lopi;

    iget-object v0, v0, Lopi;->b:Ljava/lang/Throwable;

    sget-boolean v1, Lopw;->b:Z

    if-eqz v1, :cond_2

    invoke-static {v0, p0}, Loxa;->a(Ljava/lang/Throwable;Loli;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_2
    throw v0

    :cond_3
    iget v1, p0, Lopa;->f:I

    invoke-static {v1}, Lopx;->h(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lopa;->b:Lola;

    sget-object v2, Lora;->c:Lokv;

    invoke-interface {v1, v2}, Lola;->get(Loky;)Lokx;

    move-result-object v1

    check-cast v1, Lora;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lora;->dh()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v1}, Lora;->o()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Loqd;->u(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-boolean v0, Lopw;->b:Z

    if-eqz v0, :cond_4

    invoke-static {v1, p0}, Loxa;->a(Ljava/lang/Throwable;Loli;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_4
    throw v1

    :cond_5
    invoke-virtual {p0, v0}, Loqd;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v2, p0, Lopa;->c:Loon;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Loon;->c(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lopa;->e:Loqh;

    if-nez v1, :cond_6

    invoke-direct {p0}, Lopa;->C()Loqh;

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lopa;->F()V

    :cond_7
    sget-object v0, Lolc;->a:Lolc;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final n()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lopa;->d:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Loph;

    if-eqz v0, :cond_0

    check-cast p1, Loph;

    iget-object p1, p1, Loph;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final p()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lopa;->n()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    invoke-super {p0, p1}, Loqd;->q(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lopa;->a:Loku;

    sget-boolean v1, Lopw;->b:Z

    if-eqz v1, :cond_1

    instance-of v1, v0, Loli;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Loli;

    invoke-static {p1, v0}, Loxa;->a(Ljava/lang/Throwable;Loli;)Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final r()Loku;
    .locals 1

    iget-object v0, p0, Lopa;->a:Loku;

    return-object v0
.end method

.method public final s(Loox;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1, p2}, Loox;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lopa;->b:Lola;

    new-instance v0, Lopl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lopl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lonm;->k(Lola;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t(Lomk;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p2}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lopa;->b:Lola;

    new-instance v0, Lopl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lopl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lonm;->k(Lola;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lopa;->a:Loku;

    invoke-static {v0}, Lopx;->c(Loku;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lopa;->n()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Loro;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lopc;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    :goto_0
    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CancellableContinuation("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "){"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 9

    iget-object p1, p0, Lopa;->d:Loop;

    :cond_0
    iget-object v6, p1, Loop;->a:Ljava/lang/Object;

    instance-of v0, v6, Loro;

    if-nez v0, :cond_6

    instance-of v0, v6, Lopi;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, v6, Loph;

    if-eqz v0, :cond_5

    move-object v0, v6

    check-cast v0, Loph;

    invoke-virtual {v0}, Loph;->a()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-static {v0, v1, p2, v2}, Loph;->b(Loph;Loox;Ljava/lang/Throwable;I)Loph;

    move-result-object v1

    iget-object v2, p0, Lopa;->d:Loop;

    invoke-virtual {v2, v6, v1}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Loph;->b:Loox;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2}, Lopa;->s(Loox;Ljava/lang/Throwable;)V

    :cond_2
    iget-object p1, v0, Loph;->c:Lomk;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lopa;->t(Lomk;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be called at most once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v7, p0, Lopa;->d:Loop;

    new-instance v8, Loph;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object v0, v8

    move-object v1, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Loph;-><init>(Ljava/lang/Object;Loox;Lomk;Ljava/lang/Throwable;I)V

    invoke-virtual {v7, v6, v8}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not completed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lopa;->e:Loqh;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Loqh;->cN()V

    sget-object v0, Lorn;->a:Lorn;

    iput-object v0, p0, Lopa;->e:Loqh;

    return-void
.end method

.method public final w()V
    .locals 1

    invoke-virtual {p0}, Lopa;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lopa;->v()V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 2

    invoke-direct {p0}, Lopa;->C()Loqh;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lopa;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Loqh;->cN()V

    sget-object v0, Lorn;->a:Lorn;

    iput-object v0, p0, Lopa;->e:Loqh;

    :cond_1
    return-void
.end method

.method public final y()Z
    .locals 2

    iget v0, p0, Lopa;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lopa;->a:Loku;

    check-cast v0, Lowh;

    iget-object v0, v0, Lowh;->e:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
