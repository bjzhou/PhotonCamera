.class public final Ldut;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lxo;

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static final c:Ljava/lang/Object;

.field public static final d:Lyo;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x10

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    invoke-direct {v9, v0}, Lpvp;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v1, Ldut;->b:Ljava/util/concurrent/ExecutorService;

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

    :goto_8
    invoke-direct {v0}, Lyo;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lxo;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    move-object v2, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Ldut;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Ldut;->d:Lyo;

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

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const-wide/16 v5, 0x2710

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_12
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto/32 :goto_7

    nop

    nop

    :goto_18
    new-instance v0, Lyo;

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

    :goto_19
    sput-object v0, Ldut;->a:Lxo;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    invoke-direct {v0, v1}, Lxo;-><init>(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    new-instance v9, Lpvp;

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

    nop

    :goto_1e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    :goto_21
    const v1, 0xb

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
.end method

.method public static a(Ljava/util/List;I)Ljava/lang/String;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const-string v2, "-"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, v2, Ldup;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, ";"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v2, v2, -0x1

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

    nop

    nop

    :goto_13
    check-cast v2, Ldup;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    if-lt v1, v2, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    if-lt v1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lqei;
    .locals 25

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_0
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_1
    goto/16 :goto_a

    nop

    :goto_2
    :try_start_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-eqz v11, :cond_18

    nop

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    nop

    nop

    nop

    if-lez v0, :cond_18

    nop

    nop

    nop

    nop

    const-string v0, "result_code"

    nop

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "_id"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    nop

    nop

    nop

    nop

    const-string v13, "file_id"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    nop

    nop

    const-string v14, "font_ttc_index"

    nop

    nop

    nop

    nop

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    nop

    nop

    nop

    nop

    const-string v15, "font_weight"

    nop

    nop

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    nop

    nop

    nop

    move-object/from16 v16, v3

    nop

    nop

    nop

    nop

    const-string v3, "font_italic"

    nop

    nop

    nop

    nop

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    nop

    nop

    nop

    nop

    nop

    if-eqz v18, :cond_b

    nop

    nop

    nop

    const/4 v10, -0x1

    nop

    if-eq v0, v10, :cond_0

    nop

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    nop

    nop

    nop

    nop

    move/from16 v23, v17

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    const/16 v23, 0x0

    nop

    nop

    :goto_4
    if-eq v14, v10, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    nop

    nop

    move/from16 v20, v17

    nop

    nop

    nop

    goto :goto_5

    nop

    :cond_1
    const/16 v20, 0x0

    nop

    :goto_5
    if-ne v13, v10, :cond_2

    nop

    move v10, v0

    nop

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    :cond_2
    move v10, v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v19, v0

    nop

    nop

    nop

    const/4 v1, -0x1

    nop

    nop

    if-eq v15, v1, :cond_3

    nop

    nop

    nop

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_3
    const/16 v0, 0x190

    nop

    nop

    nop

    nop

    :goto_7
    move/from16 v21, v0

    nop

    nop

    if-eq v3, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_4

    nop

    nop

    const/16 v22, 0x1

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_4
    const/16 v22, 0x0

    nop

    :goto_8
    new-instance v0, Lduu;

    nop

    move-object/from16 v18, v0

    nop

    invoke-direct/range {v18 .. v23}, Lduu;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v9, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_5
    :goto_a
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    if-nez v14, :cond_6

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :cond_6
    :try_start_1
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_f
    move-object/from16 v3, v16

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_10
    sget-object v0, Landroidx/wear/widget/xrA/fuyPMnCeXU;->essuWfli:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object/from16 v10, p2

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_24

    nop

    nop

    :goto_14
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Ldwa;->j(Ljava/lang/String;)V

    :try_start_2
    sget-object v0, Ldut;->a:Lxo;

    nop

    invoke-virtual {v0, v1}, Lxo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/graphics/Typeface;

    nop

    nop

    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    new-instance v1, Lqei;

    nop

    nop

    invoke-direct {v1, v0}, Lqei;-><init>(Landroid/graphics/Typeface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_37

    nop

    nop

    :goto_18
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move v0, v10

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    if-gt v0, v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :try_start_3
    const-string v0, "TypefaceCompat.createFromFontInfoWithFallback"

    nop

    invoke-static {v0}, Ldwa;->j(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto/32 :goto_5d

    nop

    nop

    :goto_1c
    goto :goto_1e

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    :try_start_5
    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    goto/16 :goto_4a

    nop

    :goto_1e
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_1f
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Ldut;->a:Lxo;

    nop

    nop

    nop

    move-object/from16 v2, p0

    nop

    nop

    invoke-virtual {v1, v2, v0}, Lxo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lqei;

    nop

    nop

    invoke-direct {v1, v0}, Lqei;-><init>(Landroid/graphics/Typeface;)V

    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_9
    new-instance v1, Lqei;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3, v2}, Lqei;-><init>(I[B)V

    goto :goto_20

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_2
    :try_start_8
    new-instance v1, Lqei;

    nop

    nop

    nop

    nop

    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    invoke-direct {v1, v2, v3}, Lqei;-><init>(I[B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_20
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_a
    goto/32 :goto_13

    nop

    :goto_22
    const-string v4, "Font load failed"

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    throw v0

    nop

    nop

    :goto_24
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, -0x2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_26
    move-object/from16 v16, v3

    nop

    nop

    :cond_b
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_27
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v11, 0x0

    nop

    nop

    :goto_29
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2a
    const/4 v3, -0x3

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

    :goto_2b
    move/from16 v2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v1, "TypefaceCompatApi29Impl"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

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

    :goto_2e
    move-object/from16 v19, v7

    nop

    nop

    nop

    nop

    :try_start_9
    invoke-virtual/range {v18 .. v24}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_30
    move-object v11, v0

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

    :goto_31
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v11, :cond_c

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_c
    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :goto_33
    invoke-static {v9}, Ldvu;->x(Landroid/content/ContentProviderClient;)V

    const/4 v1, 0x0

    nop

    nop

    new-array v0, v1, [Lduu;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, [Lduu;

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_34
    return-object v1

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_38

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_36
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_20

    nop

    nop

    nop

    :cond_d
    :try_start_c
    const-string v0, "FontProvider.getFontFamilyResult"

    nop

    nop

    invoke-static {v0}, Ldwa;->j(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    nop

    move v8, v7

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-ge v8, v0, :cond_1b

    nop

    nop

    nop

    nop

    move-object/from16 v10, p2

    nop

    nop

    nop

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ldup;

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    const-string v13, "FontProvider.getProvider"

    nop

    nop

    invoke-static {v13}, Ldwa;->j(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iget-object v13, v0, Ldup;->d:Ljava/util/List;

    nop

    if-eqz v13, :cond_e

    nop

    nop

    goto :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_e
    iget v13, v0, Ldup;->e:I

    nop

    nop

    nop

    nop

    invoke-static {v12, v13}, Ldsw;->aa(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v13

    nop

    nop

    :goto_39
    new-instance v12, Ldun;

    nop

    nop

    nop

    iget-object v14, v0, Ldup;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v15, v0, Ldup;->b:Ljava/lang/String;

    nop

    nop

    invoke-direct {v12, v14, v15, v13}, Ldun;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sget-object v14, Lduo;->a:Lxo;

    nop

    nop

    invoke-virtual {v14, v12}, Lxo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    check-cast v14, Landroid/content/pm/ProviderInfo;

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto :goto_3f

    nop

    :goto_3c
    :try_start_f
    invoke-static {v6}, Ldvu;->w(Ljava/util/List;)[Lduu;

    move-result-object v0

    nop

    nop

    nop

    if-eqz v0, :cond_13

    nop

    nop

    nop

    nop

    array-length v1, v0

    nop

    nop

    nop

    if-nez v1, :cond_f

    nop

    goto :goto_3e

    nop

    nop

    :cond_f
    const/4 v4, 0x0

    nop

    nop

    :goto_3d
    if-ge v4, v1, :cond_12

    nop

    nop

    nop

    nop

    nop

    aget-object v5, v0, v4

    nop

    nop

    nop

    nop

    nop

    iget v5, v5, Lduu;->d:I

    nop

    nop

    nop

    if-eqz v5, :cond_11

    nop

    nop

    nop

    nop

    nop

    if-gez v5, :cond_10

    nop

    move v1, v3

    nop

    nop

    nop

    nop

    goto :goto_3f

    nop

    nop

    nop

    nop

    :cond_10
    move v1, v5

    nop

    nop

    nop

    goto :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_11
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto :goto_3d

    nop

    nop

    nop

    nop

    :cond_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_3f

    nop

    nop

    :cond_13
    :goto_3e
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lqei;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-direct {v0, v1, v2}, Lqei;-><init>(I[B)V

    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_20

    nop

    nop

    nop

    :cond_14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto :goto_48

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    :try_start_10
    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v1, 0x1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_42
    if-nez v11, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_15
    :try_start_11
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :goto_43
    invoke-static {v9}, Ldvu;->x(Landroid/content/ContentProviderClient;)V

    throw v0

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_12
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    :cond_16
    const/4 v1, 0x0

    nop

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_46
    const/16 v23, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    :try_start_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_1f

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop

    nop

    :goto_49
    invoke-static {v6}, Ldvu;->w(Ljava/util/List;)[Lduu;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v5, "TypefaceCompat.createFromFontInfo"

    nop

    nop

    nop

    invoke-static {v5}, Ldwa;->j(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    nop
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    invoke-static {v0, v5}, Ldvu;->B([Lduu;Landroid/content/ContentResolver;)Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_17

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/16 :goto_1e

    nop

    nop

    :cond_17
    new-instance v5, Landroid/graphics/Typeface$CustomFallbackBuilder;

    nop

    nop

    nop

    invoke-direct {v5, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-static {v0, v2}, Ldvu;->A(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    nop

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    nop
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4c
    const-string v3, "content"

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4d
    const v0, 0x7

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

    :goto_4e
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_29

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :catchall_7
    move-exception v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move-object/from16 v18, v9

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/16 v24, 0x0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_52
    move-object v11, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_18
    const-string v0, "FontsProvider"

    nop

    nop

    nop

    nop

    const-string v12, "Unable to query the content provider"

    nop

    nop

    nop

    invoke-static {v0, v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto :goto_55

    nop

    nop

    nop

    :cond_19
    :try_start_19
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found content provider "

    nop

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but package was not "

    nop

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ldup;->b:Ljava/lang/String;

    nop

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-direct {v1, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    :cond_1a
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package found for authority: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    :try_start_1a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :cond_1b
    :try_start_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/32 :goto_54

    nop

    nop

    :goto_54
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_5c

    nop

    :goto_57
    :try_start_1c
    iget-object v14, v0, Ldup;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v14, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v15

    nop

    if-eqz v15, :cond_1a

    nop

    nop

    nop

    iget-object v5, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v0, Ldup;->b:Ljava/lang/String;

    nop

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    if-eqz v5, :cond_19

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const/16 v7, 0x40

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/util/ArrayList;

    nop

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v11, v5

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    :goto_58
    if-ge v14, v11, :cond_1c

    nop

    aget-object v16, v5, v14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    nop

    nop

    goto :goto_58

    nop

    nop

    nop

    nop

    :cond_1c
    sget-object v5, Lduo;->b:Ljava/util/Comparator;

    nop

    invoke-static {v7, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-ge v5, v9, :cond_20

    nop

    new-instance v9, Ljava/util/ArrayList;

    nop

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    check-cast v11, Ljava/util/Collection;

    nop

    nop

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v11, Lduo;->b:Ljava/util/Comparator;

    nop

    nop

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    nop

    nop

    if-eq v11, v14, :cond_1d

    nop

    nop

    nop

    goto :goto_5b

    nop

    :cond_1d
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    nop

    nop

    if-ge v11, v14, :cond_1f

    nop

    nop

    nop

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    check-cast v14, [B

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    move-object/from16 v4, v16

    nop

    nop

    nop

    check-cast v4, [B

    nop

    nop

    nop

    invoke-static {v14, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_1e

    nop

    nop

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto :goto_5a

    nop

    nop

    :cond_1e
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    nop

    goto :goto_59

    nop

    nop

    nop

    :cond_1f
    sget-object v4, Lduo;->a:Lxo;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v12, v15}, Lxo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :try_start_1d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    move-object v14, v15

    nop

    nop

    goto :goto_5c

    nop

    nop

    :cond_20
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-eqz v14, :cond_16

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    nop

    nop

    const-string v5, "FontProvider.query"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ldwa;->j(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :try_start_1e
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/net/Uri$Builder;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v7, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    nop

    invoke-virtual {v7, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    nop

    new-instance v9, Landroid/net/Uri$Builder;

    nop

    nop

    nop

    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v9, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    nop

    nop

    nop

    const-string v9, "file"

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v9

    nop

    nop
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :try_start_1f
    const-string v18, "_id"

    nop

    nop

    const-string v19, "file_id"

    nop

    nop

    nop

    const-string v20, "font_ttc_index"

    nop

    nop

    nop

    nop

    nop

    const-string v21, "font_variation_settings"

    nop

    const-string v22, "font_weight"

    nop

    nop

    nop

    const-string v23, "font_italic"

    nop

    nop

    nop

    nop

    const-string v24, "result_code"

    nop

    nop

    nop

    nop

    nop

    filled-new-array/range {v18 .. v24}, [Ljava/lang/String;

    move-result-object v20

    nop

    nop

    nop

    nop

    const-string v11, "ContentQueryWrapper.query"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11}, Ldwa;->j(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    :try_start_20
    iget-object v0, v0, Ldup;->c:Ljava/lang/String;

    nop

    nop

    nop

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v22

    nop

    nop

    const-string v21, "query = ?"

    nop
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_21
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, [Lduu;

    nop

    invoke-static {v7, v0}, Ldvu;->B([Lduu;Landroid/content/ContentResolver;)Landroid/graphics/fonts/FontFamily;

    move-result-object v7

    nop

    nop

    nop

    if-nez v7, :cond_21

    nop

    :goto_5e
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/16 :goto_48

    nop

    nop

    :cond_21
    new-instance v8, Landroid/graphics/Typeface$CustomFallbackBuilder;

    nop

    nop

    invoke-direct {v8, v7}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    move v9, v5

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-ge v9, v5, :cond_23

    nop

    nop

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, [Lduu;

    nop

    invoke-static {v5, v0}, Ldvu;->B([Lduu;Landroid/content/ContentResolver;)Landroid/graphics/fonts/FontFamily;

    move-result-object v5

    nop

    nop

    if-eqz v5, :cond_22

    nop

    nop

    invoke-virtual {v8, v5}, Landroid/graphics/Typeface$CustomFallbackBuilder;->addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    :cond_22
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    goto :goto_5f

    nop

    nop

    nop

    nop

    nop

    :cond_23
    invoke-static {v7, v2}, Ldvu;->A(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v8, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    nop
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_3
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    goto/32 :goto_40

    nop

    nop

    nop
.end method
