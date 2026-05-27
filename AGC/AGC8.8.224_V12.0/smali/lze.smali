.class final Llze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Llys;Llvk;JI)V
    .locals 0

    iput p5, p0, Llze;->d:I

    iput-object p1, p0, Llze;->c:Ljava/lang/Object;

    iput-object p2, p0, Llze;->b:Ljava/lang/Object;

    iput-wide p3, p0, Llze;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llzn;Ljava/lang/String;JI)V
    .locals 0

    iput p5, p0, Llze;->d:I

    iput-object p1, p0, Llze;->b:Ljava/lang/Object;

    iput-object p2, p0, Llze;->c:Ljava/lang/Object;

    iput-wide p3, p0, Llze;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llzn;Llvk;JI)V
    .locals 0

    iput p5, p0, Llze;->d:I

    iput-object p1, p0, Llze;->c:Ljava/lang/Object;

    iput-object p2, p0, Llze;->b:Ljava/lang/Object;

    iput-wide p3, p0, Llze;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Llze;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llze;->b:Ljava/lang/Object;

    check-cast v0, Llzn;

    iget-object v0, v0, Llzn;->c:Laqa;

    invoke-virtual {v0}, Laqa;->e()Larf;

    move-result-object v0

    iget-object v3, p0, Llze;->c:Ljava/lang/Object;

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Lare;->f(I)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Llze;->c:Ljava/lang/Object;

    check-cast v0, Llys;

    iget-object v0, v0, Llys;->b:Laqa;

    invoke-virtual {v0}, Laqa;->e()Larf;

    move-result-object v0

    iget-object v3, p0, Llze;->b:Ljava/lang/Object;

    check-cast v3, Llvk;

    invoke-static {v3}, Llyc;->w(Llvk;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lare;->e(IJ)V

    iget-wide v2, p0, Llze;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lare;->e(IJ)V

    iget-object v1, p0, Llze;->c:Ljava/lang/Object;

    check-cast v1, Llys;

    iget-object v1, v1, Llys;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_0
    invoke-virtual {v0}, Larf;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Llze;->c:Ljava/lang/Object;

    check-cast v2, Llys;

    iget-object v2, v2, Llys;->a:Lapt;

    invoke-virtual {v2}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Llze;->c:Ljava/lang/Object;

    check-cast v2, Llys;

    iget-object v2, v2, Llys;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    iget-object v2, p0, Llze;->c:Ljava/lang/Object;

    check-cast v2, Llys;

    iget-object v2, v2, Llys;->b:Laqa;

    invoke-virtual {v2, v0}, Laqa;->g(Larf;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Llze;->c:Ljava/lang/Object;

    check-cast v2, Llys;

    iget-object v2, v2, Llys;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    iget-object v2, p0, Llze;->c:Ljava/lang/Object;

    check-cast v2, Llys;

    iget-object v2, v2, Llys;->b:Laqa;

    invoke-virtual {v2, v0}, Laqa;->g(Larf;)V

    throw v1

    :pswitch_1
    iget-object v0, p0, Llze;->c:Ljava/lang/Object;

    check-cast v0, Llzn;

    iget-object v0, v0, Llzn;->g:Laqa;

    invoke-virtual {v0}, Laqa;->e()Larf;

    move-result-object v0

    iget-object v3, p0, Llze;->b:Ljava/lang/Object;

    check-cast v3, Llvk;

    invoke-static {v3}, Llyc;->w(Llvk;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lare;->e(IJ)V

    iget-wide v2, p0, Llze;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lare;->e(IJ)V

    iget-object v1, p0, Llze;->c:Ljava/lang/Object;

    check-cast v1, Llzn;

    iget-object v1, v1, Llzn;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_1
    invoke-virtual {v0}, Larf;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Llze;->c:Ljava/lang/Object;

    check-cast v2, Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Llze;->c:Ljava/lang/Object;

    check-cast v2, Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    iget-object v2, p0, Llze;->c:Ljava/lang/Object;

    check-cast v2, Llzn;

    iget-object v2, v2, Llzn;->g:Laqa;

    invoke-virtual {v2, v0}, Laqa;->g(Larf;)V

    return-object v1

    :catchall_1
    move-exception v1

    iget-object v2, p0, Llze;->c:Ljava/lang/Object;

    check-cast v2, Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    iget-object v2, p0, Llze;->c:Ljava/lang/Object;

    check-cast v2, Llzn;

    iget-object v2, v2, Llzn;->g:Laqa;

    invoke-virtual {v2, v0}, Laqa;->g(Larf;)V

    throw v1

    :cond_0
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lare;->g(ILjava/lang/String;)V

    :goto_0
    iget-wide v2, p0, Llze;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lare;->e(IJ)V

    iget-object v1, p0, Llze;->b:Ljava/lang/Object;

    check-cast v1, Llzn;

    iget-object v1, v1, Llzn;->a:Lapt;

    invoke-virtual {v1}, Lapt;->m()V

    :try_start_2
    invoke-virtual {v0}, Larf;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Llze;->b:Ljava/lang/Object;

    check-cast v2, Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, p0, Llze;->b:Ljava/lang/Object;

    check-cast v2, Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    iget-object v2, p0, Llze;->b:Ljava/lang/Object;

    check-cast v2, Llzn;

    iget-object v2, v2, Llzn;->c:Laqa;

    invoke-virtual {v2, v0}, Laqa;->g(Larf;)V

    return-object v1

    :catchall_2
    move-exception v1

    iget-object v2, p0, Llze;->b:Ljava/lang/Object;

    check-cast v2, Llzn;

    iget-object v2, v2, Llzn;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    iget-object v2, p0, Llze;->b:Ljava/lang/Object;

    check-cast v2, Llzn;

    iget-object v2, v2, Llzn;->c:Laqa;

    invoke-virtual {v2, v0}, Laqa;->g(Larf;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
