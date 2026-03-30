.class public Lhxb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhwz;


# static fields
.field private static final e:Lsdb;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lpdf;

.field public volatile c:Z

.field public d:Lrss;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private j:Ljava/nio/ByteBuffer;

.field private final k:Lkqj;

.field private final l:I

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sget-object v0, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->XBXw:Ljava/lang/String;

    nop

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

    :goto_3
    return-void

    nop

    :goto_4
    sput-object v0, Lhxb;->e:Lsdb;

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

.method public constructor <init>(Lkqj;Ljava/util/concurrent/Executor;Lows;Lhoh;Lpdf;Landroid/content/Context;Lmmx;Lmmw;)V
    .locals 22

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_34

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_1
    iput v2, v1, Lhxb;->m:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_2
    invoke-virtual {v6, v0}, Lqas;->g(Lmmw;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v7, 0x508

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_57

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
    :try_start_0
    const-string v6, "mmapAssetFile"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v6}, Lpdf;->f(Ljava/lang/String;)V

    sget-object v6, Lhmh;->h:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    nop

    nop

    invoke-virtual {v8, v6}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    nop

    nop

    nop

    invoke-static {v9}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v9

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    :try_start_4
    sget-object v17, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v18

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v20

    nop

    nop

    move-object/from16 v16, v9

    nop

    nop

    nop

    nop

    invoke-virtual/range {v16 .. v21}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_4d

    nop

    nop

    :goto_8
    goto/16 :goto_2a

    nop

    :goto_9
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a
    move v2, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v6, :cond_0

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :cond_0
    :try_start_5
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_d
    iput v8, v1, Lhxb;->l:I

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "gpu"

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_10
    move-object v7, v0

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v2, Lhmh;->g:Lhmn;

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

    nop

    :goto_13
    const/16 v2, 0x509

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_14
    invoke-direct {v5, v1, v8}, Lhjc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v2, v12

    nop

    nop

    :goto_16
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_37

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_18
    move-object v0, v7

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_19
    iput v14, v1, Lhxb;->m:I

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface/range {p5 .. p5}, Lpdf;->g()V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Lhmh;->d:Lhmn;

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean v5, v1, Lhxb;->g:Z

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_b3

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move v6, v12

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_21
    move v2, v12

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_24
    move v6, v12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v3, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_27
    if-nez v8, :cond_1

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

    :cond_1
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_28
    iput-boolean v2, v1, Lhxb;->g:Z

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_29
    move v14, v15

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v14, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v8, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2e
    move-object v14, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v4, v1, Lhxb;->b:Lpdf;

    nop

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

    :goto_31
    iput-object v6, v1, Lhxb;->j:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object v8, v0

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_33
    move v2, v12

    nop

    :goto_34
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v0, Lhsx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_36
    move-object v7, v0

    nop

    nop

    :try_start_8
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw v3

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-boolean v12, v1, Lhxb;->f:Z

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput-boolean v13, v1, Lhxb;->h:Z

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3a
    iput-object v4, v1, Lhxb;->b:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3b
    iput v12, v1, Lhxb;->m:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v8, Lhmh;->i:Lhmn;

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

    :goto_3e
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_56

    nop

    :goto_3f
    invoke-direct {v6}, Lqas;-><init>()V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_34

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_11

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_43
    new-instance v0, Lhsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_46
    const-string v6, "%s Failed create deeprestore client."

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_47
    invoke-virtual {v6}, Lqas;->a()Lmmz;

    move-result-object v0

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v15, 0x3

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    :goto_4a
    goto/32 :goto_5

    nop

    nop

    :goto_4b
    const/4 v14, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4c
    check-cast v0, Lscz;

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_4d
    if-nez v9, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :cond_4
    :try_start_9
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto/32 :goto_bb

    nop

    nop

    :goto_4e
    add-int v0, v0, v1

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_4f
    const/16 v7, 0x8

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_50
    invoke-virtual {v6, v0}, Lqas;->f(Ljava/lang/Runnable;)V

    goto/32 :goto_5a

    nop

    nop

    :goto_51
    invoke-virtual {v6, v0}, Lqas;->e(Ljava/lang/Runnable;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v8, 0x5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_54
    iput-object v6, v1, Lhxb;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_55
    move-object/from16 v4, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_56
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_79

    nop

    nop

    :goto_58
    move-object v14, v11

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_59
    sget-object v3, Lhxb;->e:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v0, p8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v6, v0}, Lqas;->d(Ljava/lang/String;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5c
    move-object v14, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iput-boolean v5, v1, Lhxb;->g:Z

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_5
    :try_start_a
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_5f
    :try_start_b
    iput-object v10, v1, Lhxb;->j:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    const-string v6, "createHandle"

    nop

    invoke-interface {v4, v6}, Lpdf;->h(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lhxb;->j:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move-object v14, v11

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_61
    if-ne v12, v13, :cond_6

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_6
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_9c

    nop

    :goto_63
    goto/32 :goto_9b

    nop

    nop

    :goto_64
    iput-boolean v5, v1, Lhxb;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_65
    move-object v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move-object v14, v11

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_67
    move-object v14, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_68
    sget-object v0, Lhmh;->c:Lhmn;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_69
    move-object v3, v0

    nop

    nop

    :goto_6a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6b
    iput-object v4, v1, Lhxb;->b:Lpdf;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6c
    move v11, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_6d
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_6e
    const-string v6, "cpu"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_6f
    iput v8, v1, Lhxb;->i:I

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_70
    move v8, v15

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    move-object/from16 v6, p1

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move-object v6, v0

    nop

    :try_start_c
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_74
    throw v3

    nop

    nop

    nop
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :catch_3
    move-exception v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_16

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_76
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

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

    :goto_77
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const-string v0, "DeepRestoreFaceDeblur"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_79
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_87

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_7c
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {v0, v1, v7}, Lhsx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v3, v8}, Lhoh;->p(Lhmn;)Z

    move-result v13

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_80
    if-ne v6, v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-interface {v6, v0}, Lmmx;->f(Lmmv;)Lpci;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_83
    if-nez v6, :cond_8

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_84
    move v2, v12

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    move-object v3, v0

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v8, v9}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-nez v9, :cond_9

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_9
    :try_start_d
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8a
    move-object/from16 v0, p2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8b
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-static {v6, v14, v7, v3, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    move-object v14, v11

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_8e
    sget-object v7, Lcom/google/android/libraries/phenotype/client/stable/NyRu/FYEOygtxYXoPt;->guKUCKlpFqCHS:Ljava/lang/String;

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

    :goto_8f
    const-string v11, "[FaceDB-DR]"

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v2, v5}, Lows;->d(Lpci;)V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_92
    new-instance v5, Lhjc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_93
    invoke-direct {v0, v1, v7}, Lhsx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_51

    nop

    nop

    :goto_94
    return-void

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_95
    sget-object v0, Lhxb;->e:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_96
    const/4 v7, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v0, v2, v11}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_38

    nop

    nop

    :goto_98
    const-string v2, "%s accelName = .cpu is not supported!"

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_99
    move v2, v6

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_9a
    iput-boolean v2, v1, Lhxb;->f:Z

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9b
    move-object v0, v6

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iput-object v0, v1, Lhxb;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    move/from16 v12, v16

    nop

    nop

    nop

    :try_start_e
    invoke-static/range {v8 .. v13}, Lcom/google/android/apps/camera/facedeblur/deeprestore/jni/DeepRestoreNative;->createHandle(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;ZZZ)J

    move-result-wide v8

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    invoke-static {v8}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v8

    nop

    nop

    nop

    nop

    iput-object v8, v1, Lhxb;->d:Lrss;

    nop

    invoke-interface/range {p5 .. p5}, Lpdf;->g()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v3, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    move-object v3, v0

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v3, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_a3
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v2, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const/4 v12, 0x1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    move-object v14, v11

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a7
    goto/16 :goto_9c

    nop

    :goto_a8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v6, v0}, Lqas;->c(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v3, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_ab
    sget-object v2, Lhmh;->e:Lhmn;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    move-object/from16 v6, p7

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_ad
    move-object v3, v0

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_ae
    move v2, v12

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-nez v8, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_b
    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v3, v8}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    move v2, v12

    nop

    nop

    nop

    nop

    :goto_b3
    :try_start_10
    new-instance v3, Ljava/lang/IllegalArgumentException;

    nop

    nop

    const-string v6, "Failed to mmap deeprestore asset file"

    nop

    nop

    nop

    nop

    invoke-direct {v3, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    nop
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    :catch_5
    move-exception v0

    nop

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

    :goto_b4
    const/4 v7, 0x0

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_b5
    iput-object v6, v1, Lhxb;->k:Lkqj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_b6
    const/4 v6, 0x0

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_b7
    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_b9
    new-instance v6, Lqas;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_ba
    goto/16 :goto_85

    nop

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_7b

    nop

    nop

    nop

    :catchall_9
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_bc
    iput-boolean v2, v1, Lhxb;->f:Z

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_bd
    sget-object v8, Lhmh;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop
.end method

.method public static synthetic a$003(Lkqj;Lkqg;)Lsui;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lkqj;->a(Lkqg;)Lsui;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic f$001(Lpdf;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface/range {p0 .. p1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static synthetic g$002(Lpdf;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-interface/range {p0 .. p0}, Lpdf;->g()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static synthetic g$004(Lpdf;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface/range {p0 .. p0}, Lpdf;->g()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public declared-synchronized a(Lhwy;)Lsui;
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput-object p1, v2, v0

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

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const-string/jumbo v1, "64Oi8FWUKnLyVX1d"

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    new-array v2, v0, [Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

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

    :goto_a
    return-object v1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    aput-object p0, v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    const v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_12
    check-cast v1, Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final declared-synchronized b(Lhwy;)Ljava/lang/Boolean;
    .locals 21

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lhxb;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Long;

    nop

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    iget-object v6, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    check-cast v6, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v6

    nop

    nop

    invoke-static {v6}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide v9

    nop

    nop

    iget-object v6, v0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide v11

    nop

    nop

    iget-object v6, v0, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v13, v6

    nop

    nop

    nop

    check-cast v13, Lhxj;

    nop

    nop

    nop

    iget v13, v13, Lhxj;->a:F

    nop

    nop

    nop

    nop

    move-object v14, v6

    nop

    check-cast v14, Lhxj;

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v14, Lhxj;->b:[J

    nop

    nop

    nop

    nop

    check-cast v6, Lhxj;

    nop

    iget-object v15, v6, Lhxj;->c:[J

    nop

    nop

    nop

    nop

    nop

    iget-boolean v6, v1, Lhxb;->f:Z

    nop

    nop

    nop

    nop

    iget-boolean v3, v1, Lhxb;->g:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v16, v2

    nop

    nop

    nop

    check-cast v16, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    invoke-static/range {v16 .. v16}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v16

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    :cond_1
    const-wide/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-wide/from16 v18, v16

    nop

    nop

    iget v0, v1, Lhxb;->i:I

    nop

    move/from16 v16, v6

    nop

    nop

    nop

    nop

    move/from16 v17, v3

    nop

    nop

    nop

    nop

    nop

    move/from16 v20, v0

    nop

    nop

    nop

    nop

    invoke-static/range {v7 .. v20}, Lcom/google/android/apps/camera/facedeblur/deeprestore/jni/DeepRestoreNative;->deepRestoreFaceDeblurRgb(JJJF[J[JZZJI)I

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    if-lez v0, :cond_2

    nop

    nop

    nop

    move v6, v3

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    :cond_2
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_3

    nop

    nop

    nop

    move-object v7, v2

    nop

    nop

    check-cast v7, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    nop

    iget-wide v7, v7, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    invoke-static {v7, v8, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_should_apply_deblur_badge_set(JLcom/google/googlex/gcam/ShotMetadata;Z)V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v7, v4

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lslm;->a:Lslm;

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_4

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_4
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v4, Lslm;

    nop

    nop

    iget v5, v4, Lslm;->b:I

    nop

    nop

    nop

    nop

    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v5, v9

    nop

    nop

    nop

    nop

    iput v5, v4, Lslm;->b:I

    nop

    nop

    nop

    nop

    iput-wide v7, v4, Lslm;->e:J

    nop

    nop

    move-object/from16 v4, p1

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lhxj;

    nop

    iget-object v5, v5, Lhxj;->b:[J

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    const/4 v11, 0x0

    nop

    nop

    :goto_5
    array-length v12, v5

    nop

    nop

    nop

    nop

    nop

    if-ge v10, v12, :cond_6

    nop

    nop

    nop

    aget-wide v12, v5, v10

    nop

    invoke-static {v12, v13}, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->getThumbnailSize(J)I

    move-result v12

    nop

    nop

    if-ge v11, v12, :cond_5

    nop

    nop

    move v11, v12

    nop

    :cond_5
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_6
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_7

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_7
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v10, v5

    nop

    nop

    check-cast v10, Lslm;

    nop

    nop

    nop

    nop

    nop

    iget v12, v10, Lslm;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x2

    nop

    or-int/2addr v12, v13

    nop

    nop

    nop

    nop

    nop

    iput v12, v10, Lslm;->b:I

    nop

    nop

    iput v11, v10, Lslm;->d:I

    nop

    nop

    nop

    nop

    nop

    iget v10, v1, Lhxb;->l:I

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-nez v5, :cond_8

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_8
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    move-object v11, v5

    nop

    nop

    nop

    check-cast v11, Lslm;

    nop

    nop

    add-int/lit8 v12, v10, -0x1

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    if-eqz v10, :cond_15

    nop

    nop

    nop

    iput v12, v11, Lslm;->h:I

    nop

    nop

    iget v10, v11, Lslm;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v10, v10, 0x20

    nop

    nop

    nop

    iput v10, v11, Lslm;->b:I

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v6, :cond_9

    nop

    nop

    nop

    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    nop

    :cond_9
    if-gez v0, :cond_a

    nop

    nop

    nop

    const/4 v9, 0x5

    nop

    nop

    nop

    :cond_a
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_b

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_b
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v10, v5

    nop

    nop

    nop

    nop

    check-cast v10, Lslm;

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    nop

    iput v9, v10, Lslm;->c:I

    nop

    nop

    nop

    iget v9, v10, Lslm;->b:I

    nop

    or-int/2addr v9, v3

    nop

    nop

    nop

    nop

    iput v9, v10, Lslm;->b:I

    nop

    nop

    nop

    if-ne v0, v3, :cond_d

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_c

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_c
    iget-object v0, v2, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v0, Lslm;

    nop

    iput v3, v0, Lslm;->f:I

    nop

    nop

    iget v3, v0, Lslm;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v3, v3, 0x8

    nop

    nop

    nop

    nop

    iput v3, v0, Lslm;->b:I

    nop

    goto :goto_6

    nop

    :cond_d
    if-ne v0, v13, :cond_f

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_e

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_e
    iget-object v0, v2, Ltkb;->b:Ltkg;

    nop

    check-cast v0, Lslm;

    nop

    iput v13, v0, Lslm;->f:I

    nop

    iget v3, v0, Lslm;->b:I

    nop

    nop

    nop

    or-int/lit8 v3, v3, 0x8

    nop

    nop

    iput v3, v0, Lslm;->b:I

    nop

    :cond_f
    :goto_6
    iget v0, v1, Lhxb;->m:I

    nop

    nop

    nop

    nop

    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_10
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v3, Lslm;

    nop

    add-int/lit8 v5, v0, -0x1

    nop

    if-eqz v0, :cond_14

    nop

    nop

    nop

    nop

    iput v5, v3, Lslm;->g:I

    nop

    nop

    nop

    iget v0, v3, Lslm;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v0, v0, 0x10

    nop

    nop

    iput v0, v3, Lslm;->b:I

    nop

    nop

    nop

    iget-object v0, v4, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    if-eqz v0, :cond_11

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lslm;

    nop

    nop

    nop

    check-cast v0, Lmjn;

    nop

    iput-object v2, v0, Lmjn;->r:Lslm;

    nop

    nop

    nop

    nop

    nop

    :cond_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    nop

    nop

    const-string v2, "RGB"

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v4, "\n === Deeprestore Summary === \nEnabled: true\nImage format: %s\nApplied: %b\nProcessing Time: %d ms \n"

    nop

    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

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

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    :cond_12
    :try_start_1
    iget-object v2, v0, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v2, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    iget-object v2, v0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lhxb;->e:Lsdb;

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

    const/16 v2, 0x4fd

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "%s [RGB path] Input mask is null."

    nop

    const-string v4, "[FaceDB-DR]"

    nop

    invoke-interface {v0, v2, v4}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_b

    nop

    :goto_f
    const v0, 0x4

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

    :goto_10
    goto/32 :goto_c

    nop

    :goto_11
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :cond_14
    :try_start_2
    throw v14

    nop

    nop

    nop

    nop

    :cond_15
    throw v14

    nop

    nop

    :catchall_0
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

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_15

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    nop

    nop

    :try_start_3
    iget-object v2, v1, Lhxb;->d:Lrss;

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    const/4 v3, 0x0

    nop

    if-nez v2, :cond_12

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lhxb;->e:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v2, 0x500

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

    const-string v2, "%s DeepRestoreFaceDeblur is not ready, return the image."

    nop

    nop

    const-string v4, "[FaceDB-DR]"

    nop

    invoke-interface {v0, v2, v4}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_a

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

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x17

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
