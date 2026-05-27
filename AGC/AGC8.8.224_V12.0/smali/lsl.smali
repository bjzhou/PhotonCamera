.class public final Llsl;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llsl;->a:Ljava/util/List;

    iput-object p2, p0, Llsl;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lnou;
    .locals 11

    move-object v1, p1

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object p1, p0, Llsl;->a:Ljava/util/List;

    check-cast p1, Lmyu;

    iget p1, p1, Lmyu;->c:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Llsl;->a:Ljava/util/List;

    check-cast v0, Lmvv;

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llsi;

    invoke-interface {v2}, Llsi;->b()Lnou;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Llsj;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v8, p1, v2}, Llsj;-><init>(Llsl;Ljava/util/List;II)V

    invoke-static {v0}, Lmny;->b(Lnno;)Lnno;

    move-result-object v2

    sget-object v3, Lnnv;->a:Lnnv;

    iget-object v0, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Llst;

    iget-object v0, v0, Llst;->c:Lmnb;

    invoke-virtual {v0}, Lmnb;->c()Lnou;

    move-result-object v0

    invoke-static {v0}, Lnsy;->C(Lnou;)Lnou;

    move-result-object v9

    new-instance v10, Llpw;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Llpw;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;Lnno;Ljava/util/concurrent/Executor;I[B[B[B)V

    invoke-static {v10}, Lmny;->b(Lnno;)Lnno;

    move-result-object v0

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {v9, v0, v1}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v1, Llsj;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v8, v2}, Llsj;-><init>(Llsl;ILjava/util/List;I)V

    invoke-static {v1}, Lmny;->b(Lnno;)Lnno;

    move-result-object p1

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {v0, p1, v1}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method
