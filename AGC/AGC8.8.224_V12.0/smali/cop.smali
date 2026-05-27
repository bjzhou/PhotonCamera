.class public final synthetic Lcop;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcor;Lcsc;I)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lddf;Lddd;I)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldjf;Lchd;I)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldqf;Lcvm;I[B)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldqf;Ldqx;I[B)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldru;Ldry;I)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhsn;Ljava/util/function/Supplier;I)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ligo;Landroid/net/Uri;I[B[B)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    iput-object p1, p0, Lcop;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkay;Ljava/util/concurrent/Callable;I)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkbc;Logd;I)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llqh;Llqi;I)V
    .locals 0

    iput p3, p0, Lcop;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcop;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcop;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcop;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcop;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcop;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcop;->b:Ljava/lang/Object;

    new-instance v5, Llrk;

    invoke-direct {v5}, Llrk;-><init>()V

    :try_start_0
    move-object v6, v0

    check-cast v6, Llqh;

    iget-object v6, v6, Llqh;->b:Ljava/lang/Object;

    check-cast v6, Llon;

    invoke-virtual {v6}, Llon;->f()Lva;

    move-result-object v6

    move-object v7, v0

    check-cast v7, Llqh;

    iget-object v7, v7, Llqh;->c:Ljava/lang/Object;

    new-instance v8, Llrz;

    invoke-direct {v8, v4}, Llrz;-><init>(Lnxy;)V

    new-array v2, v2, [Llrk;

    aput-object v5, v2, v1

    iput-object v2, v8, Llrz;->a:[Llrk;

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v6, v7, v8}, Lva;->E(Landroid/net/Uri;Llre;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    check-cast v0, Llqh;

    iget-object v0, v0, Llqh;->d:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update snapshot for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " flags may be stale."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SnapshotHandler"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v3

    :pswitch_1
    iget-object v0, p0, Lcop;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->b:Ljava/lang/Object;

    const-string v2, "Primes"

    :try_start_1
    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lcop;->b:Ljava/lang/Object;

    iget-object v4, p0, Lcop;->a:Ljava/lang/Object;

    check-cast v0, Ligo;

    iget-object v0, v0, Ligo;->b:Ljava/lang/Object;

    invoke-static {}, Ljuh;->b()V

    check-cast v0, Limi;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v0, v4}, Limi;->a(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v2, v2, [J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v2, v1

    invoke-virtual {v5, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    iget-object v0, v0, Limi;->c:Landroid/app/DownloadManager;

    invoke-virtual {v0, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v3

    goto :goto_2

    :cond_0
    move-object v0, v3

    :cond_1
    :goto_2
    if-eqz v0, :cond_3

    const-string v1, "bytes_so_far"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "total_size"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    new-instance v5, Limj;

    invoke-direct {v5}, Limj;-><init>()V

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_2

    cmp-long v8, v1, v6

    if-ltz v8, :cond_2

    long-to-float v1, v1

    long-to-float v2, v3

    div-float/2addr v1, v2

    iput v1, v5, Limj;->b:F

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    iput v1, v5, Limj;->b:F

    :goto_3
    const-string v1, "status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v5, Limj;->a:I

    const-string v1, "local_uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Limj;->c:Ljava/lang/String;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v3, v5

    goto :goto_4

    :cond_3
    :goto_4
    invoke-static {v3}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcop;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->b:Ljava/lang/Object;

    check-cast v0, Lhsn;

    iget-object v2, v0, Lhsn;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_4

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhsq;

    iget-object v0, v0, Lhsn;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object v1

    :cond_4
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Found another update in flight."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    iget-object v0, p0, Lcop;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->b:Ljava/lang/Object;

    const-string v2, "PhotoModeStartup"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    const-string v2, "get"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhip;

    const-string v2, "run"

    invoke-interface {v0, v2}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v1}, Lhip;->run()V

    invoke-interface {v0}, Lkbc;->f()V

    invoke-interface {v0}, Lkbc;->f()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcop;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->b:Ljava/lang/Object;

    check-cast v0, Ldru;

    iget-object v0, v0, Ldru;->e:Ldrt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Ldrt;->b:Lnph;

    iget-object v3, v0, Ldrt;->f:Ldru;

    iget-wide v3, v3, Ldru;->d:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iget-object v2, v0, Ldrt;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v0, v0, Ldrt;->e:Landroid/hardware/HardwareBuffer;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1}, Ldry;->e()V

    invoke-interface {v1, v0}, Ldry;->b(Landroid/hardware/HardwareBuffer;)Ldrz;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_6
    iget-object v0, p0, Lcop;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->a:Ljava/lang/Object;

    check-cast v0, Ldqf;

    iget-object v0, v0, Ldqf;->a:Ljava/lang/Object;

    check-cast v0, Ldqz;

    check-cast v1, Ldqx;

    invoke-virtual {v0, v1}, Ldqz;->b(Ldqx;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lcop;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->b:Ljava/lang/Object;

    check-cast v0, Ldqf;

    iget-object v0, v0, Ldqf;->b:Ljava/lang/Object;

    check-cast v0, Ldqg;

    check-cast v1, Lcvm;

    invoke-virtual {v0, v1}, Ldqg;->c(Lcvm;)Ldqp;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcop;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->a:Ljava/lang/Object;

    check-cast v0, Ldjf;

    iget-object v2, v0, Ldjf;->p:Lbkc;

    iget-object v0, v0, Ldjf;->d:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Lbkc;->w(Landroid/content/Context;Lchd;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcop;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->a:Ljava/lang/Object;

    new-instance v2, Ldcx;

    move-object v3, v1

    check-cast v3, Lddd;

    invoke-direct {v2, v3}, Ldcx;-><init>(Lddd;)V

    :try_start_4
    check-cast v0, Lddf;

    iget-object v0, v0, Lddf;->a:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->y()Ldcy;

    move-result-object v0

    check-cast v1, Lddd;

    invoke-virtual {v0, v1}, Ldcy;->a(Lddd;)Ldcx;

    move-result-object v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_5
    return-object v2

    :pswitch_a
    iget-object v0, p0, Lcop;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->a:Ljava/lang/Object;

    sget v2, Lcjt;->a:I

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-object v1

    :pswitch_b
    iget-object v0, p0, Lcop;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcop;->b:Ljava/lang/Object;

    check-cast v0, Lcor;

    iget-object v0, v0, Lcor;->g:Lcyy;

    check-cast v1, Lcsc;

    iget-object v1, v1, Lcsc;->d:Ljwu;

    invoke-virtual {v0, v1}, Lcyy;->a(Ljwu;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
