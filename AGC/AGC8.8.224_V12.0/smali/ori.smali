.class public Lori;
.super Ljava/lang/Object;

# interfaces
.implements Lora;
.implements Lopg;
.implements Lorp;


# instance fields
.field private final a:Loop;

.field public final d:Loop;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorj;->f:Loqk;

    invoke-static {v0}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Lori;->d:Loop;

    const/4 v0, 0x0

    invoke-static {v0}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Lori;->a:Loop;

    return-void
.end method

.method public static final J(Lowr;)Lopf;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lowr;->cQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lowr;->m()Lowr;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lowr;->l()Lowr;

    move-result-object p0

    invoke-virtual {p0}, Lowr;->cQ()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lopf;

    if-eqz v0, :cond_1

    check-cast p0, Lopf;

    return-object p0

    :cond_1
    instance-of v0, p0, Lorl;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic K(Lori;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lori;->z(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method private final L(Ljava/lang/Object;Lorl;Lore;)Z
    .locals 1

    new-instance v0, Lorh;

    invoke-direct {v0, p3, p0, p1}, Lorh;-><init>(Lowr;Lori;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Lowr;->m()Lowr;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v0}, Lowr;->j(Lowr;Lowr;Lowp;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final M(Ljava/lang/Throwable;)Z
    .locals 4

    invoke-virtual {p0}, Lori;->cV()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0}, Lori;->df()Lope;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v3, Lorn;->a:Lorn;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, p1}, Lope;->d(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private static final N(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lorg;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    check-cast p0, Lorg;

    invoke-virtual {p0}, Lorg;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg;->h()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    :cond_1
    instance-of v0, p0, Loqw;

    if-eqz v0, :cond_3

    check-cast p0, Loqw;

    invoke-interface {p0}, Loqw;->cO()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    :cond_3
    instance-of p0, p0, Lopi;

    if-eqz p0, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method private static final O(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    check-cast p0, Lorp;

    invoke-interface {p0}, Lorp;->y()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Loqw;

    if-nez v0, :cond_0

    sget-object p1, Lorj;->a:Loxb;

    return-object p1

    :cond_0
    instance-of v0, p1, Loqk;

    if-nez v0, :cond_1

    instance-of v0, p1, Lore;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lopf;

    if-nez v0, :cond_3

    instance-of v0, p2, Lopi;

    if-nez v0, :cond_3

    check-cast p1, Loqw;

    sget-boolean v0, Lopw;->a:Z

    iget-object v0, p0, Lori;->d:Loop;

    invoke-static {p2}, Lorj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lorj;->c:Loxb;

    return-object p1

    :cond_2
    invoke-virtual {p0, p2}, Lori;->l(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lori;->j(Loqw;Ljava/lang/Object;)V

    return-object p2

    :cond_3
    check-cast p1, Loqw;

    invoke-direct {p0, p1}, Lori;->h(Loqw;)Lorl;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object p1, Lorj;->c:Loxb;

    goto/16 :goto_4

    :cond_4
    instance-of v1, p1, Lorg;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lorg;

    goto :goto_0

    :cond_5
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_6

    new-instance v1, Lorg;

    invoke-direct {v1, v0, v2}, Lorg;-><init>(Lorl;Ljava/lang/Throwable;)V

    :cond_6
    new-instance v3, Lonk;

    invoke-direct {v3}, Lonk;-><init>()V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lorg;->h()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object p1, Lorj;->a:Loxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto/16 :goto_4

    :cond_7
    :try_start_1
    iget-object v4, v1, Lorg;->b:Loom;

    invoke-virtual {v4}, Loom;->c()V

    if-eq v1, p1, :cond_8

    iget-object v4, p0, Lori;->d:Loop;

    invoke-virtual {v4, p1, v1}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object p1, Lorj;->c:Loxb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_4

    :cond_8
    :try_start_2
    sget-boolean v4, Lopw;->a:Z

    invoke-virtual {v1}, Lorg;->g()Z

    move-result v4

    instance-of v5, p2, Lopi;

    if-eqz v5, :cond_9

    move-object v5, p2

    check-cast v5, Lopi;

    goto :goto_1

    :cond_9
    move-object v5, v2

    :goto_1
    if-eqz v5, :cond_a

    iget-object v5, v5, Lopi;->b:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Lorg;->e(Ljava/lang/Throwable;)V

    :cond_a
    invoke-virtual {v1}, Lorg;->d()Ljava/lang/Throwable;

    move-result-object v5

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v6, v4, :cond_b

    move-object v5, v2

    :cond_b
    iput-object v5, v3, Lonk;->a:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    iget-object v3, v3, Lonk;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_c

    invoke-direct {p0, v0, v3}, Lori;->k(Lorl;Ljava/lang/Throwable;)V

    :cond_c
    instance-of v0, p1, Lopf;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lopf;

    goto :goto_2

    :cond_d
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_f

    invoke-interface {p1}, Loqw;->cM()Lorl;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-static {p1}, Lori;->J(Lowr;)Lopf;

    move-result-object v2

    goto :goto_3

    :cond_e
    goto :goto_3

    :cond_f
    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_10

    invoke-virtual {p0, v1, v2, p2}, Lori;->I(Lorg;Lopf;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p1, Lorj;->b:Loxb;

    goto :goto_4

    :cond_10
    invoke-virtual {p0, v1, p2}, Lori;->v(Lorg;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method private final h(Loqw;)Lorl;
    .locals 3

    invoke-interface {p1}, Loqw;->cM()Lorl;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Loqk;

    if-eqz v0, :cond_0

    new-instance v0, Lorl;

    invoke-direct {v0}, Lorl;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lore;

    if-eqz v0, :cond_1

    check-cast p1, Lore;

    invoke-direct {p0, p1}, Lori;->m(Lore;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State should have list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private final j(Loqw;Ljava/lang/Object;)V
    .locals 7

    invoke-virtual {p0}, Lori;->df()Lope;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lope;->cN()V

    sget-object v0, Lorn;->a:Lorn;

    invoke-virtual {p0, v0}, Lori;->D(Lope;)V

    :cond_0
    instance-of v0, p2, Lopi;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lopi;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lopi;->b:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, Lore;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lore;

    invoke-virtual {v0, p2}, Lore;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    new-instance v0, Lopl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lopl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lori;->i(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-interface {p1}, Loqw;->cM()Lorl;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lowr;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lowr;

    :goto_2
    invoke-static {v0, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, Lore;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lore;

    :try_start_1
    invoke-virtual {v4, p2}, Lore;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, Lljr;->aR(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lopl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v5}, Lopl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lowr;->l()Lowr;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lori;->i(Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method private final k(Lorl;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Lowr;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lowr;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lorc;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lore;

    :try_start_0
    invoke-virtual {v2, p2}, Lore;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lljr;->aR(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lopl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lopl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lowr;->l()Lowr;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lori;->i(Ljava/lang/Throwable;)V

    :cond_3
    invoke-direct {p0, p2}, Lori;->M(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final m(Lore;)V
    .locals 2

    new-instance v0, Lorl;

    invoke-direct {v0}, Lorl;-><init>()V

    iget-object v1, v0, Lowr;->d:Loop;

    invoke-virtual {v1, p1}, Loop;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lowr;->c:Loop;

    invoke-virtual {v1, p1}, Loop;->b(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lowr;->k()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lowr;->c:Loop;

    invoke-virtual {v1, p1, v0}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lowr;->o(Lowr;)V

    :goto_0
    invoke-virtual {p1}, Lowr;->l()Lowr;

    move-result-object v0

    iget-object v1, p0, Lori;->d:Loop;

    invoke-virtual {v1, p1, v0}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lori;->E(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final C(Lora;)V
    .locals 1

    sget-boolean v0, Lopw;->a:Z

    if-nez p1, :cond_0

    sget-object p1, Lorn;->a:Lorn;

    invoke-virtual {p0, p1}, Lori;->D(Lope;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lora;->u()V

    invoke-interface {p1, p0}, Lora;->p(Lopg;)Lope;

    move-result-object p1

    invoke-virtual {p0, p1}, Lori;->D(Lope;)V

    invoke-virtual {p0}, Lori;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lope;->cN()V

    sget-object p1, Lorn;->a:Lorn;

    invoke-virtual {p0, p1}, Lori;->D(Lope;)V

    :cond_1
    return-void
.end method

.method public final D(Lope;)V
    .locals 1

    iget-object v0, p0, Lori;->a:Loop;

    invoke-virtual {v0, p1}, Loop;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final E(Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p0}, Lori;->cK()Z

    move-result v0

    sget-object v1, Lorj;->a:Loxb;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Loqw;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lorg;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg;

    invoke-virtual {v1}, Lorg;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lopi;

    invoke-static {p1}, Lori;->O(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v3}, Lopi;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, v1}, Lori;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorj;->c:Loxb;

    if-eq v0, v1, :cond_0

    move-object v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lorj;->a:Loxb;

    move-object v1, v0

    :goto_1
    sget-object v0, Lorj;->b:Loxb;

    if-eq v1, v0, :cond_3

    goto :goto_2

    :cond_3
    return v2

    :cond_4
    :goto_2
    sget-object v0, Lorj;->a:Loxb;

    if-ne v1, v0, :cond_f

    const/4 v0, 0x0

    move-object v1, v0

    :cond_5
    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg;

    if-eqz v4, :cond_a

    monitor-enter v3

    :try_start_0
    move-object v4, v3

    check-cast v4, Lorg;

    invoke-virtual {v4}, Lorg;->c()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lorj;->e:Loxb;

    if-ne v5, v6, :cond_6

    sget-object v1, Lorj;->d:Loxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto/16 :goto_5

    :cond_6
    :try_start_1
    invoke-virtual {v4}, Lorg;->g()Z

    move-result v5

    if-nez v1, :cond_7

    invoke-static {p1}, Lori;->O(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_7
    invoke-virtual {v4, v1}, Lorg;->e(Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Lorg;->d()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v5, :cond_8

    goto :goto_3

    :cond_8
    move-object v0, p1

    :goto_3
    monitor-exit v3

    if-eqz v0, :cond_9

    check-cast v3, Lorg;

    iget-object p1, v3, Lorg;->a:Lorl;

    invoke-direct {p0, p1, v0}, Lori;->k(Lorl;Ljava/lang/Throwable;)V

    :cond_9
    sget-object v1, Lorj;->a:Loxb;

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1

    :cond_a
    instance-of v4, v3, Loqw;

    if-eqz v4, :cond_e

    if-nez v1, :cond_b

    invoke-static {p1}, Lori;->O(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_4

    :cond_b
    :goto_4
    move-object v4, v3

    check-cast v4, Loqw;

    invoke-interface {v4}, Loqw;->cO()Z

    move-result v5

    if-eqz v5, :cond_c

    sget-boolean v3, Lopw;->a:Z

    invoke-direct {p0, v4}, Lori;->h(Loqw;)Lorl;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v5, Lorg;

    invoke-direct {v5, v3, v1}, Lorg;-><init>(Lorl;Ljava/lang/Throwable;)V

    iget-object v6, p0, Lori;->d:Loop;

    invoke-virtual {v6, v4, v5}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3, v1}, Lori;->k(Lorl;Ljava/lang/Throwable;)V

    sget-object v1, Lorj;->a:Loxb;

    goto :goto_5

    :cond_c
    new-instance v4, Lopi;

    invoke-direct {v4, v1}, Lopi;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v3, v4}, Lori;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorj;->a:Loxb;

    if-eq v4, v5, :cond_d

    sget-object v3, Lorj;->c:Loxb;

    if-eq v4, v3, :cond_5

    move-object v1, v4

    goto :goto_5

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot happen in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    sget-object v1, Lorj;->d:Loxb;

    goto :goto_5

    :cond_f
    :goto_5
    sget-object p1, Lorj;->a:Loxb;

    if-ne v1, p1, :cond_10

    :goto_6
    goto :goto_7

    :cond_10
    sget-object p1, Lorj;->b:Loxb;

    if-ne v1, p1, :cond_11

    goto :goto_6

    :cond_11
    sget-object p1, Lorj;->d:Loxb;

    if-ne v1, p1, :cond_12

    const/4 v2, 0x0

    :goto_7
    return v2

    :cond_12
    invoke-virtual {p0, v1}, Lori;->f(Ljava/lang/Object;)V

    return v2
.end method

.method public F(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lori;->E(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lori;->cJ()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected G(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final H()Z
    .locals 1

    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Loqw;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I(Lorg;Lopf;Ljava/lang/Object;)Z
    .locals 4

    :cond_0
    iget-object v0, p2, Lopf;->a:Lopg;

    new-instance v1, Lorf;

    invoke-direct {v1, p0, p1, p2, p3}, Lorf;-><init>(Lori;Lorg;Lopf;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lopx;->l(Lora;ZLomk;I)Loqh;

    move-result-object v0

    sget-object v1, Lorn;->a:Lorn;

    if-eq v0, v1, :cond_1

    return v3

    :cond_1
    invoke-static {p2}, Lori;->J(Lowr;)Lopf;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public cJ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cV()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cZ()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dd()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lori;->d:Loop;

    :goto_0
    iget-object v1, v0, Loop;->a:Ljava/lang/Object;

    instance-of v2, v1, Lowv;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    check-cast v1, Lowv;

    invoke-virtual {v1, p0}, Lowv;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final de(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lori;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorj;->a:Loxb;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lopi;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast p1, Lopi;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lopi;->b:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    :goto_1
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-object v1, Lorj;->c:Loxb;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public final df()Lope;
    .locals 1

    iget-object v0, p0, Lori;->a:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Lope;

    return-object v0
.end method

.method public final dg(ZZLomk;)Loqh;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p3, Lorc;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lorc;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Loqz;

    invoke-direct {v1, p3}, Loqz;-><init>(Lomk;)V

    goto :goto_1

    :cond_1
    sget-boolean v1, Lopw;->a:Z

    move-object v1, p3

    :cond_2
    :goto_1
    move-object v2, v1

    check-cast v2, Lore;

    iput-object p0, v2, Lore;->b:Lori;

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Loqk;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Loqk;

    iget-boolean v4, v4, Loqk;->a:Z

    iget-object v4, p0, Lori;->d:Loop;

    invoke-virtual {v4, v3, v1}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    :cond_4
    instance-of v4, v3, Loqw;

    if-eqz v4, :cond_d

    move-object v4, v3

    check-cast v4, Loqw;

    invoke-interface {v4}, Loqw;->cM()Lorl;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lore;

    invoke-direct {p0, v3}, Lori;->m(Lore;)V

    goto :goto_2

    :cond_5
    sget-object v5, Lorn;->a:Lorn;

    if-eqz p1, :cond_a

    instance-of v6, v3, Lorg;

    if-eqz v6, :cond_a

    monitor-enter v3

    :try_start_0
    move-object v6, v3

    check-cast v6, Lorg;

    invoke-virtual {v6}, Lorg;->d()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_7

    instance-of v8, p3, Lopf;

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Lorg;->h()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    goto :goto_4

    :cond_7
    :goto_3
    move-object v5, v1

    check-cast v5, Lore;

    invoke-direct {p0, v3, v4, v5}, Lori;->L(Ljava/lang/Object;Lorl;Lore;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_8

    monitor-exit v3

    goto :goto_2

    :cond_8
    if-eqz v7, :cond_9

    move-object v5, v1

    :goto_4
    monitor-exit v3

    goto :goto_5

    :cond_9
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1

    :cond_a
    move-object v7, v0

    :goto_5
    if-eqz v7, :cond_c

    if-eqz p2, :cond_b

    invoke-interface {p3, v7}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    check-cast v5, Loqh;

    return-object v5

    :cond_c
    invoke-direct {p0, v3, v4, v2}, Lori;->L(Ljava/lang/Object;Lorl;Lore;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    :cond_d
    if-eqz p2, :cond_10

    instance-of p1, v3, Lopi;

    if-eqz p1, :cond_e

    check-cast v3, Lopi;

    goto :goto_6

    :cond_e
    move-object v3, v0

    :goto_6
    if-eqz v3, :cond_f

    iget-object v0, v3, Lopi;->b:Ljava/lang/Throwable;

    goto :goto_7

    :cond_f
    :goto_7
    invoke-interface {p3, v0}, Lomk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    sget-object p1, Lorn;->a:Lorn;

    return-object p1
.end method

.method public final dh()Z
    .locals 2

    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Loqw;

    if-eqz v1, :cond_0

    check-cast v0, Loqw;

    invoke-interface {v0}, Loqw;->cO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lljr;->G(Lokx;Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Loky;)Lokx;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lljr;->H(Lokx;Loky;)Lokx;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Loky;
    .locals 1

    sget-object v0, Lora;->c:Lokv;

    return-object v0
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 0

    throw p1
.end method

.method protected l(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final minusKey(Loky;)Lola;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lljr;->I(Lokx;Loky;)Lola;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lorp;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lori;->E(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o()Ljava/util/concurrent/CancellationException;
    .locals 3

    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lorg;

    invoke-virtual {v0}, Lorg;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " is cancelling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lori;->z(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v1, v0, Loqw;

    if-nez v1, :cond_3

    instance-of v1, v0, Lopi;

    if-eqz v1, :cond_2

    check-cast v0, Lopi;

    iget-object v0, v0, Lopi;->b:Ljava/lang/Throwable;

    invoke-static {p0, v0}, Lori;->K(Lori;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorb;

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " has completed normally"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lora;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p(Lopg;)Lope;
    .locals 2

    new-instance v0, Lopf;

    invoke-direct {v0, p1}, Lopf;-><init>(Lopg;)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v1, v0, p1}, Lopx;->l(Lora;ZLomk;I)Loqh;

    move-result-object p1

    check-cast p1, Lope;

    return-object p1
.end method

.method public final plus(Lola;)Lola;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lljr;->J(Lokx;Lola;)Lola;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lorb;

    invoke-virtual {p0}, Lori;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lorb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lora;)V

    :cond_0
    invoke-virtual {p0, p1}, Lori;->B(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t()Z
    .locals 4

    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lopi;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg;

    invoke-virtual {v0}, Lorg;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lori;->cZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lori;->N(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 3

    :goto_0
    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Loqk;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Loqk;

    iget-boolean v0, v0, Loqk;->a:Z

    goto :goto_1

    :cond_0
    instance-of v1, v0, Loqv;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lori;->d:Loop;

    move-object v2, v0

    check-cast v2, Loqv;

    iget-object v2, v2, Loqv;->a:Lorl;

    invoke-virtual {v1, v0, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final v(Lorg;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-boolean v0, Lopw;->a:Z

    instance-of v0, p2, Lopi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lopi;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lopi;->b:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lorg;->g()Z

    invoke-virtual {p1}, Lorg;->c()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lorg;->i()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_2

    :cond_2
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    invoke-static {}, Lorg;->i()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_2

    :cond_3
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_17

    check-cast v2, Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {p1}, Lorg;->d()Ljava/lang/Throwable;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v0, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v3, Lorj;->e:Loxb;

    invoke-virtual {p1, v3}, Lorg;->f(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lorg;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lorb;

    invoke-virtual {p0}, Lori;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1, p0}, Lorb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lora;)V

    :goto_3
    move-object v1, v3

    goto :goto_6

    :cond_6
    goto :goto_6

    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    instance-of v7, v7, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v7, v5

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_9
    move-object v6, v1

    :goto_4
    check-cast v6, Ljava/lang/Throwable;

    if-nez v6, :cond_d

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    instance-of v4, v3, Lorv;

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    if-eq v7, v3, :cond_a

    instance-of v7, v7, Lorv;

    if-eqz v7, :cond_a

    move-object v1, v6

    goto :goto_5

    :cond_b
    :goto_5
    check-cast v1, Ljava/lang/Throwable;

    if-nez v1, :cond_e

    :cond_c
    goto :goto_3

    :cond_d
    move-object v1, v6

    :cond_e
    :goto_6
    if-nez v1, :cond_f

    goto :goto_9

    :cond_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v4}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    sget-boolean v4, Lopw;->b:Z

    if-nez v4, :cond_10

    move-object v4, v1

    goto :goto_7

    :cond_10
    invoke-static {v1}, Loxa;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    :goto_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    sget-boolean v6, Lopw;->b:Z

    if-eqz v6, :cond_12

    invoke-static {v5}, Loxa;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    :cond_12
    if-eq v5, v1, :cond_11

    if-eq v5, v4, :cond_11

    instance-of v6, v5, Ljava/util/concurrent/CancellationException;

    if-nez v6, :cond_11

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v5}, Lljr;->aR(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_13
    :goto_9
    monitor-exit p1

    if-eqz v1, :cond_14

    if-eq v1, v0, :cond_14

    new-instance p2, Lopi;

    invoke-direct {p2, v1}, Lopi;-><init>(Ljava/lang/Throwable;)V

    :cond_14
    if-eqz v1, :cond_16

    invoke-direct {p0, v1}, Lori;->M(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v1}, Lori;->G(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p2

    check-cast v0, Lopi;

    invoke-virtual {v0}, Lopi;->a()Z

    :cond_16
    invoke-virtual {p0, p2}, Lori;->l(Ljava/lang/Object;)V

    iget-object v0, p0, Lori;->d:Loop;

    invoke-static {p2}, Lorj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Lori;->j(Loqw;Ljava/lang/Object;)V

    return-object p2

    :cond_17
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    goto :goto_b

    :goto_a
    throw p2

    :goto_b
    goto :goto_a
.end method

.method public final y()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Lori;->dd()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg;

    invoke-virtual {v1}, Lorg;->d()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lopi;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lopi;

    iget-object v1, v1, Lopi;->b:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Loqw;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lorb;

    invoke-static {v0}, Lori;->N(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lorb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lora;)V

    :cond_3
    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be cancelling child in this state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final z(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lorb;

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lori;->a()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {v0, p2, p1, p0}, Lorb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lora;)V

    :cond_2
    return-object v0
.end method
