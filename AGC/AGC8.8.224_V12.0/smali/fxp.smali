.class public final Lfxp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfxq;

.field private final b:Lgqr;

.field private final c:Lnph;


# direct methods
.method public constructor <init>(Lfxq;Lgqr;Lnph;)V
    .locals 0

    iput-object p1, p0, Lfxp;->a:Lfxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfxp;->b:Lgqr;

    iput-object p3, p0, Lfxp;->c:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "Unknown error while encoding imageToProcess"

    :try_start_0
    iget-object v0, v1, Lfxp;->a:Lfxq;

    iget-object v3, v1, Lfxp;->b:Lgqr;

    iget-object v4, v0, Lfxq;->d:Lkbc;

    const-string v5, "allocateAndCompressJpeg"

    invoke-interface {v4, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v4, v3, Lgqr;->e:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v3, Lgqr;->e:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/lit8 v4, v4, 0x3

    mul-int v4, v4, v5

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v4, 0x2

    iget-object v6, v0, Lfxq;->b:Lgrf;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Lgrf;->c(Ljava/lang/Object;)Lgrg;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v6}, Lgrg;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v8, " bytes"

    const-string v9, "Failed to allocate buffer for JPEG: "

    if-eqz v7, :cond_3

    :try_start_2
    iget-object v10, v0, Lfxq;->c:Lgui;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-interface {v10, v3, v11}, Lgui;->b(Lgqr;Ljava/nio/ByteBuffer;)I

    move-result v10

    if-le v10, v5, :cond_1

    invoke-virtual {v6}, Lgrg;->close()V

    iget-object v5, v0, Lfxq;->b:Lgrf;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Lgrf;->c(Ljava/lang/Object;)Lgrg;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v6}, Lgrg;->a()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    iget-object v4, v0, Lfxq;->c:Lgui;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lgui;->b(Lgqr;Ljava/nio/ByteBuffer;)I

    move-result v10

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lez v10, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-array v13, v10, [B

    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, v0, Lfxq;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Lgrg;->close()V

    invoke-static {}, Lkds;->b()Lkds;

    move-result-object v0

    iget-object v3, v1, Lfxp;->b:Lgqr;

    iget-object v3, v3, Lgqr;->c:Lnou;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Lnou;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkou;

    iget-object v4, v1, Lfxp;->b:Lgqr;

    iget-object v4, v4, Lgqr;->e:Landroid/graphics/Rect;

    invoke-static {v4}, Lkaf;->g(Landroid/graphics/Rect;)Lkaf;

    move-result-object v14

    iget-object v4, v1, Lfxp;->a:Lfxq;

    iget-object v4, v4, Lfxq;->c:Lgui;

    iget-object v5, v1, Lfxp;->b:Lgqr;

    invoke-interface {v4, v5}, Lgui;->a(Lgqr;)Lkab;

    move-result-object v4

    iget v5, v14, Lkaf;->a:I

    iget v6, v14, Lkaf;->b:I

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    invoke-virtual {v0, v5, v6, v4, v3}, Lkds;->f(IILkab;Lmqp;)V

    iget-object v3, v1, Lfxp;->b:Lgqr;

    iget-wide v5, v3, Lgqr;->k:J

    invoke-virtual {v0, v5, v6}, Lkds;->g(J)V

    iget-object v3, v1, Lfxp;->c:Lnph;

    iget-object v5, v1, Lfxp;->b:Lgqr;

    iget-object v5, v5, Lgqr;->a:Lkpb;

    invoke-interface {v5}, Lkpb;->d()J

    move-result-wide v11

    iget v15, v4, Lkab;->e:I

    iget-object v0, v0, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    iget-object v4, v1, Lfxp;->a:Lfxq;

    iget-object v4, v4, Lfxq;->e:Ljew;

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    invoke-static/range {v11 .. v17}, Lfwy;->a(J[BLkaf;ILcom/google/android/libraries/camera/exif/ExifInterface;Ljew;)Lfwy;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, v1, Lfxp;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lfxp;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lfxp;->c:Lnph;

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v3}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error compressing jpeg: num bytes written was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :goto_2
    :try_start_7
    invoke-virtual {v6}, Lgrg;->close()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_8
    iget-object v3, v1, Lfxp;->c:Lnph;

    invoke-virtual {v3, v0}, Lnph;->a(Ljava/lang/Throwable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v0, v1, Lfxp;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lfxp;->c:Lnph;

    invoke-virtual {v0}, Lnph;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lfxp;->c:Lnph;

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void

    :goto_3
    iget-object v3, v1, Lfxp;->c:Lnph;

    invoke-virtual {v3}, Lnph;->isDone()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lfxp;->c:Lnph;

    invoke-virtual {v3}, Lnph;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lfxp;->c:Lnph;

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lnph;->a(Ljava/lang/Throwable;)Z

    :cond_5
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
