.class final Lked;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field final synthetic a:Lkek;


# direct methods
.method public constructor <init>(Lkek;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lked;->a:Lkek;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    const-string v0, "Could not write temporary panorama image."

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x7f0802e3

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

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

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

    :goto_8
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    nop

    const/16 v3, 0x64

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v0, p0, Lked;->a:Lkek;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    nop

    new-instance v2, Lpck;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    invoke-direct {v2, v3, v3}, Lpck;-><init>(II)V

    invoke-virtual {v0, v2}, Llwf;->X(Lpck;)V

    new-array v2, v3, [Ljava/lang/Object;

    nop

    new-instance v4, Lnio;

    nop

    nop

    nop

    const v5, 0x7f140590

    nop

    nop

    nop

    invoke-direct {v4, v5, v2}, Lnio;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Llwf;->V(Lnik;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    nop

    nop

    array-length v4, v2

    nop

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    nop

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Llwf;->ac(Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lked;->a:Lkek;

    nop

    nop

    nop

    iget-object v2, v2, Lkek;->U:Llvw;

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Llvw;->c(Llxa;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    nop

    nop

    iget-object v4, p0, Lked;->a:Lkek;

    nop

    nop

    nop

    nop

    iget-wide v4, v4, Lkek;->M:J

    nop

    nop

    sub-long/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llwr;->d:Llxj;

    nop

    nop

    invoke-virtual {v0}, Llxj;->b()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    new-instance v4, Ljava/io/FileOutputStream;

    nop

    nop

    invoke-virtual {v0}, Llxj;->a()Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lked;->a:Lkek;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    invoke-virtual {v0}, Llwr;->L()V

    sget-object v5, Lsob;->d:Lsob;

    nop

    nop

    nop

    iget-object p0, p0, Lked;->a:Lkek;

    nop

    iget-object v4, p0, Lkek;->X:Lmjv;

    nop

    nop

    nop

    nop

    nop

    iget v0, p0, Lkek;->q:I

    nop

    nop

    nop

    iget p0, p0, Lkek;->L:I

    nop

    nop

    nop

    long-to-float v1, v2

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lsoo;->a:Lsoo;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_0

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_0
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v6, v3

    nop

    nop

    check-cast v6, Lsoo;

    nop

    iget v7, v6, Lsoo;->b:I

    nop

    or-int/lit8 v7, v7, 0x2

    nop

    nop

    nop

    nop

    nop

    iput v7, v6, Lsoo;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v0, v6, Lsoo;->c:I

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_1
    iget-object v0, v2, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v3, v0

    nop

    nop

    check-cast v3, Lsoo;

    nop

    nop

    nop

    nop

    iget v6, v3, Lsoo;->b:I

    nop

    nop

    or-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v6, v3, Lsoo;->b:I

    nop

    nop

    nop

    nop

    iput p0, v3, Lsoo;->d:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_2
    iget-object p0, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    check-cast v0, Lsoo;

    nop

    nop

    nop

    iget v3, v0, Lsoo;->b:I

    nop

    nop

    nop

    or-int/lit8 v3, v3, 0x8

    nop

    nop

    nop

    nop

    iput v3, v0, Lsoo;->b:I

    nop

    const v3, 0x3a83126f    # 0.001f

    nop

    nop

    nop

    nop

    mul-float/2addr v1, v3

    nop

    nop

    nop

    iput v1, v0, Lsoo;->e:F

    nop

    nop

    nop

    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    if-nez p0, :cond_3

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_3
    iget-object p0, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lsoo;

    nop

    const/4 v0, 0x3

    nop

    iput v0, p0, Lsoo;->f:I

    nop

    nop

    nop

    nop

    nop

    iget v0, p0, Lsoo;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v0, v0, 0x10

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lsoo;->b:I

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    move-object v6, p0

    nop

    nop

    check-cast v6, Lsoo;

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    invoke-virtual/range {v4 .. v9}, Lmjv;->a(Lsob;Lsoo;Lsor;Lspj;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v1, v2, :cond_4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x7f0802dd

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    const v0, 0x19

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

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lked;->a:Lkek;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, v0, Lkek;->O:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    const/16 v0, 0xb38

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_5
    new-instance p0, Ljava/io/IOException;

    nop

    const-string v0, "Temporary session file not usable."

    nop

    nop

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_6
    goto/32 :goto_13

    nop

    :goto_21
    sget-object p0, Lkek;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
