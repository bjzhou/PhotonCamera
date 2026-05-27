.class public final Lnnz;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lmnt;Lnnn;I)V
    .locals 0

    iput p3, p0, Lnnz;->c:I

    iput-object p1, p0, Lnnz;->b:Ljava/lang/Object;

    iput-object p2, p0, Lnnz;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnob;Lnnn;I)V
    .locals 0

    iput p3, p0, Lnnz;->c:I

    iput-object p1, p0, Lnnz;->a:Ljava/lang/Object;

    iput-object p2, p0, Lnnz;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 3

    iget v0, p0, Lnnz;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnnz;->b:Ljava/lang/Object;

    iget-object v1, p0, Lnnz;->a:Ljava/lang/Object;

    invoke-static {}, Lmoc;->d()Lmob;

    move-result-object v2

    invoke-static {v2, v0}, Lmoc;->c(Lmob;Lmnt;)Lmnt;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lnnz;->a:Ljava/lang/Object;

    sget-object v1, Lnoa;->a:Lnoa;

    sget-object v2, Lnoa;->c:Lnoa;

    check-cast v0, Lnob;

    invoke-virtual {v0, v1, v2}, Lnob;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnnz;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lnnn;->a()Lnou;

    move-result-object v0

    :goto_0
    return-object v0

    :goto_1
    :try_start_0
    invoke-interface {v1}, Lnnn;->a()Lnou;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v0}, Lmoc;->c(Lmob;Lmnt;)Lmnt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Lmng;->a(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lmoc;->c(Lmob;Lmnt;)Lmnt;

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lnnz;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnnz;->a:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propagating=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lnnz;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
