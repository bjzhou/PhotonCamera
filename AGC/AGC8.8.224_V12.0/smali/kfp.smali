.class public final Lkfp;
.super Lkfg;


# instance fields
.field public final a:Lkfg;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lkfg;Ljava/util/concurrent/Executor;[B[B)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p2, p0, Lkfp;->b:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lkfp;->a:Lkfg;

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 3

    iget-object v0, p0, Lkfp;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lkcw;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lkcw;-><init>(Lkfp;Lkou;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bD(JI)V
    .locals 8

    iget-object v0, p0, Lkfp;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Lkfo;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lkfo;-><init>(Lkfp;JII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bi(Lkkp;)V
    .locals 3

    iget-object v0, p0, Lkfp;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lkcw;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lkcw;-><init>(Lkfp;Lkkp;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final br(Lkoq;)V
    .locals 3

    iget-object v0, p0, Lkfp;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lkcw;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lkcw;-><init>(Lkfp;Lkoq;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bs(JI)V
    .locals 8

    iget-object v0, p0, Lkfp;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Lkfo;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lkfo;-><init>(Lkfp;JII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bt(JIJ)V
    .locals 9

    iget-object v0, p0, Lkfp;->b:Ljava/util/concurrent/Executor;

    new-instance v8, Lkfn;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lkfn;-><init>(Lkfp;JIJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bu(JLjava/util/Set;)V
    .locals 8

    iget-object v0, p0, Lkfp;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Ldcf;

    const/16 v6, 0xe

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Lkfp;JLjava/util/Set;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bv(Lkeg;)V
    .locals 3

    iget-object v0, p0, Lkfp;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lkcw;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lkcw;-><init>(Lkfp;Lkeg;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
