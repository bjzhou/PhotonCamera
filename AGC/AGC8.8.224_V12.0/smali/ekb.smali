.class public final Lekb;
.super Ljava/lang/Thread;


# static fields
.field public static final a:Lnak;


# instance fields
.field public b:Z

.field public c:J

.field private final d:Landroid/media/AudioRecord;

.field private final e:Lejy;

.field private final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/imax/cyclops/audio/AudioRecorderThread"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lekb;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lejy;Landroid/media/AudioRecord;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lekb;->f:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lekb;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lekb;->c:J

    iput-object p1, p0, Lekb;->e:Lejy;

    iput-object p2, p0, Lekb;->d:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const-string v0, "%s"

    iget-object v1, p0, Lekb;->d:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lekb;->b:Z

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lekb;->b:Z

    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lekb;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x608

    invoke-static {v4, v0, v5, v6, v1}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lekb;->b:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lekb;->d:Landroid/media/AudioRecord;

    iget-object v4, p0, Lekb;->f:[B

    const/16 v5, 0x800

    invoke-virtual {v1, v4, v2, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    const/4 v4, -0x3

    if-eq v1, v4, :cond_5

    const/4 v4, -0x2

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v4, p0, Lekb;->c:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v6, p0, Lekb;->c:J

    add-long v12, v4, v6

    iget-object v1, p0, Lekb;->e:Lejy;

    iget-object v4, p0, Lekb;->f:[B

    iget-boolean v5, v1, Lejy;->d:Z

    if-eqz v5, :cond_1

    :try_start_1
    iget-object v5, v1, Lejy;->b:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v6, v1, Lejy;->b:Landroid/media/MediaCodec;

    const-wide/16 v7, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    if-gez v9, :cond_3

    sget-object v1, Lejy;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v4, "Could not find a valid buffer, will drop frame!"

    const/16 v5, 0x5fd

    invoke-static {v1, v4, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_0

    :cond_3
    aget-object v5, v5, v9

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-boolean v5, v1, Lejy;->c:Z

    if-eq v3, v5, :cond_4

    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    const/4 v5, 0x4

    const/4 v14, 0x4

    :goto_1
    iget-object v8, v1, Lejy;->b:Landroid/media/MediaCodec;

    array-length v4, v4

    const/4 v10, 0x0

    const/16 v11, 0x800

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-boolean v4, v1, Lejy;->c:Z

    if-eqz v4, :cond_1

    iput-boolean v2, v1, Lejy;->d:Z

    iput-boolean v2, v1, Lejy;->c:Z

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v4, Lejy;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    const-string v5, "MediaCodec got into an illegal state"

    const/16 v6, 0x5fe

    invoke-static {v4, v5, v6, v1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    :goto_2
    sget-object v1, Lekb;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v3, "Error reading audio"

    const/16 v4, 0x609

    invoke-static {v1, v3, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_6
    :try_start_2
    iget-object v1, p0, Lekb;->d:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    sget-object v3, Lekb;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x607

    invoke-static {v3, v0, v4, v5, v1}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    :goto_3
    iget-object v0, p0, Lekb;->d:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-boolean v2, p0, Lekb;->b:Z

    return-void
.end method
