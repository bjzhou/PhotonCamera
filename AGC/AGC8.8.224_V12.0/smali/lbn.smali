.class public final Llbn;
.super Llbh;


# instance fields
.field final synthetic d:Lkyv;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lkyv;)V
    .locals 0

    iput-object p2, p0, Llbn;->d:Lkyv;

    invoke-direct {p0, p1}, Llbh;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final k()Lkzf;
    .locals 3

    iget-object v0, p0, Llbn;->d:Lkyv;

    invoke-virtual {v0}, Lkyv;->shutdown()V

    iget-object v0, p0, Llbn;->d:Lkyv;

    iget-object v0, v0, Lkyv;->a:Llaa;

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {}, Llpm;->q()Lkyp;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Llaa;->a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object v0

    invoke-static {v0}, Lkzf;->j(Lkzc;)Lkzf;

    move-result-object v0

    sget-object v1, Lnnv;->a:Lnnv;

    new-instance v2, Llbm;

    invoke-direct {v2, p0}, Llbm;-><init>(Llbn;)V

    invoke-virtual {v0, v1, v2}, Lkzf;->a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object v0

    invoke-static {v0}, Lkzf;->j(Lkzc;)Lkzf;

    move-result-object v0

    return-object v0
.end method
