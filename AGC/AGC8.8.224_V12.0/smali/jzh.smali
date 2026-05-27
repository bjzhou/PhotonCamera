.class public final Ljzh;
.super Ljava/lang/Object;

# interfaces
.implements Ljyd;


# instance fields
.field public final a:Lnow;

.field public final b:Ljzd;

.field public final c:Ljzc;

.field public d:Ljwx;

.field public e:Ljxa;

.field public f:I

.field public g:J

.field public h:I

.field public i:Lnou;

.field public j:Landroid/location/Location;

.field public k:Landroid/view/Surface;

.field public l:Ljye;

.field public m:I


# direct methods
.method public constructor <init>(Ljzd;Lnow;Ljzc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljzh;->f:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljzh;->g:J

    iput v0, p0, Ljzh;->h:I

    const/4 v0, 0x6

    iput v0, p0, Ljzh;->m:I

    iput-object p2, p0, Ljzh;->a:Lnow;

    iput-object p1, p0, Ljzh;->b:Ljzd;

    iput-object p3, p0, Ljzh;->c:Ljzc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljyc;
    .locals 2

    iget-object v0, p0, Ljzh;->i:Lnou;

    if-eqz v0, :cond_0

    new-instance v0, Ljzi;

    invoke-direct {v0, p0}, Ljzi;-><init>(Ljzh;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either Output video file path or descriptor is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljye;)Ljyd;
    .locals 0

    iput-object p1, p0, Ljzh;->l:Ljye;

    return-object p0
.end method

.method public final c(Ljwx;)V
    .locals 0

    iput-object p1, p0, Ljzh;->d:Ljwx;

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Ljzh;->m:I

    return-void
.end method

.method public final e(Ljxr;)V
    .locals 5

    sget-object v0, Ljxr;->a:Ljxr;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Ljzi;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is supported for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but we get "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(I)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Color standard is not supported, please use VideoRecorderMediaCodec"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Ljzh;->k:Landroid/view/Surface;

    return-void
.end method

.method public final h(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Ljzh;->j:Landroid/location/Location;

    return-void
.end method

.method public final i(Lnou;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lnou;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    iput-object p1, p0, Ljzh;->j:Landroid/location/Location;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v0, "VidRecMedRec"

    const-string v1, "Failed to set the location, Ignoring."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Ljzh;->f:I

    return-void
.end method

.method public final k(J)V
    .locals 0

    iput-wide p1, p0, Ljzh;->g:J

    return-void
.end method

.method public final l(J)V
    .locals 0

    return-void
.end method

.method public final m(Landroid/media/MediaCodec$Callback;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot add a MediaCodec\'s callback with VideoRecorderMediaRecorder, please use VideoRecorderMediaCodec"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Z)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot apply synchronous mode with VideoRecorderMediaRecorder, please use VideoRecorderMediaCodec"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Ljzh;->h:I

    return-void
.end method

.method public final p(Lnou;)V
    .locals 0

    iput-object p1, p0, Ljzh;->i:Lnou;

    return-void
.end method

.method public final q(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    iput-object p1, p0, Ljzh;->i:Lnou;

    return-void
.end method

.method public final r(Ljxa;)V
    .locals 0

    iput-object p1, p0, Ljzh;->e:Ljxa;

    return-void
.end method

.method public final s(Z)V
    .locals 0

    return-void
.end method
