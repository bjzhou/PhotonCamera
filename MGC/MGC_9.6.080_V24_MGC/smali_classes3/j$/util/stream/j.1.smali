.class final Lj$/util/stream/j;
.super Lj$/util/stream/n1;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field c:Z

.field d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/f1;Lj$/util/stream/r1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/j;->b:I

    iput-object p1, p0, Lj$/util/stream/j;->d:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lj$/util/stream/n1;-><init>(Lj$/util/stream/r1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/r1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/j;->b:I

    invoke-direct {p0, p1}, Lj$/util/stream/n1;-><init>(Lj$/util/stream/r1;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lj$/util/stream/j;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/stream/j;->d:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/f1;

    iget-object v0, v0, Lj$/util/stream/f1;->o:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v0, p0, Lj$/util/stream/j;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    if-nez v0, :cond_0

    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->b()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->b()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    :cond_1
    invoke-interface {v1}, Lj$/util/stream/r1;->n()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_2

    :goto_0
    :try_start_2
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_3
    return-void

    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lj$/util/stream/j;->c:Z

    if-nez p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/j;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lj$/util/stream/j;->d:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lj$/util/stream/j;->d:Ljava/lang/Object;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iput-object p1, p0, Lj$/util/stream/j;->d:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public j()V
    .locals 1

    iget v0, p0, Lj$/util/stream/j;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/n1;->j()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/j;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/j;->d:Ljava/lang/Object;

    iget-object v0, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {v0}, Lj$/util/stream/r1;->j()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(J)V
    .locals 2

    iget p1, p0, Lj$/util/stream/j;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/r1;->k(J)V

    return-void

    :pswitch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/stream/j;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lj$/util/stream/j;->d:Ljava/lang/Object;

    iget-object p1, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/r1;->k(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public n()Z
    .locals 1

    iget v0, p0, Lj$/util/stream/j;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lj$/util/stream/n1;->n()Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/j;->c:Z

    iget-object v0, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {v0}, Lj$/util/stream/r1;->n()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
