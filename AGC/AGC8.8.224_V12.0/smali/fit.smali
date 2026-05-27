.class public final synthetic Lfit;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ldra;Ljava/util/concurrent/Executor;Lkbc;I)V
    .locals 0

    iput p4, p0, Lfit;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfit;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfit;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfit;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lifx;Lifu;Ligb;I)V
    .locals 0

    iput p4, p0, Lfit;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfit;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfit;->a:Ljava/lang/Object;

    iput-object p3, p0, Lfit;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkbc;Loiw;Loiw;I)V
    .locals 0

    iput p4, p0, Lfit;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfit;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfit;->b:Ljava/lang/Object;

    iput-object p3, p0, Lfit;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkcs;Ljava/lang/String;Lkad;I)V
    .locals 0

    iput p4, p0, Lfit;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfit;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfit;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfit;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    iget v0, p0, Lfit;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfit;->b:Ljava/lang/Object;

    iget-object v1, p0, Lfit;->c:Ljava/lang/Object;

    iget-object v2, p0, Lfit;->a:Ljava/lang/Object;

    check-cast v0, Lkcs;

    iget-object v0, v0, Lkcs;->c:Lkaq;

    const-string v3, "Closed by "

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {v2}, Lkad;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfit;->b:Ljava/lang/Object;

    iget-object v1, p0, Lfit;->a:Ljava/lang/Object;

    iget-object v2, p0, Lfit;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lifx;

    iget-object v3, v3, Lifx;->l:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    check-cast v0, Lifx;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lifx;->k:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Lifu;

    invoke-virtual {v1}, Lifu;->close()V

    invoke-interface {v2}, Ligb;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, p0, Lfit;->a:Ljava/lang/Object;

    iget-object v1, p0, Lfit;->c:Ljava/lang/Object;

    iget-object v2, p0, Lfit;->b:Ljava/lang/Object;

    new-instance v3, Ldgg;

    check-cast v0, Ldra;

    const/16 v4, 0x14

    invoke-direct {v3, v0, v4}, Ldgg;-><init>(Ldra;I)V

    const-string v0, "FaceMetadataExtractor.close"

    invoke-interface {v2, v0, v3}, Lkbc;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lfit;->a:Ljava/lang/Object;

    iget-object v1, p0, Lfit;->b:Ljava/lang/Object;

    iget-object v2, p0, Lfit;->c:Ljava/lang/Object;

    const-string v3, "MICRO_EncoderModule#shutdown_controller"

    invoke-interface {v0, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfhm;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lfhm;->a(Z)V

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgxb;

    invoke-virtual {v1}, Lgxb;->j()V

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
