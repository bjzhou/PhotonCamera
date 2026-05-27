.class public final synthetic Lgxp;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lgxr;Landroid/graphics/Bitmap;II)V
    .locals 0

    iput p4, p0, Lgxp;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxp;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgxp;->c:Ljava/lang/Object;

    iput p3, p0, Lgxp;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Ljuf;Lken;II)V
    .locals 0

    iput p4, p0, Lgxp;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxp;->c:Ljava/lang/Object;

    iput-object p2, p0, Lgxp;->b:Ljava/lang/Object;

    iput p3, p0, Lgxp;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Ljyy;Ljyz;II)V
    .locals 0

    iput p4, p0, Lgxp;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxp;->c:Ljava/lang/Object;

    iput-object p2, p0, Lgxp;->b:Ljava/lang/Object;

    iput p3, p0, Lgxp;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    iget v0, v1, Lgxp;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lgxp;->c:Ljava/lang/Object;

    iget-object v4, v1, Lgxp;->b:Ljava/lang/Object;

    iget v7, v1, Lgxp;->a:I

    move-object/from16 v5, p1

    check-cast v5, Ljava/util/List;

    move-object v6, v0

    check-cast v6, Ljyy;

    iget-object v6, v6, Ljyy;->h:Lnou;

    invoke-static {v6}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lmqp;

    move-object v6, v4

    check-cast v6, Ljyz;

    invoke-virtual {v6}, Ljyz;->t()Lnou;

    move-result-object v6

    invoke-static {v6}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/FileDescriptor;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, v1, Lgxp;->c:Ljava/lang/Object;

    iget-object v2, v1, Lgxp;->b:Ljava/lang/Object;

    iget v3, v1, Lgxp;->a:I

    move-object/from16 v4, p1

    check-cast v4, Lkgq;

    invoke-interface {v2, v4, v3}, Lken;->r(Lkgq;I)Lkef;

    move-result-object v2

    check-cast v0, Ljuf;

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    return-object v2

    :pswitch_1
    iget-object v0, v1, Lgxp;->b:Ljava/lang/Object;

    iget-object v4, v1, Lgxp;->c:Ljava/lang/Object;

    iget v5, v1, Lgxp;->a:I

    move-object/from16 v6, p1

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "thumbnail"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    move-object v7, v0

    check-cast v7, Lgxr;

    iget-object v8, v7, Lgxr;->e:Lkaq;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Writing to URI "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lkaq;->f(Ljava/lang/String;)V

    :try_start_0
    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    check-cast v0, Lgxr;

    iget-object v0, v0, Lgxr;->c:Landroid/content/Context;

    const-string v9, "w"

    invoke-static {}, Llqr;->a()Lmob;

    move-result-object v10

    invoke-virtual {v10}, Lmob;->c()V

    iput-boolean v3, v10, Lmob;->a:Z

    new-instance v11, Llqp;

    invoke-direct {v11}, Llqp;-><init>()V

    invoke-virtual {v10, v11}, Lmob;->b(Llqt;)V

    invoke-virtual {v10}, Lmob;->a()Llqr;

    move-result-object v10

    invoke-static {v0, v6, v9, v10}, Llqs;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Llqr;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Ljvd;->J(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v5, "gxp"

    invoke-static {v5}, Lcom/agc/AdvancedSettings;->getJPGQuality(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-static {v3, v4}, Ljhp;->av(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-object v3, v7, Lgxr;->e:Lkaq;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to save bitmap to "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Lmoz;->p(Z)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    goto :goto_3

    :cond_1
    :goto_3
    invoke-static {v2}, Lmoz;->p(Z)V

    :try_start_5
    new-instance v2, Ljys;

    move-object v5, v4

    check-cast v5, Ljyz;

    iget v8, v5, Ljyz;->m:I

    move-object v5, v4

    check-cast v5, Ljyz;

    iget-object v10, v5, Ljyz;->l:Lnou;

    move-object v5, v4

    check-cast v5, Ljyz;

    iget v5, v5, Ljyz;->j:I

    int-to-long v11, v5

    move-object v5, v4

    check-cast v5, Ljyz;

    iget-wide v13, v5, Ljyz;->k:J

    move-object v5, v4

    check-cast v5, Ljyz;

    iget-object v5, v5, Ljyz;->c:Ljwx;

    const/4 v15, 0x2

    const/16 v16, 0x3

    if-eqz v5, :cond_2

    const/16 v17, 0x2

    goto :goto_4

    :cond_2
    const/16 v17, 0x3

    :goto_4
    move-object v5, v4

    check-cast v5, Ljyz;

    iget-object v5, v5, Ljyz;->d:Ljxa;

    if-eqz v5, :cond_3

    const/16 v18, 0x1

    goto :goto_5

    :cond_3
    const/16 v18, 0x3

    :goto_5
    move-object v5, v4

    check-cast v5, Ljyz;

    iget-boolean v5, v5, Ljyz;->p:Z

    if-eq v3, v5, :cond_4

    const/4 v3, 0x3

    goto :goto_6

    :cond_4
    const/4 v3, 0x2

    :goto_6
    move-object v5, v4

    check-cast v5, Ljyz;

    iget-object v15, v5, Ljyz;->n:Ljxv;

    check-cast v4, Ljyz;

    iget-object v4, v4, Ljyz;->i:Landroid/os/Handler;

    move-object v5, v0

    check-cast v5, Ljyy;

    iget-object v5, v5, Ljyy;->i:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljyy;

    iget-object v0, v0, Ljyy;->c:Ljym;

    move-object/from16 v20, v5

    move-object v5, v2

    move-object/from16 v19, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v3

    move-object/from16 v18, v19

    move-object/from16 v19, v4

    move-object/from16 v21, v0

    invoke-direct/range {v5 .. v21}, Ljys;-><init>(Ljava/io/FileDescriptor;IILmqp;Lnou;JJIIILjxv;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Ljym;)V
    :try_end_5
    .catch Ljxu; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_7
    const-string v2, "VideoRecorderImpl"

    const-string v3, "Failed to create muxer processor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
