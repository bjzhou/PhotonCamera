.class public final synthetic Lgot;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/processing/ProcessingService;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgor;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgou;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgov;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgpf;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgql;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lgqo;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgrr;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgvw;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgvz;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgwy;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lgxa;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    iput p2, p0, Lgot;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgot;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v1, p0

    iget v0, v1, Lgot;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_0

    iget-object v3, v1, Lgot;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lgxa;

    iget-object v0, v4, Lgxa;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    goto/16 :goto_6

    :pswitch_0
    iget-object v2, v1, Lgot;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lgxa;

    iget-object v0, v3, Lgxa;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    move-object v0, v2

    check-cast v0, Lgxa;

    iget-object v0, v0, Lgxa;->d:Lgxv;

    invoke-virtual {v0}, Lgxv;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lndd;->l(Ljava/io/File;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    check-cast v0, Lgxa;

    iget-object v0, v0, Lgxa;->d:Lgxv;

    invoke-virtual {v0}, Lgxv;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not decode preview file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lgwp;

    :goto_0
    invoke-virtual {v2, v0}, Lgwp;->I(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, v3, Lgxa;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    check-cast v2, Lgwp;

    invoke-virtual {v2, v0}, Lgwp;->Y(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v2

    check-cast v4, Lgxa;

    iget-object v4, v4, Lgxa;->d:Lgxv;

    invoke-virtual {v4}, Lgxv;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read preview file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lgwp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    iget-object v2, v3, Lgxa;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_1
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgwy;

    iget-object v2, v0, Lgwy;->c:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lgwy;->c:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfgd;

    invoke-interface {v2}, Lfgd;->c()V

    sget-object v2, Lmpx;->a:Lmpx;

    iput-object v2, v0, Lgwy;->c:Lmqp;

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :pswitch_3
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :pswitch_4
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgvz;

    iget-object v2, v0, Lgvz;->a:Landroid/hardware/SensorManager;

    iget-object v3, v0, Lgvz;->j:Ldus;

    iget-object v0, v0, Lgvz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void

    :pswitch_5
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgvz;

    iget-object v2, v0, Lgvz;->a:Landroid/hardware/SensorManager;

    iget-object v4, v0, Lgvz;->j:Ldus;

    iget-object v0, v0, Lgvz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v2, v4, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void

    :pswitch_6
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    const-string v2, "HeadingSensor.RegisterAccelerometer"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lgvw;

    iget-object v4, v2, Lgvw;->c:Landroid/hardware/Sensor;

    if-eqz v4, :cond_2

    iget-object v5, v2, Lgvw;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v0, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v4, "HeadingSensor.RegisterMagneticSensor"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, v2, Lgvw;->d:Landroid/hardware/Sensor;

    if-eqz v4, :cond_3

    iget-object v2, v2, Lgvw;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :pswitch_7
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lgvw;

    iget-object v3, v2, Lgvw;->c:Landroid/hardware/Sensor;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lgvw;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_4
    iget-object v3, v2, Lgvw;->d:Landroid/hardware/Sensor;

    if-eqz v3, :cond_5

    iget-object v2, v2, Lgvw;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_5
    return-void

    :pswitch_8
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgrn;

    invoke-virtual {v0}, Lgrn;->b()V

    return-void

    :pswitch_9
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    :try_start_3
    check-cast v0, Lgqo;

    iget-object v0, v0, Lgqo;->b:Lgpn;

    invoke-virtual {v0}, Lgpn;->c()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    sget-object v2, Lgqo;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "ImageShadowTask failed because it was interrupted."

    const/16 v4, 0xc78

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_a
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgql;

    iget-object v0, v0, Lgql;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgql;

    iget-object v2, v0, Lgql;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgql;

    invoke-virtual {v0}, Lgql;->a()V

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_6
    return-void

    :pswitch_b
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    new-instance v2, Ljava/lang/RuntimeException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :pswitch_c
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/apps/camera/processing/ProcessingService;

    iget-object v3, v3, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    move-object v4, v0

    check-cast v4, Lcom/google/android/apps/camera/processing/ProcessingService;

    iput-boolean v2, v4, Lcom/google/android/apps/camera/processing/ProcessingService;->g:Z

    move-object v2, v0

    check-cast v2, Lcom/google/android/apps/camera/processing/ProcessingService;

    iget-boolean v2, v2, Lcom/google/android/apps/camera/processing/ProcessingService;->h:Z

    if-eqz v2, :cond_7

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/processing/ProcessingService;->c()V

    :cond_7
    monitor-exit v3

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :pswitch_d
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    new-instance v2, Landroid/content/Intent;

    check-cast v0, Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/camera/processing/ProcessingService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :pswitch_e
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgpf;

    iget-object v0, v0, Lgpf;->a:Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;

    iget-object v0, v0, Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;->a:Lebj;

    invoke-virtual {v0}, Lebj;->a()V

    return-void

    :pswitch_f
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Prewarm timed out! This should not happen."

    const/16 v4, 0xc5d

    invoke-static {v2, v3, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    check-cast v0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;

    iget-object v0, v0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;->b:Lfbz;

    invoke-interface {v0}, Lfbz;->I()V

    return-void

    :pswitch_10
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgov;

    iget-object v0, v0, Lgov;->a:Lgow;

    iget-object v2, v0, Lgow;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lgow;->c(J)V

    return-void

    :cond_8
    invoke-virtual {v0}, Lgow;->a()V

    return-void

    :pswitch_11
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgou;

    iget-object v0, v0, Lgou;->b:Lcmo;

    sget-object v2, Lika;->g:Lika;

    invoke-interface {v0, v2}, Lcmo;->f(Lika;)V

    return-void

    :pswitch_12
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lgor;

    iget-object v4, v3, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_6
    move-object v4, v0

    check-cast v4, Lgor;

    iget-boolean v4, v4, Lgor;->g:Z

    if-nez v4, :cond_e

    move-object v4, v0

    check-cast v4, Lgor;

    iget-object v4, v4, Lgor;->e:Loiw;

    check-cast v4, Lfix;

    invoke-virtual {v4}, Lfix;->b()Lmqp;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Lgor;

    iget-object v5, v5, Lgor;->b:Landroid/content/Context;

    const-string v6, "facedetector-front.tflite.enc"

    const-string v7, "F25FB5752634BA2183D9A16FA878F60A"

    move-object v8, v0

    check-cast v8, Lgor;

    invoke-virtual {v8, v5, v6, v7}, Lgor;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v16

    move-object v5, v0

    check-cast v5, Lgor;

    iget-object v5, v5, Lgor;->b:Landroid/content/Context;

    const-string v6, "face_model_468.xnft.enc"

    const-string v7, "DB22B14BAADB4BEB2FF3FE1205232CB2"

    move-object v8, v0

    check-cast v8, Lgor;

    invoke-virtual {v8, v5, v6, v7}, Lgor;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v15

    move-object v5, v0

    check-cast v5, Lgor;

    iget-object v5, v5, Lgor;->c:Ldhi;

    sget-object v6, Ldib;->u:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->l(Ldhj;)Z

    move-result v12

    move-object v5, v0

    check-cast v5, Lgor;

    iget-object v5, v5, Lgor;->c:Ldhi;

    sget-object v6, Ldib;->v:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->l(Ldhj;)Z

    move-result v13

    move-object v5, v0

    check-cast v5, Lgor;

    iget-object v5, v5, Lgor;->c:Ldhi;

    sget-object v6, Ldib;->w:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object v5

    if-eqz v13, :cond_b

    invoke-static {v5}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v0, Lgor;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xc4b

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Darwinn offline compilation was enabled, but product class was not configured. Portrait Relighting cannot be initialized."

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v0, v3, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_9
    if-eqz v12, :cond_a

    :try_start_7
    sget-object v0, Lgor;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xc4a

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Darwinn offline compilation was enabled, but it cannot be combined with XenoJetCL inference (invalid configuration). Portrait Relighting cannot be initialized."

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object v0, v3, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_3

    :cond_a
    :try_start_8
    move-object v6, v0

    check-cast v6, Lgor;

    iget-object v6, v6, Lgor;->b:Landroid/content/Context;

    const-string v7, "face_light_256_256"

    move-object v8, v0

    check-cast v8, Lgor;

    invoke-virtual {v8, v6, v7, v5}, Lgor;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    move-object v7, v0

    check-cast v7, Lgor;

    iget-object v7, v7, Lgor;->b:Landroid/content/Context;

    const-string v8, "facemesh-full"

    move-object v9, v0

    check-cast v9, Lgor;

    invoke-virtual {v9, v7, v8, v5}, Lgor;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lgor;

    iget-object v8, v8, Lgor;->b:Landroid/content/Context;

    const-string v9, "ffv6_holo040820_normals_net_mixed_fp16_256_256"

    move-object v10, v0

    check-cast v10, Lgor;

    invoke-virtual {v10, v8, v9, v5}, Lgor;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    move-object v9, v0

    check-cast v9, Lgor;

    iget-object v9, v9, Lgor;->b:Landroid/content/Context;

    const-string v10, "ffv6_holo040820_relighting_net_mixed_fp16_256_256"

    move-object v11, v0

    check-cast v11, Lgor;

    invoke-virtual {v11, v9, v10, v5}, Lgor;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v19, v5

    move-object v14, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    goto :goto_4

    :cond_b
    move-object v5, v0

    check-cast v5, Lgor;

    iget-object v5, v5, Lgor;->b:Landroid/content/Context;

    const-string v6, "face_light_256_256.tflite.enc"

    const-string v7, "5BE6E9624DF061E5416D4D1D6215D6E6"

    move-object v8, v0

    check-cast v8, Lgor;

    invoke-virtual {v8, v5, v6, v7}, Lgor;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lgor;

    iget-object v6, v6, Lgor;->b:Landroid/content/Context;

    const-string v7, "facemesh-full.tflite.enc"

    const-string v8, "606B34134C93CF8298025B58B6846736"

    move-object v9, v0

    check-cast v9, Lgor;

    invoke-virtual {v9, v6, v7, v8}, Lgor;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    move-object v7, v0

    check-cast v7, Lgor;

    iget-object v7, v7, Lgor;->b:Landroid/content/Context;

    const-string v8, "ffv6_holo040820_normals_net_mixed_fp16_256_256.tflite.enc"

    const-string v9, "8EE4D0F472BB7FF0B259F3841B1EE273"

    move-object v10, v0

    check-cast v10, Lgor;

    invoke-virtual {v10, v7, v8, v9}, Lgor;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lgor;

    iget-object v8, v8, Lgor;->b:Landroid/content/Context;

    const-string v9, "ffv6_holo040820_relighting_net_mixed_fp16_256_256.tflite.enc"

    const-string v10, "E6BE4D7010D31926961DE0E45705C754"

    move-object v11, v0

    check-cast v11, Lgor;

    invoke-virtual {v11, v8, v9, v10}, Lgor;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    move-object v14, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    :goto_4
    move-object v5, v0

    check-cast v5, Lgor;

    iget-object v9, v5, Lgor;->f:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_5

    :cond_c
    const-string v4, ""

    move-object v10, v4

    :goto_5
    move-object v4, v0

    check-cast v4, Lgor;

    iget-boolean v11, v4, Lgor;->d:Z

    invoke-virtual/range {v9 .. v19}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitRelightingProcessorInterface;->initPortraitRelightingProcessor(Ljava/lang/String;ZZZ[B[B[B[B[B[B)Z

    move-result v4

    if-nez v4, :cond_d

    sget-object v0, Lgor;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xc49

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Unable to initialize Firefly Processor."

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    iget-object v0, v3, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_3

    :cond_d
    :try_start_9
    check-cast v0, Lgor;

    iput-boolean v2, v0, Lgor;->g:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_e
    iget-object v0, v3, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    iget-object v2, v3, Lgor;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_13
    iget-object v0, v1, Lgot;->a:Ljava/lang/Object;

    check-cast v0, Lgou;

    iget-object v0, v0, Lgou;->a:Lflf;

    sget-object v2, Lika;->g:Lika;

    invoke-interface {v0, v2}, Lflf;->b(Lika;)Z

    return-void

    :goto_6
    :try_start_a
    move-object v0, v3

    check-cast v0, Lgxa;

    iget-object v0, v0, Lgxa;->d:Lgxv;

    invoke-virtual {v0}, Lgxv;->b()Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v5, :cond_f

    :try_start_b
    invoke-virtual {v0}, Lgxv;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lndd;->l(Ljava/io/File;)[B

    move-result-object v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    new-instance v0, Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->r([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read exif: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v3

    check-cast v7, Lgwp;

    invoke-virtual {v7, v0}, Lgwp;->I(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7
    new-instance v7, Lhkt;

    new-instance v8, Lkaf;

    invoke-direct {v8, v2, v6}, Lkaf;-><init>(II)V

    sget-object v2, Lkqi;->c:Lkqi;

    invoke-direct {v7, v2}, Lhkt;-><init>(Lkqi;)V

    invoke-virtual {v7, v0}, Lhkt;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    sget-object v0, Lkab;->a:Lkab;

    invoke-virtual {v7, v0}, Lhkt;->b(Lkab;)V

    check-cast v3, Lgwp;

    invoke-virtual {v3, v5, v7}, Lgwp;->r([BLhkt;)Lnou;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    iget-object v0, v4, Lgxa;->e:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_3
    move-exception v0

    iget-object v0, v4, Lgxa;->e:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_8

    :cond_f
    iget-object v0, v4, Lgxa;->e:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_8

    :catchall_4
    move-exception v0

    iget-object v2, v4, Lgxa;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
