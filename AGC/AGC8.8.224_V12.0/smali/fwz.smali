.class final Lfwz;
.super Ljava/lang/Object;

# interfaces
.implements Lfyy;


# instance fields
.field private final a:Lkli;

.field private final b:Lcea;

.field private final c:Lfyy;

.field private final d:Lgvb;

.field private final e:Lehk;


# direct methods
.method public constructor <init>(Lkli;Lcea;Lfyy;Lgvb;Lehk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfwz;->a:Lkli;

    iput-object p2, p0, Lfwz;->b:Lcea;

    iput-object p3, p0, Lfwz;->c:Lfyy;

    iput-object p5, p0, Lfwz;->e:Lehk;

    iput-object p4, p0, Lfwz;->d:Lgvb;

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lnou;)V
    .locals 6

    invoke-interface {p1}, Lkpb;->a()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lfwz;->d:Lgvb;

    iget-object v2, p0, Lfwz;->a:Lkli;

    invoke-interface {v2}, Lkli;->k()Lklv;

    move-result-object v2

    invoke-interface {v0, v2}, Lgvb;->h(Lklv;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfwz;->d:Lgvb;

    iget-object v2, p0, Lfwz;->b:Lcea;

    invoke-virtual {v2}, Lcea;->d()Lkab;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lgvb;->d(Lkpb;Lkab;)V

    :cond_0
    iget-object v0, p0, Lfwz;->e:Lehk;

    invoke-interface {p1}, Lkpb;->a()I

    move-result v2

    invoke-interface {p1}, Lkpb;->a()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected image format YUV but found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v1, v0, Lehk;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Ldgd;

    const/16 v3, 0x13

    invoke-direct {v2, v0, p1, v3}, Ldgd;-><init>(Lehk;Lkpb;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lfwz;->c:Lfyy;

    invoke-interface {v0, p1, p2}, Lfyy;->a(Lkpb;Lnou;)V

    return-void

    :cond_2
    invoke-interface {p1}, Lkpb;->close()V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lfwz;->c:Lfyy;

    invoke-interface {v0}, Lfyy;->close()V

    return-void
.end method
