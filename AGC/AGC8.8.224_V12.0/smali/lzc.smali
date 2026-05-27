.class final Llzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lnyy;

.field final synthetic b:Llvk;

.field final synthetic c:J

.field final synthetic d:Llzn;

.field final synthetic e:Lluq;


# direct methods
.method public constructor <init>(Llzn;Lluq;Lnyy;Llvk;J)V
    .locals 0

    iput-object p1, p0, Llzc;->d:Llzn;

    iput-object p2, p0, Llzc;->e:Lluq;

    iput-object p3, p0, Llzc;->a:Lnyy;

    iput-object p4, p0, Llzc;->b:Llvk;

    iput-wide p5, p0, Llzc;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Llzc;->d:Llzn;

    iget-object v0, v0, Llzn;->e:Laqa;

    invoke-virtual {v0}, Laqa;->e()Larf;

    move-result-object v0

    iget-object v1, p0, Llzc;->e:Lluq;

    invoke-static {v1}, Llyc;->y(Lluq;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Lare;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v1}, Lare;->g(ILjava/lang/String;)V

    :goto_0
    iget-object v1, p0, Llzc;->a:Lnyy;

    invoke-static {v1}, Llyc;->u(Lnyy;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Lare;->f(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lare;->e(IJ)V

    :goto_1
    iget-object v1, p0, Llzc;->b:Llvk;

    invoke-static {v1}, Llyc;->w(Llvk;)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lare;->e(IJ)V

    iget-wide v1, p0, Llzc;->c:J

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Lare;->e(IJ)V

    iget-object v1, p0, Llzc;->d:Llzn;

    iget-object v1, v1, Llzn;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_0
    invoke-virtual {v0}, Larf;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Llzc;->d:Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Llzc;->d:Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    iget-object v2, p0, Llzc;->d:Llzn;

    iget-object v2, v2, Llzn;->e:Laqa;

    invoke-virtual {v2, v0}, Laqa;->g(Larf;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Llzc;->d:Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    iget-object v2, p0, Llzc;->d:Llzn;

    iget-object v2, v2, Llzn;->e:Laqa;

    invoke-virtual {v2, v0}, Laqa;->g(Larf;)V

    throw v1
.end method
