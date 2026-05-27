.class public final synthetic Llsp;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lnou;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lllp;Lnwn;Lnou;Lnou;I)V
    .locals 0

    iput p5, p0, Llsp;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llsp;->b:Ljava/lang/Object;

    iput-object p2, p0, Llsp;->d:Ljava/lang/Object;

    iput-object p3, p0, Llsp;->c:Ljava/lang/Object;

    iput-object p4, p0, Llsp;->a:Lnou;

    return-void
.end method

.method public synthetic constructor <init>(Llsr;Lnou;Lnno;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p5, p0, Llsp;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llsp;->b:Ljava/lang/Object;

    iput-object p2, p0, Llsp;->a:Lnou;

    iput-object p3, p0, Llsp;->c:Ljava/lang/Object;

    iput-object p4, p0, Llsp;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llst;Lnou;Lnno;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p5, p0, Llsp;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llsp;->b:Ljava/lang/Object;

    iput-object p2, p0, Llsp;->a:Lnou;

    iput-object p3, p0, Llsp;->c:Ljava/lang/Object;

    iput-object p4, p0, Llsp;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 14

    iget v0, p0, Llsp;->e:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llsp;->b:Ljava/lang/Object;

    iget-object v1, p0, Llsp;->a:Lnou;

    iget-object v2, p0, Llsp;->c:Ljava/lang/Object;

    iget-object v3, p0, Llsp;->d:Ljava/lang/Object;

    new-instance v4, Llpw;

    check-cast v0, Llst;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v2, v3, v5}, Llpw;-><init>(Llst;Lnno;Ljava/util/concurrent/Executor;I)V

    invoke-static {v4}, Lmny;->b(Lnno;)Lnno;

    move-result-object v0

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v1, v0, v2}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Llsp;->b:Ljava/lang/Object;

    iget-object v2, p0, Llsp;->d:Ljava/lang/Object;

    iget-object v3, p0, Llsp;->c:Ljava/lang/Object;

    iget-object v4, p0, Llsp;->a:Lnou;

    :try_start_0
    invoke-static {v3}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmqp;

    invoke-virtual {v3}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v2

    check-cast v5, Lnwn;

    iget-object v6, v5, Lnwn;->b:Lnws;

    check-cast v6, Loyz;

    iget-wide v6, v6, Loyz;->b:J

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iget-object v8, v5, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_1
    iget-object v8, v5, Lnwn;->b:Lnws;

    check-cast v8, Loyz;

    iget-object v12, v8, Loyz;->v:Lnxt;

    iget-boolean v13, v12, Lnxt;->b:Z

    if-nez v13, :cond_2

    invoke-virtual {v12}, Lnxt;->a()Lnxt;

    move-result-object v12

    iput-object v12, v8, Loyz;->v:Lnxt;

    :cond_2
    iget-object v8, v8, Loyz;->v:Lnxt;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v5, Lllp;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    const-string v6, "Failed to get custom timestamps future"

    const/16 v7, 0x11b3

    invoke-static {v5, v6, v7, v3}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_3
    :goto_1
    check-cast v0, Lllp;

    iget-object v0, v0, Lllp;->d:Lmap;

    invoke-static {}, Llif;->a()Llie;

    move-result-object v3

    sget-object v5, Lozv;->u:Lozv;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    sget-object v6, Loyv;->f:Loyv;

    invoke-virtual {v6}, Lnws;->O()Lnwn;

    move-result-object v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v7

    iget-object v9, v6, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_4
    iget-object v9, v6, Lnwn;->b:Lnws;

    move-object v10, v9

    check-cast v10, Loyv;

    iget v11, v10, Loyv;->a:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v10, Loyv;->a:I

    iput-wide v7, v10, Loyv;->b:J

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_5
    iget-object v7, v6, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Loyv;

    iput v1, v8, Loyv;->c:I

    iget v9, v8, Loyv;->a:I

    or-int/2addr v1, v9

    iput v1, v8, Loyv;->a:I

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_6
    iget-object v1, v6, Lnwn;->b:Lnws;

    check-cast v1, Loyv;

    check-cast v2, Lnwn;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Loyz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Loyv;->e:Loyz;

    iget v2, v1, Loyv;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Loyv;->a:I

    iget-object v1, v5, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_7
    iget-object v1, v5, Lnwn;->b:Lnws;

    check-cast v1, Lozv;

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Loyv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lozv;->k:Loyv;

    iget v2, v1, Lozv;->a:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v1, Lozv;->a:I

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lozv;

    invoke-virtual {v3, v1}, Llie;->e(Lozv;)V

    invoke-static {v4}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loym;

    iput-object v1, v3, Llie;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v3, Llie;->e:Ljava/lang/Object;

    invoke-virtual {v3, v12}, Llie;->d(Z)V

    invoke-virtual {v3}, Llie;->a()Llif;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmap;->b(Llif;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Llsp;->b:Ljava/lang/Object;

    iget-object v2, p0, Llsp;->a:Lnou;

    iget-object v3, p0, Llsp;->c:Ljava/lang/Object;

    iget-object v4, p0, Llsp;->d:Ljava/lang/Object;

    new-instance v5, Lcmq;

    check-cast v0, Llsr;

    const/16 v6, 0x12

    invoke-direct {v5, v0, v6}, Lcmq;-><init>(Llsr;I)V

    sget-object v6, Lnnv;->a:Lnnv;

    invoke-static {v2, v5, v6}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v3

    new-instance v4, Llpw;

    invoke-direct {v4, v0, v2, v3, v1}, Llpw;-><init>(Llsr;Lnou;Lnou;I)V

    invoke-static {v4}, Lmny;->b(Lnno;)Lnno;

    move-result-object v0

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {v3, v0, v1}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
