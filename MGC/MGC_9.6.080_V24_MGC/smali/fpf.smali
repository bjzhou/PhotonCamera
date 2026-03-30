.class public final Lfpf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjs;


# static fields
.field public static final a:Lfjo;

.field public static final b:Lfjo;


# instance fields
.field private final c:Lfmm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lfjo;->a:Lfjn;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    sget-object v2, Lfjo;->a:Lfjn;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    sput-object v1, Lfpf;->a:Lfjo;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lfpf;->b:Lfjo;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, v3, v0, v2}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lfjo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    const-string v3, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v0, 0x5a

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    const-string v2, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_14
    new-instance v1, Lfjo;

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

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v2, v3, v1}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lfpf;->c:Lfmm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

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
.end method

.method public constructor <init>(Lfmm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfpf;->c:Lfmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lfjp;)Z
    .locals 3

    goto/32 :goto_34

    nop

    nop

    :goto_0
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_2d

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_2d

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    move-object v1, p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p3, v0}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :catch_1
    :goto_a
    goto/32 :goto_2b

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

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
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    nop

    nop

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lfpf;->c:Lfmm;

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    new-instance p2, Lfjw;

    nop

    nop

    nop

    invoke-direct {p2, v2, p0}, Lfjw;-><init>(Ljava/io/OutputStream;Lfmm;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v1, v2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    :goto_14
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Landroid/graphics/Bitmap$CompressFormat;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v1, Lfpf;->a:Lfjo;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "anBnX29wdF9xX2tleQ"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p3, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    check-cast p1, Lflx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    goto :goto_21

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    nop

    nop

    :catch_2
    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p1, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_10

    nop

    nop

    :goto_25
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_26
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    :try_start_3
    invoke-virtual {p1, v0, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_31

    nop

    nop

    :goto_28
    invoke-interface {p1}, Lflx;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v0, Lfpf;->b:Lfjo;

    nop

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

    :goto_2b
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2c
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_4
    goto/32 :goto_b

    nop

    :goto_30
    if-nez v1, :cond_5

    nop

    goto/32 :goto_25

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 p0, 0x1

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_32
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_3
    :goto_33
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_34
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_21

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_38
    move/from16 p3, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p3, v1}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3a
    move-object v1, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
