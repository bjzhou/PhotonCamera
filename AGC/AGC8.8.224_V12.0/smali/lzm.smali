.class final Llzm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:D

.field final synthetic b:J

.field final synthetic c:Llzn;


# direct methods
.method public constructor <init>(Llzn;DJ)V
    .locals 0

    iput-object p1, p0, Llzm;->c:Llzn;

    iput-wide p2, p0, Llzm;->a:D

    iput-wide p4, p0, Llzm;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Llzm;->c:Llzn;

    iget-object v0, v0, Llzn;->d:Laqa;

    invoke-virtual {v0}, Laqa;->e()Larf;

    move-result-object v0

    iget-wide v1, p0, Llzm;->a:D

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lare;->d(ID)V

    iget-wide v1, p0, Llzm;->b:J

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lare;->e(IJ)V

    iget-object v1, p0, Llzm;->c:Llzn;

    iget-object v1, v1, Llzn;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_0
    invoke-virtual {v0}, Larf;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Llzm;->c:Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Llzm;->c:Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    iget-object v2, p0, Llzm;->c:Llzn;

    iget-object v2, v2, Llzn;->d:Laqa;

    invoke-virtual {v2, v0}, Laqa;->g(Larf;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Llzm;->c:Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    iget-object v2, p0, Llzm;->c:Llzn;

    iget-object v2, v2, Llzn;->d:Laqa;

    invoke-virtual {v2, v0}, Laqa;->g(Larf;)V

    throw v1
.end method
