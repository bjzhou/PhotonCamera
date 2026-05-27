.class public final synthetic Lloq;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lloq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llpp;I)V
    .locals 0

    iput p2, p0, Lloq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lloq;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lloq;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lloq;->a:Ljava/lang/Object;

    check-cast v0, Llpp;

    invoke-virtual {v0}, Llpp;->a()Lnou;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lloq;->a:Ljava/lang/Object;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    check-cast v0, Llpp;

    iget-object v2, v0, Llpp;->g:Llqh;

    :try_start_0
    iget-object v3, v2, Llqh;->b:Ljava/lang/Object;

    check-cast v3, Llon;

    invoke-virtual {v3}, Llon;->f()Lva;

    move-result-object v3

    iget-object v2, v2, Llqh;->c:Ljava/lang/Object;

    sget-object v4, Llqi;->h:Llqi;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnyf;

    new-instance v5, Llrw;

    invoke-direct {v5, v4}, Llrw;-><init>(Lnyf;)V

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v3, v2, v5}, Lva;->E(Landroid/net/Uri;Llre;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llqi;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    sget-object v2, Llqi;->h:Llqi;

    :goto_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    iget-object v1, v2, Llqi;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Llpp;->a:Llon;

    invoke-virtual {v1}, Llon;->b()Lnox;

    move-result-object v1

    new-instance v2, Llmm;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Llmm;-><init>(Llpp;I)V

    invoke-interface {v1, v2}, Lnox;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lmyz;->a:Lmwa;

    goto :goto_3

    :cond_0
    iget-object v1, v2, Llqi;->b:Ljava/lang/String;

    iput-object v1, v0, Llpp;->f:Ljava/lang/String;

    iget-object v1, v0, Llpp;->a:Llon;

    invoke-virtual {v1}, Llon;->b()Lnox;

    move-result-object v1

    new-instance v3, Llmm;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Llmm;-><init>(Llpp;I)V

    invoke-interface {v1, v3}, Lnox;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Llpm;->b:Llpm;

    if-nez v1, :cond_2

    const-class v1, Llpm;

    monitor-enter v1

    :try_start_1
    sget-object v3, Llpm;->b:Llpm;

    if-nez v3, :cond_1

    new-instance v3, Llpm;

    invoke-direct {v3}, Llpm;-><init>()V

    sput-object v3, Llpm;->b:Llpm;

    :cond_1
    sget-object v3, Llpm;->b:Llpm;

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    iget-object v1, v2, Llqi;->c:Lnvt;

    iget-object v1, v0, Llpp;->a:Llon;

    invoke-virtual {v1}, Llon;->b()Lnox;

    move-result-object v1

    new-instance v3, Llmm;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Llmm;-><init>(Llpp;I)V

    invoke-interface {v1, v3}, Lnox;->execute(Ljava/lang/Runnable;)V

    invoke-static {v2}, Llqh;->a(Llqi;)Lmwa;

    move-result-object v0

    :goto_3
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lloq;->a:Ljava/lang/Object;

    new-instance v1, Lva;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Llrg;->g(Landroid/content/Context;)Llhe;

    move-result-object v0

    invoke-virtual {v0}, Llhe;->d()Llrg;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lva;-><init>(Ljava/util/List;[B)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lloq;->a:Ljava/lang/Object;

    sget v1, Lloz;->c:I

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lloj;->a(Landroid/content/Context;)Lmqp;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
