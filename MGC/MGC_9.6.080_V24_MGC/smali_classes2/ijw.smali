.class public final synthetic Lijw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpbz;


# instance fields
.field public final synthetic a:Lpdf;

.field public final synthetic b:Ltxm;

.field public final synthetic c:Ltxm;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;

.field private final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lpdf;Ltxm;Ltxm;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lijw;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lijw;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p5, p0, Lijw;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lijw;->a:Lpdf;

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
    iput-object p3, p0, Lijw;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    iput p6, p0, Lijw;->f:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 14

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lini;->a:Lsdb;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "Unable to get model asset file"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    const/16 v9, 0x2f

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v2, Lika;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget-char v12, v4, v12

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1f

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_7
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    if-gtz v7, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0x66c

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_f
    const/16 v2, 0x66b

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_1f

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    if-lt v11, v10, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v5, v5, 0x1

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

    :goto_15
    const-string v0, "KeplerGan#initialize"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v10, v7, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v0, "Walnut#initialize"

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lijw;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_1b
    goto/32 :goto_83

    nop

    nop

    :goto_1c
    move v11, v3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_1f
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aput-char v12, v4, v7

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2}, Lika;->b()Ltbq;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_22
    goto :goto_23

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw p0

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_24
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_25
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_3
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Lijw;->a:Lpdf;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2b
    const-string v1, "Failed to initialize Walnut."

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2c
    move v7, v10

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_74

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lika;->b()Ltbq;

    move-result-object p0

    nop

    :try_start_4
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    nop

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    nop

    invoke-static {v0}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v9

    nop

    nop

    nop

    move-object v3, p0

    nop

    nop

    nop

    check-cast v3, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v10}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeInitializeWalnutFromOpenFile(IJJJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_2f
    move v7, v13

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v0, Lilz;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v12, v9, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_6
    :goto_33
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_35
    sget v3, Lsrs;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/qcMkh;->GggviFdraJSv:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_37
    aget-char v10, v4, v10

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/16 v2, 0x694

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Lijw;->d:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    aput-char v9, v4, v7

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3c
    move v5, v3

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_1b

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq v12, v9, :cond_7

    nop

    goto/32 :goto_6a

    nop

    :cond_7
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_40
    iget-object v2, p0, Lijw;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_41
    const-string v1, "Unable to get model asset file."

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v12, v7, -0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_45
    invoke-direct {v1, v4, v3, v7}, Ljava/lang/String;-><init>([CII)V

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    nop

    nop

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    new-instance v1, Lcom/google/googlex/gcam/TfliteFileData;

    nop

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    nop

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    nop

    nop

    move-object v3, v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v3 .. v8}, Lcom/google/googlex/gcam/TfliteFileData;-><init>(IJJ)V

    iget-wide v3, v1, Lcom/google/googlex/gcam/TfliteFileData;->a:J

    nop

    invoke-static {v3, v4, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->TfliteFileData_fd_get(JLcom/google/googlex/gcam/TfliteFileData;)I

    iget-wide v3, v1, Lcom/google/googlex/gcam/TfliteFileData;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v0

    nop

    nop

    check-cast v2, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeInitializeKeplerV1FromOpenFile(JJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move v7, v5

    nop

    nop

    :goto_47
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v0, p0, Lijw;->b:Ltxm;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-lt v5, v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_58

    nop

    nop

    :goto_4b
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_5f

    nop

    :cond_9
    goto/32 :goto_5e

    nop

    :goto_4c
    check-cast p1, Lgit;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto :goto_4e

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_8
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4e
    throw v0

    nop

    nop
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Lika;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_50
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_51
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-gtz v7, :cond_a

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_42

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_55
    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_56
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    aget-object v8, v1, v5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v0, p0, Lijw;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    add-int/lit8 v13, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5b
    if-lt v5, v6, :cond_b

    nop

    nop

    goto/32 :goto_7b

    nop

    :cond_b
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_5c
    const-string v3, "base.tflite.uncompressed"

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_71

    nop

    nop

    :goto_60
    move v5, v3

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_61
    aget-object v6, v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_63
    sget-object v0, Lini;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v2, p0, Lijw;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_65
    check-cast v0, Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Lijw;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_68
    iget-object p1, p0, Lijw;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_69
    move v12, v9

    nop

    :goto_6a
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v0, Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    add-int/lit8 v10, v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_c
    :try_start_9
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_70
    sget-object v0, Lilz;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_71
    iget v0, p0, Lijw;->f:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const/16 v2, 0x693

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_75
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_76
    add-int/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    new-array v4, v4, [C

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_78
    goto/16 :goto_1b

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v1, p0, Lijw;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7e
    if-eqz v9, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2

    nop

    nop

    :goto_7f
    if-ne v10, v9, :cond_e

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_80
    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_81
    check-cast p1, Lgit;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const v1, 0x2

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_83
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_26

    nop

    nop
.end method
