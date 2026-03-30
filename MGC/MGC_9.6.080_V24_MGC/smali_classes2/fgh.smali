.class public final Lfgh;
.super Lfhq;
.source "PG"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field final synthetic a:Lfgm;

.field private final b:Lfgz;

.field private c:Landroid/hardware/Camera;

.field private d:I

.field private e:Lfgi;

.field private f:I


# direct methods
.method public constructor <init>(Lfgm;Lfgz;Landroid/os/Looper;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lfgh;->b:Lfgz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lfgh;->d:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput p1, p0, Lfgh;->f:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p3}, Lfhq;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    goto/32 :goto_3a

    nop

    nop

    :goto_0
    iget-object v2, p0, Lfgh;->a:Lfgm;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_39

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    :try_start_0
    new-instance v3, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_0
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    check-cast v3, [B

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_39

    nop

    :pswitch_1
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :pswitch_2
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_39

    nop

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Lfgx;

    nop

    nop

    iget-object v3, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    if-eqz v1, :cond_1a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfgx;->a()V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_18

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Lfhq;->handleMessage(Landroid/os/Message;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v7, 0x3

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    if-ne v2, v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_7
        :pswitch_6
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1cd
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1f5
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v2, v7, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v7, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Lfgm;->a:Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v7, 0x259

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    invoke-static {v2}, Lfhu;->g(Lfht;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    :goto_12
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->gArIm:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v7, 0x4

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_15
    if-ne v2, v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    packed-switch v2, :pswitch_data_0

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v3}, Landroidx/wear/ambient/SharedLibraryVersion;->f(I)Ljava/lang/String;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Lfho;->d()Z

    move-result v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    goto/16 :goto_39

    nop

    :catch_1
    move-exception v1

    nop

    nop

    :try_start_2
    sget-object v3, Lfgm;->a:Lfht;

    nop

    nop

    nop

    nop

    const-string v6, "Could not set preview texture"

    nop

    invoke-static {v3, v6, v1}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lfgh;->a:Lfgm;

    nop

    iget-object v1, v1, Lfgm;->e:Lfho;

    nop

    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Lfho;->c(I)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lgvb;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    iget-object v6, v1, Lgvb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v7, v1, Lgvb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v8, v1, Lgvb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgvb;->a:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {v3, v6, v7, v8, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto/16 :goto_39

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    iget-object v1, p0, Lfgh;->a:Lfgm;

    nop

    nop

    iget-object v1, v1, Lfgm;->e:Lfho;

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Lfho;->c(I)V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    iget-object v1, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    iget-object v1, v1, Lfgm;->e:Lfho;

    nop

    nop

    invoke-virtual {v1, v7}, Lfho;->c(I)V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Lfgs;

    nop

    nop

    nop

    nop

    iget v9, p1, Landroid/os/Message;->arg1:I

    nop

    nop
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/hardware/Camera;->reconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v6, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lfgm;->e:Lfho;

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Lfho;->c(I)V

    if-eqz v1, :cond_1a

    nop

    nop

    nop

    nop

    new-instance v3, Lfgg;

    nop

    nop

    iget-object v8, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    iget-object v10, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v8, Lfgm;->c:Lfgn;

    nop

    nop

    nop

    nop

    move-object v6, v3

    nop

    nop

    nop

    nop

    move-object v7, v8

    nop

    invoke-direct/range {v6 .. v11}, Lfgg;-><init>(Lfgm;Lfgz;ILandroid/hardware/Camera;Lfgn;)V

    invoke-virtual {v1, v3}, Lfgs;->b(Lfgv;)V

    goto/16 :goto_39

    nop

    :catch_2
    if-eqz v1, :cond_1a

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lfgh;->b:Lfgz;

    nop

    nop

    nop

    nop

    nop

    iget v6, p0, Lfgh;->d:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v6}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    iget-object v7, v1, Lfgs;->a:Landroid/os/Handler;

    nop

    nop

    new-instance v8, Las;

    nop

    nop

    const/16 v9, 0xa

    nop

    nop

    nop

    nop

    invoke-direct {v8, v1, v3, v6, v9}, Las;-><init>(Lfgs;Lfgz;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iget-object v1, p0, Lfgh;->a:Lfgm;

    nop

    iget-object v1, v1, Lfgm;->e:Lfho;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v5}, Lfho;->c(I)V

    iput-object v4, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    nop

    iput v6, p0, Lfgh;->d:I

    nop

    nop

    nop

    nop

    goto/16 :goto_39

    nop

    :cond_5
    sget-object v1, Lfgm;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Releasing camera without any camera opened."

    nop

    invoke-static {v1, v3}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/16 :goto_39

    nop

    :goto_1e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Lfgr;

    nop

    nop

    nop

    nop

    nop

    iget v9, p1, Landroid/os/Message;->arg1:I

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lfgm;->e:Lfho;

    nop

    nop

    invoke-virtual {v6}, Lfho;->a()I

    move-result v6

    nop

    nop

    nop

    nop

    if-eq v6, v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v9}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v1, v9, v3}, Lfgr;->d(ILjava/lang/String;)V

    goto/16 :goto_39

    nop

    nop

    :cond_6
    sget-object v6, Lfgm;->a:Lfht;

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lfhu;->f(Lfht;)V

    invoke-static {v9}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    nop

    nop

    iput-object v6, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    if-eqz v6, :cond_7

    nop

    nop

    nop

    nop

    iput v9, p0, Lfgh;->d:I

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Lfgi;

    nop

    invoke-direct {v7, v6}, Lfgi;-><init>(Landroid/hardware/Camera;)V

    iput-object v7, p0, Lfgh;->e:Lfgi;

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    invoke-static {}, Lfgd;->c()Lfgd;

    move-result-object v7

    nop

    invoke-virtual {v7, v9}, Lfgd;->b(I)Lfhh;

    move-result-object v7

    nop

    iput-object v7, v6, Lfgm;->b:Lfhh;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    new-instance v7, Lfgn;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lfgh;->e:Lfgi;

    nop

    nop

    nop

    invoke-virtual {v8}, Lfgi;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    nop

    nop

    nop

    invoke-direct {v7, v8}, Lfgn;-><init>(Landroid/hardware/Camera$Parameters;)V

    iput-object v7, v6, Lfgm;->c:Lfgn;

    nop

    nop

    iget-object v6, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    invoke-virtual {v6, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-object v6, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    iget-object v6, v6, Lfgm;->e:Lfho;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Lfho;->c(I)V

    if-eqz v1, :cond_1a

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lfgg;

    nop

    nop

    iget-object v7, p0, Lfgh;->a:Lfgm;

    nop

    iget-object v8, p0, Lfgh;->b:Lfgz;

    nop

    nop

    iget-object v10, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v7, Lfgm;->c:Lfgn;

    nop

    nop

    nop

    move-object v6, v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v6 .. v11}, Lfgg;-><init>(Lfgm;Lfgz;ILandroid/hardware/Camera;Lfgn;)V

    invoke-interface {v1, v3}, Lfgr;->b(Lfgv;)V

    goto/16 :goto_39

    nop

    :cond_7
    if-eqz v1, :cond_1a

    nop

    nop

    invoke-virtual {p0, v9}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-interface {v1, v9, v3}, Lfgr;->c(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p1}, Landroidx/wear/ambient/SharedLibraryVersion;->f(I)Ljava/lang/String;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_7

    nop

    :goto_23
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_24
    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_25
    const-string v0, "CameraAction["

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :pswitch_5
    :try_start_5
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/view/SurfaceHolder;

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_27
    iget-object v2, v2, Lfgm;->e:Lfho;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_28
    sget-object v2, Lfgm;->a:Lfht;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2a
    const v1, 0xf

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_39

    nop

    nop

    :catch_3
    move-exception v1

    nop

    :try_start_6
    sget-object v3, Lfgm;->a:Lfht;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v3, v1}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    iget v1, p0, Lfgh;->f:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v1, v5

    nop

    nop

    nop

    iput v1, p0, Lfgh;->f:I

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v1, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lfgm;->e:Lfho;

    nop

    nop

    invoke-virtual {v1, v3}, Lfho;->c(I)V

    goto/16 :goto_39

    nop

    nop

    :pswitch_7
    iget v1, p0, Lfgh;->f:I

    nop

    nop

    nop

    nop

    if-lez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lfgm;->a:Lfht;

    nop

    nop

    invoke-static {v1}, Lfhu;->g(Lfht;)V

    goto/16 :goto_39

    nop

    :cond_8
    iget-object v1, p0, Lfgh;->a:Lfgm;

    nop

    iget-object v1, v1, Lfgm;->e:Lfho;

    nop

    nop

    nop

    const/16 v3, 0x10

    nop

    invoke-virtual {v1, v3}, Lfho;->c(I)V

    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v3, Landroid/hardware/Camera$AutoFocusCallback;

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_39

    nop

    :pswitch_8
    iget-object v1, p0, Lfgh;->e:Lfgi;

    nop

    nop

    nop

    invoke-virtual {v1}, Lfgi;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    nop

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v3, Lfhn;

    nop

    nop

    iget-object v7, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    iget-object v7, v7, Lfgm;->c:Lfgn;

    nop

    nop

    nop

    iget-object v7, v7, Lfhg;->w:Landroidx/wear/ambient/SharedLibraryVersion;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfhn;->e()Lfhs;

    move-result-object v7

    nop

    invoke-virtual {v7}, Lfhs;->b()I

    move-result v8

    nop

    invoke-virtual {v7}, Lfhs;->a()I

    move-result v7

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v8, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    invoke-virtual {v3}, Lfhn;->f()Lfhs;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7}, Lfhs;->b()I

    move-result v8

    nop

    nop

    invoke-virtual {v7}, Lfhs;->a()I

    move-result v7

    nop

    nop

    nop

    invoke-virtual {v1, v8, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget v7, v3, Lfhn;->j:I

    nop

    if-ne v7, v6, :cond_9

    nop

    iget v6, v3, Lfhn;->h:I

    nop

    nop

    iget v7, v3, Lfhn;->i:I

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_2c

    nop

    :cond_9
    invoke-virtual {v1, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    :goto_2c
    iget v6, v3, Lfhn;->l:I

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    iget-byte v6, v3, Lfhn;->n:B

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    iget-object v6, p0, Lfgh;->a:Lfgm;

    nop

    nop

    iget-object v6, v6, Lfgm;->c:Lfgn;

    nop

    sget-object v7, Lfhb;->a:Lfhb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Lfhg;->d(Lfhb;)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_c

    nop

    nop

    nop

    iget v6, v3, Lfhn;->p:F

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    const/high16 v8, 0x42c80000    # 100.0f

    nop

    mul-float/2addr v6, v8

    nop

    float-to-int v6, v6

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-static {v7, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-ltz v6, :cond_a

    nop

    goto :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_a
    add-int/lit8 v6, v6, 0x1

    nop

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    neg-int v6, v6

    nop

    nop

    nop

    nop

    nop

    if-ne v6, v7, :cond_b

    nop

    nop

    nop

    nop

    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    nop

    nop

    :cond_b
    :goto_2d
    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_c
    iget v6, v3, Lfhn;->q:I

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    iget-object v6, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    iget-object v6, v6, Lfgm;->c:Lfgn;

    nop

    nop

    nop

    sget-object v7, Lfhb;->e:Lfhb;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Lfhg;->d(Lfhb;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_d

    nop

    iget-boolean v6, v3, Lfhn;->w:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_d
    iget-object v6, v3, Lfhn;->s:Lfhd;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lfhd;->name()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {v6}, Landroidx/wear/ambient/SharedLibraryVersion;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v6, p0, Lfgh;->a:Lfgm;

    nop

    iget-object v6, v6, Lfgm;->c:Lfgn;

    nop

    nop

    nop

    nop

    sget-object v7, Lfhb;->f:Lfhb;

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Lfhg;->d(Lfhb;)Z

    move-result v6

    nop

    if-eqz v6, :cond_e

    nop

    nop

    iget-boolean v6, v3, Lfhn;->x:Z

    nop

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_e
    iget-object v6, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lfgm;->c:Lfgn;

    nop

    sget-object v7, Lfhb;->c:Lfhb;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Lfhg;->d(Lfhb;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_10

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfhn;->g()Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    if-eqz v6, :cond_f

    nop

    nop

    invoke-virtual {v3}, Lfhn;->g()Ljava/util/List;

    move-result-object v6

    nop

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_2e

    nop

    nop

    nop

    nop

    :cond_f
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_10
    :goto_2e
    iget-object v6, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lfgm;->c:Lfgn;

    nop

    nop

    sget-object v7, Lfhb;->d:Lfhb;

    nop

    invoke-virtual {v6, v7}, Lfhg;->d(Lfhb;)Z

    move-result v6

    nop

    if-eqz v6, :cond_12

    nop

    invoke-virtual {v3}, Lfhn;->h()Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    if-eqz v6, :cond_11

    nop

    nop

    nop

    invoke-virtual {v3}, Lfhn;->h()Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_2f

    nop

    :cond_11
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_12
    :goto_2f
    iget-object v6, v3, Lfhn;->r:Lfhc;

    nop

    sget-object v7, Lfhc;->a:Lfhc;

    nop

    nop

    nop

    if-eq v6, v7, :cond_13

    nop

    nop

    nop

    invoke-virtual {v6}, Lfhc;->name()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {v6}, Landroidx/wear/ambient/SharedLibraryVersion;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_13
    iget-object v6, v3, Lfhn;->t:Lfhe;

    nop

    nop

    nop

    nop

    sget-object v7, Lfhe;->a:Lfhe;

    nop

    nop

    nop

    nop

    if-eq v6, v7, :cond_14

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_14

    nop

    nop

    nop

    invoke-virtual {v6}, Lfhe;->name()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Landroidx/wear/ambient/SharedLibraryVersion;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :cond_14
    iget-boolean v6, v3, Lfhn;->y:Z

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    iget-object v6, v3, Lfhn;->z:Lfhs;

    nop

    if-nez v6, :cond_15

    nop

    nop

    nop

    nop

    move-object v7, v4

    nop

    goto :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_15
    new-instance v7, Lfhs;

    nop

    nop

    invoke-direct {v7, v6}, Lfhs;-><init>(Lfhs;)V

    :goto_30
    if-eqz v7, :cond_16

    nop

    invoke-virtual {v7}, Lfhs;->b()I

    move-result v6

    nop

    nop

    invoke-virtual {v7}, Lfhs;->a()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6, v7}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    :cond_16
    iget v3, v3, Lfhn;->o:I

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    iget-object v3, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lfgh;->e:Lfgi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfgi;->b()V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    iget-object v1, p0, Lfgh;->e:Lfgi;

    nop

    invoke-virtual {v1}, Lfgi;->b()V

    goto/16 :goto_39

    nop

    nop

    nop

    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, [Landroid/hardware/Camera$Parameters;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lfgh;->e:Lfgi;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfgi;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    nop

    aput-object v3, v1, v7

    nop

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    iget-object v1, p0, Lfgh;->e:Lfgi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfgi;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    iget-object v3, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lfgh;->e:Lfgi;

    nop

    nop

    nop

    invoke-virtual {v1}, Lfgi;->b()V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_39

    nop

    nop

    :pswitch_d
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    check-cast v3, Landroid/hardware/Camera$PreviewCallback;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-ne v2, v7, :cond_17

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_14

    nop

    nop

    :goto_32
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p1}, Lfgy;->a(Landroid/os/Message;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p0}, Lfhu;->g(Lfht;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget p1, p1, Landroid/os/Message;->what:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto :goto_37

    nop

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    :try_start_7
    sget-object v6, Lfgm;->a:Lfht;

    nop

    nop

    nop

    nop

    const-string v7, "Fail when calling Camera.release()."

    nop

    nop

    nop

    invoke-static {v6, v7, v0}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iput-object v4, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    goto :goto_38

    nop

    nop

    :goto_37
    iput-object v4, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    throw v0

    nop

    :cond_18
    :goto_38
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    if-ne v0, v5, :cond_19

    nop

    iget-object v0, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_19

    nop

    nop

    iget v0, p1, Landroid/os/Message;->arg1:I

    nop

    nop

    nop

    nop

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    if-eqz v1, :cond_1a

    nop

    nop

    nop

    nop

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    check-cast v1, Lfgr;

    nop

    iget v2, p1, Landroid/os/Message;->arg1:I

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object p0

    nop

    invoke-interface {v1, v2, p0}, Lfgr;->c(ILjava/lang/String;)V

    goto :goto_39

    nop

    nop

    :cond_19
    iget-object v0, p0, Lfgh;->b:Lfgz;

    nop

    nop

    nop

    nop

    check-cast v0, Lfgm;

    nop

    iget-object v0, v0, Lfgm;->g:Lfhm;

    nop

    nop

    iget v4, p0, Lfgh;->d:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v4}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, p0, v2, v3}, Lfhm;->b(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1a
    :goto_39
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p1}, Lfgy;->a(Landroid/os/Message;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_3c
    goto/16 :goto_20

    nop

    nop

    :catch_5
    move-exception v1

    nop

    nop

    :try_start_9
    iget-object v3, p0, Lfgh;->a:Lfgm;

    nop

    iget-object v3, v3, Lfgm;->e:Lfho;

    nop

    invoke-virtual {v3}, Lfho;->a()I

    move-result v3

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/wear/ambient/SharedLibraryVersion;->f(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    nop

    sget-object v0, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->JeIhrWmEZoq:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lfgm;->a:Lfht;

    nop

    nop

    nop

    const-string v7, "RuntimeException during "

    nop

    invoke-static {v0, v7}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v6, v0, v1}, Lfhu;->b(Lfht;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    iget-object v0, v0, Lfgm;->e:Lfho;

    nop

    invoke-virtual {v0}, Lfho;->b()V

    iget-object v0, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_18

    nop

    sget-object v0, Lfgm;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lfhu;->f(Lfht;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v0, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iput-object v4, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v7, 0x0

    nop

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    :try_start_c
    sget-object v3, Lfgm;->a:Lfht;

    nop

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    nop

    nop

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v3, v1}, Lfhu;->a(Lfht;Ljava/lang/String;)V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    iget-object v1, p0, Lfgh;->e:Lfgi;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfgi;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    nop

    nop

    nop

    iget v3, p1, Landroid/os/Message;->arg1:I

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v3, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lfgh;->e:Lfgi;

    nop

    nop

    invoke-virtual {v1}, Lfgi;->b()V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :pswitch_f
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    iget-object v3, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lfgm;->b:Lfhh;

    nop

    nop

    nop

    nop

    nop

    iget v6, p1, Landroid/os/Message;->arg1:I

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6, v5}, Lfhh;->e(IZ)I

    move-result v3

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v1, p0, Lfgh;->e:Lfgi;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfgi;->a()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    nop

    nop

    iget v3, p1, Landroid/os/Message;->arg2:I

    nop

    nop

    nop

    nop

    nop

    if-lez v3, :cond_1b

    nop

    nop

    nop

    iget-object v3, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lfgm;->b:Lfhh;

    nop

    nop

    nop

    nop

    iget v6, p1, Landroid/os/Message;->arg1:I

    nop

    invoke-virtual {v3, v6}, Lfhh;->d(I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    invoke-virtual {v1, v7}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v3, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lfgh;->e:Lfgi;

    nop

    nop

    invoke-virtual {v1}, Lfgi;->b()V

    goto/16 :goto_39

    nop

    :pswitch_10
    iget v1, p1, Landroid/os/Message;->arg1:I

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v5, :cond_1c

    nop

    move v7, v5

    nop

    nop

    nop

    :cond_1c
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v7}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    goto/16 :goto_39

    nop

    nop

    nop

    :pswitch_11
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    goto/16 :goto_39

    nop

    nop

    :pswitch_12
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :pswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/hardware/Camera$FaceDetectionListener;

    nop

    nop

    nop

    iget-object v3, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_39

    nop

    nop

    nop

    :pswitch_14
    iget v1, p0, Lfgh;->f:I

    nop

    nop

    nop

    nop

    add-int/2addr v1, v6

    nop

    nop

    nop

    iput v1, p0, Lfgh;->f:I

    nop

    nop

    nop

    nop

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :pswitch_15
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    check-cast v3, Landroid/hardware/Camera$OnZoomChangeListener;

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_39

    nop

    nop

    nop

    :pswitch_16
    iget-object v1, p0, Lfgh;->c:Landroid/hardware/Camera;

    nop

    nop

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    check-cast v3, Landroid/hardware/Camera$AutoFocusMoveCallback;

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3e
    if-ne v2, v3, :cond_1d

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    throw p0

    nop

    :goto_40
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_42
    iget v2, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v3, p1, Landroid/os/Message;->what:I

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_44
    if-ne v2, v7, :cond_1e

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onError(ILandroid/hardware/Camera;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lfgh;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "Media server died."

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_9
    const v1, 0x6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lfho;->a()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p2, p0, Lfgh;->a:Lfgm;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    iget-object p0, p0, Lfgm;->e:Lfho;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2, v0, v1, p1, p0}, Lfhm;->b(Ljava/lang/RuntimeException;Ljava/lang/String;II)V

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p2, p2, Lfgm;->g:Lfhm;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    iget-object p2, p2, Lfgm;->g:Lfhm;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_14
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2, p1}, Lfhm;->a(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v1}, Lfhq;->c(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lfhq;->r:Ljava/util/LinkedList;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 p2, 0x64

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lfgh;->a:Lfgm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method
