.class public final Lmqu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private b:Z

.field private final c:J

.field private d:Landroid/content/res/AssetFileDescriptor;

.field private e:Landroid/content/res/AssetFileDescriptor;

.field private volatile f:J

.field private volatile g:I

.field private final h:Lrss;

.field private final i:Lrss;

.field private final j:Loyd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const-string v0, "mqu"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    sput-object v0, Lmqu;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 9

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v8, Loyg;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v8, v0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_8
    const/4 v6, 0x0

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {v0 .. v8}, Lmqu;-><init>(Lrss;Lrss;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Loyd;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

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

    nop

    :goto_d
    goto/32 :goto_11

    nop

    :goto_e
    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    :goto_11
    goto/32 :goto_e

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

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    const/4 v7, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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
.end method

.method public constructor <init>(Lrss;Lrss;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Loyd;)V
    .locals 19

    goto/32 :goto_13

    nop

    nop

    :goto_0
    invoke-static/range {p5 .. p5}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p6, :cond_0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_24

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    iput-object v0, v1, Lmqu;->i:Lrss;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v2, v1, Lmqu;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_6
    const-wide/16 v17, 0x0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide v2, v1, Lmqu;->c:J

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_9
    move/from16 v5, p3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p7, :cond_1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v6, v14

    nop

    :goto_c
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v11, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-wide v12, v10

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    const v0, 0x11

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v2, p8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    const-wide/16 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x14

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_60

    nop

    nop

    :goto_1d
    invoke-static/range {p4 .. p4}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1f
    move-wide v7, v5

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static/range {v2 .. v16}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->createHandle(Landroid/content/Context;Ljava/lang/String;IZIJJIJJZ)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move v9, v14

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    move-object v3, v0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v11, v9

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_27
    iput-object v2, v1, Lmqu;->j:Loyd;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_28
    invoke-virtual/range {p2 .. p2}, Lrss;->h()Z

    move-result v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v2, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2a
    move v9, v4

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_4
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_2e
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v4, p4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v1, Lmqu;->d:Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object/from16 v4, p5

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v1, Lmqu;->e:Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lmqu;->d:Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, v1, Lmqu;->d:Landroid/content/res/AssetFileDescriptor;

    nop

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    iget-object v0, v1, Lmqu;->d:Landroid/content/res/AssetFileDescriptor;

    nop

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, v1, Lmqu;->e:Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v9

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v0, v1, Lmqu;->e:Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    iget-object v0, v1, Lmqu;->e:Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v17

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2f
    const-string v0, ""

    nop

    nop

    :goto_30
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-wide v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move/from16 v16, v14

    nop

    nop

    :goto_33
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_24

    nop

    nop

    :catch_1
    move-exception v0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v0, v1, Lmqu;->h:Lrss;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    :goto_38
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_5
    goto/32 :goto_64

    nop

    :goto_3a
    invoke-virtual {v15}, Lscs;->b()Lsdo;

    move-result-object v15

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3b
    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->a()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_3c
    move v6, v5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-wide v9, v7

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3e
    move-wide/from16 v14, v17

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez p3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_2b

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_41
    move/from16 v5, p3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_42
    const-wide/16 v17, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v0, p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_44
    move v9, v14

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v0, Lmrc;->b:Lmrc;

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_48
    iput-wide v2, v1, Lmqu;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_49
    sget-object v15, Lmqu;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4a
    const-wide/16 v12, 0x0

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

    :goto_4b
    goto/16 :goto_30

    nop

    nop

    :goto_4c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4d
    move v9, v14

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

    nop

    :goto_4e
    move-wide v12, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4f
    move/from16 v16, v0

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_50
    const-string v12, "Unable to load model from path."

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_51
    goto :goto_46

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const-wide/16 v9, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-wide v9, v7

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v6, v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_56
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_57
    move v4, v14

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_32

    nop

    nop

    :goto_5a
    check-cast v2, Lmrc;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual/range {p2 .. p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5c
    if-eqz p7, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto :goto_62

    nop

    :catch_3
    move-exception v0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v0

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

    :goto_5f
    goto :goto_69

    nop

    nop

    nop

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_60
    move v5, v14

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move v5, v14

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_63
    move-object v2, v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_15

    nop

    nop

    :goto_66
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_67
    const/16 v13, 0x122f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_68
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/4 v14, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-static {v12, v13, v15, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_6c
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_6d
    move v11, v6

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_6e
    invoke-virtual {v2}, Lmrc;->ordinal()I

    move-result v4

    nop

    goto/32 :goto_29

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x10

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

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :cond_1
    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lmqu;->b:Z

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_2
    iget-wide v0, p0, Lmqu;->c:J

    nop

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->stopTracking(J)V

    iget-object v0, p0, Lmqu;->h:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    invoke-interface {v0}, Lmrf;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized b(Lprw;Landroid/graphics/PointF;)Lmrk;
    .locals 32

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_3
    move-object/from16 v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    if-nez v31, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    :try_start_0
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v2

    nop

    nop

    nop

    const/16 v3, 0x23

    nop

    if-ne v2, v3, :cond_1

    nop

    nop

    nop

    nop

    iget-boolean v2, v1, Lmqu;->b:Z

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v0, Lmqu;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0x122d

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Cannot start tracking: tracker is closed"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    invoke-static {}, Lmrk;->b()Lmrk;

    move-result-object v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v2

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_c
    if-nez v31, :cond_3

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

    :cond_3
    :try_start_3
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_d
    aget v2, v7, v2

    nop

    nop

    nop

    nop

    div-float v8, v2, v4

    nop

    aget v6, v7, v6

    nop

    nop

    div-float v9, v6, v5

    nop

    const/4 v0, 0x2

    nop

    nop

    nop

    aget v0, v7, v0

    nop

    nop

    add-float/2addr v2, v0

    nop

    nop

    nop

    nop

    aget v0, v7, v30

    nop

    nop

    nop

    nop

    add-float/2addr v6, v0

    nop

    nop

    iget v0, v1, Lmqu;->g:I

    nop

    iget-wide v10, v1, Lmqu;->c:J

    nop

    nop

    invoke-static {v10, v11}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->getIsRefresherCalled(J)Z

    move-result v7

    nop

    add-int/2addr v0, v7

    nop

    nop

    nop

    nop

    iput v0, v1, Lmqu;->g:I

    nop

    nop

    nop

    nop

    nop

    const/high16 v0, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v6, v0

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v6, v5

    nop

    add-float/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v2, v4

    nop

    nop

    nop

    invoke-static {}, Lmrk;->a()Lmrj;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v4, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v8, v9, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Lmrj;->d(Landroid/graphics/RectF;)V

    const/high16 v2, 0x3f800000    # 1.0f

    nop

    invoke-virtual {v0, v2}, Lmrj;->b(F)V

    invoke-static {v3}, Lmrn;->a(I)Lmrn;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lmrj;->e(Lmrn;)V

    iget-wide v2, v1, Lmqu;->c:J

    nop

    nop

    nop

    invoke-static {v2, v3}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->getCurrentTrackerIndex(J)I

    move-result v2

    nop

    invoke-static {v2}, Lmrc;->a(I)Lmrc;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lmrj;->g(Lmrc;)V

    iget v2, v1, Lmqu;->g:I

    nop

    nop

    invoke-virtual {v0, v2}, Lmrj;->c(I)V

    const-wide/16 v2, 0x0

    nop

    invoke-virtual {v0, v2, v3}, Lmrj;->f(J)V

    invoke-virtual {v0}, Lmrj;->a()Lmrk;

    move-result-object v0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lprw;->d()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    iput-wide v2, v1, Lmqu;->f:J

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    iput v2, v1, Lmqu;->g:I

    nop

    iget-object v3, v1, Lmqu;->i:Lrss;

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_5
    sget-object v3, Lmrc;->b:Lmrc;

    nop

    :goto_10
    iget-object v4, v1, Lmqu;->h:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    new-instance v5, Lpck;

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v6

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v6, v7}, Lpck;-><init>(II)V

    invoke-interface/range {p1 .. p1}, Lprw;->d()J

    move-result-wide v6

    nop

    nop

    nop

    invoke-interface {v4, v5, v6, v7}, Lmrf;->c(Lpck;J)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_6

    nop

    sget-object v4, Lmqu;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0x122c

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    const-string v5, "Cannot start motion estimator for tracking"

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    :cond_6
    iget-object v4, v1, Lmqu;->h:Lrss;

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    invoke-interface {v4}, Lmrf;->b()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_7

    nop

    nop

    nop

    nop

    sget-object v3, Lmrc;->c:Lmrc;

    nop

    nop

    nop

    nop

    :cond_7
    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v4

    nop

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lprv;

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v5

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lprv;

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v7

    nop

    nop

    nop

    const/4 v8, 0x2

    nop

    nop

    nop

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Lprv;

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v15

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v12

    nop

    iget v9, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    int-to-float v10, v15

    nop

    nop

    nop

    nop

    mul-float/2addr v9, v10

    nop

    nop

    nop

    nop

    nop

    const/high16 v11, -0x3f600000    # -5.0f

    nop

    nop

    add-float/2addr v9, v11

    nop

    nop

    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    int-to-float v14, v12

    nop

    nop

    nop

    mul-float/2addr v0, v14

    nop

    add-float/2addr v0, v11

    nop

    nop

    nop

    const/4 v11, 0x4

    nop

    nop

    new-array v11, v11, [F

    nop

    aput v9, v11, v2

    nop

    nop

    nop

    nop

    aput v0, v11, v6

    nop

    nop

    nop

    nop

    const/high16 v0, 0x41300000    # 11.0f

    nop

    nop

    nop

    aput v0, v11, v8

    nop

    const/16 v30, 0x3

    nop

    nop

    aput v0, v11, v30

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v31

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-wide v8, v1, Lmqu;->c:J

    nop

    check-cast v3, Lmrc;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lmrc;->ordinal()I

    move-result v3

    nop

    nop

    invoke-interface {v4}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    nop

    nop

    invoke-interface {v4}, Lprv;->getPixelStride()I

    move-result v18

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lprv;->getRowStride()I

    move-result v19

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    nop

    nop

    invoke-interface {v5}, Lprv;->getPixelStride()I

    move-result v21

    nop

    nop

    invoke-interface {v5}, Lprv;->getRowStride()I

    move-result v22

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v23

    nop

    nop

    nop

    invoke-interface {v7}, Lprv;->getPixelStride()I

    move-result v24

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lprv;->getRowStride()I

    move-result v25

    nop

    nop

    nop

    iget-object v4, v1, Lmqu;->j:Loyd;

    nop

    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v29

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    move v5, v14

    nop

    nop

    move v14, v4

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    move-object v7, v11

    nop

    nop

    nop

    move v11, v4

    nop

    nop

    move v4, v10

    nop

    nop

    nop

    nop

    nop

    move-wide v9, v8

    nop

    nop

    move v8, v12

    nop

    nop

    nop

    nop

    nop

    move v12, v3

    nop

    nop

    nop

    nop

    nop

    move/from16 v16, v8

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v26, v31

    nop

    nop

    nop

    nop

    move-object/from16 v27, v7

    nop

    nop

    nop

    nop

    invoke-static/range {v9 .. v29}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->startTracking(JZIIFIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILandroid/hardware/HardwareBuffer;[FZI)I

    move-result v3

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    :goto_13
    move-object/from16 v1, p0

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

    :goto_14
    move-object v2, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_a

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized c(Lprw;)Lmrk;
    .locals 29

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    move-object v2, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    if-nez v27, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual/range {v27 .. v27}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

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

    :goto_b
    return-object v0

    nop

    nop

    nop

    :catchall_1
    move-exception v0

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

    :goto_c
    if-nez v27, :cond_1

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

    :cond_1
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_d
    aget v2, v28, v2

    nop

    nop

    nop

    int-to-float v3, v4

    nop

    nop

    nop

    div-float v4, v2, v3

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    aget v5, v28, v5

    nop

    nop

    int-to-float v6, v6

    nop

    nop

    nop

    nop

    div-float v7, v5, v6

    nop

    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    nop

    aget v8, v28, v8

    nop

    nop

    add-float/2addr v2, v8

    nop

    nop

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    nop

    aget v8, v28, v8

    nop

    nop

    add-float/2addr v5, v8

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x4

    nop

    nop

    nop

    nop

    nop

    aget v8, v28, v8

    nop

    nop

    iget v9, v1, Lmqu;->g:I

    nop

    nop

    nop

    nop

    iget-wide v10, v1, Lmqu;->c:J

    nop

    nop

    nop

    invoke-static {v10, v11}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->getIsRefresherCalled(J)Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v9, v10

    nop

    nop

    nop

    nop

    iput v9, v1, Lmqu;->g:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lmrk;->a()Lmrj;

    move-result-object v9

    nop

    new-instance v10, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    const/high16 v11, -0x40800000    # -1.0f

    nop

    add-float/2addr v2, v11

    nop

    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    add-float/2addr v5, v11

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v5, v6

    nop

    invoke-direct {v10, v4, v7, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v9, v10}, Lmrj;->d(Landroid/graphics/RectF;)V

    invoke-virtual {v9, v8}, Lmrj;->b(F)V

    invoke-static {v0}, Lmrn;->a(I)Lmrn;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v9, v0}, Lmrj;->e(Lmrn;)V

    iget-wide v2, v1, Lmqu;->c:J

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->getCurrentTrackerIndex(J)I

    move-result v0

    nop

    invoke-static {v0}, Lmrc;->a(I)Lmrc;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v0}, Lmrj;->g(Lmrc;)V

    iget v0, v1, Lmqu;->g:I

    nop

    nop

    invoke-virtual {v9, v0}, Lmrj;->c(I)V

    invoke-interface/range {p1 .. p1}, Lprw;->d()J

    move-result-wide v2

    nop

    nop

    iget-wide v4, v1, Lmqu;->f:J

    nop

    nop

    nop

    nop

    sub-long/2addr v2, v4

    nop

    nop

    nop

    nop

    const-wide/32 v4, 0xf4240

    nop

    nop

    nop

    nop

    nop

    div-long/2addr v2, v4

    nop

    nop

    invoke-virtual {v9, v2, v3}, Lmrj;->f(J)V

    invoke-virtual {v9}, Lmrj;->a()Lmrk;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v2

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    nop

    :cond_2
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v0

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    if-lt v2, v4, :cond_5

    nop

    nop

    const/4 v2, 0x0

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lprv;

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lprv;

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v5

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lprv;

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v14

    nop

    nop

    nop

    nop

    iget-object v7, v1, Lmqu;->h:Lrss;

    nop

    nop

    const/4 v8, 0x5

    nop

    nop

    nop

    nop

    new-array v13, v8, [F

    nop

    invoke-virtual {v7}, Lrss;->h()Z

    move-result v8

    nop

    if-eqz v8, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->d()J

    move-result-wide v8

    nop

    nop

    nop

    invoke-interface {v7, v8, v9}, Lmrf;->d(J)[F

    move-result-object v7

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v22, v7

    nop

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const/16 v7, 0x9

    nop

    nop

    nop

    nop

    new-array v7, v7, [F

    nop

    fill-array-data v7, :array_0

    goto :goto_15

    nop

    nop

    :goto_16
    invoke-interface/range {p1 .. p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v27

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-wide v7, v1, Lmqu;->c:J

    nop

    nop

    nop

    invoke-interface {v0}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    nop

    invoke-interface {v0}, Lprv;->getPixelStride()I

    move-result v17

    nop

    invoke-interface {v0}, Lprv;->getRowStride()I

    move-result v0

    nop

    invoke-interface {v3}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getPixelStride()I

    move-result v19

    nop

    nop

    nop

    invoke-interface {v3}, Lprv;->getRowStride()I

    move-result v3

    nop

    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    nop

    nop

    invoke-interface {v5}, Lprv;->getPixelStride()I

    move-result v21

    nop

    nop

    nop

    invoke-interface {v5}, Lprv;->getRowStride()I

    move-result v5

    nop

    nop

    nop

    iget-object v9, v1, Lmqu;->j:Loyd;

    nop

    invoke-interface {v9}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Boolean;

    nop

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v26

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    const/high16 v10, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    move v11, v15

    nop

    move v12, v14

    nop

    nop

    move-object/from16 v28, v13

    nop

    nop

    move-object/from16 v13, v16

    nop

    nop

    nop

    nop

    move v6, v14

    nop

    move/from16 v14, v17

    nop

    nop

    nop

    nop

    nop

    move v4, v15

    nop

    nop

    move v15, v0

    nop

    nop

    move-object/from16 v16, v18

    nop

    nop

    move/from16 v17, v19

    nop

    move/from16 v18, v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v20

    nop

    nop

    move/from16 v20, v21

    nop

    move/from16 v21, v5

    nop

    nop

    move-object/from16 v23, v27

    nop

    nop

    nop

    nop

    move-object/from16 v24, v28

    nop

    nop

    nop

    nop

    invoke-static/range {v7 .. v26}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->updateRoi(JIFIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[FLandroid/hardware/HardwareBuffer;[FZI)I

    move-result v0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    :goto_18
    monitor-enter p0

    nop

    nop

    nop

    :try_start_5
    iget-boolean v0, v1, Lmqu;->b:Z

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    :cond_5
    invoke-static {}, Lmrk;->b()Lmrk;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lmqu;->b:Z

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_2
    iget-object v0, p0, Lmqu;->d:Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_2
    iget-object v0, p0, Lmqu;->e:Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_3
    sget-object v1, Lmqu;->a:Lsdb;

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    sget-object v2, Landroidx/viewpager2/widget/jY/lIiWb;->CwPauVpuVs:Ljava/lang/String;

    nop

    nop

    const/16 v3, 0x1230

    nop

    nop

    nop

    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :cond_3
    :goto_d
    invoke-virtual {p0}, Lmqu;->a()V

    iget-object v0, p0, Lmqu;->h:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lmrf;->close()V

    :cond_4
    iget-wide v0, p0, Lmqu;->c:J

    nop

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->releaseHandle(J)V

    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Lmqu;->b:Z

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
