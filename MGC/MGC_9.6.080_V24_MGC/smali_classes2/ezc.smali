.class public final synthetic Lezc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lezc;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lezc;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lezc;->a:Landroid/content/Context;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lfdl;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v0}, Lffb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v1, Lfbx;->a:Lfbx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_5
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_7
    move-object v3, v7

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v4, v0}, Lfbx;->a(Ljava/lang/String;Lezb;)V

    :goto_9
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v6}, Lezs;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_2c

    nop

    :catch_0
    :goto_c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lezc;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_44

    nop

    nop

    :goto_f
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v8, Lfdm;->b:Lfdm;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v7, Landroid/util/Pair;

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

    nop

    :goto_12
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_3

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_14
    invoke-static {v0, p0}, Lffb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "LottieFetchResult close failed "

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v8, Lfdm;->a:Lfdm;

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v6, v4}, Lezg;->e(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lezs;

    move-result-object v6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    check-cast v7, Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_31

    nop

    nop

    nop

    :catch_2
    move-exception p0

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

    :goto_1c
    iget-object v4, p0, Lezc;->c:Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    const-string v0, "Unable to rename cache file "

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_20
    monitor-enter v4

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Leyu;->a:Lfdo;

    nop

    if-nez v1, :cond_4

    nop

    new-instance v1, Lfdo;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    nop

    nop

    sget-object v6, Leyu;->b:Lfdn;

    nop

    nop

    nop

    if-nez v6, :cond_3

    nop

    const-class v6, Lfdn;

    nop

    nop

    nop

    monitor-enter v6

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v7, Leyu;->b:Lfdn;

    nop

    nop

    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    new-instance v7, Lfdn;

    nop

    nop

    nop

    nop

    new-instance v8, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    invoke-direct {v8, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    invoke-direct {v7, v8, v3}, Lfdn;-><init>(Ljava/lang/Object;[B)V

    sput-object v7, Leyu;->b:Lfdn;

    nop

    :cond_2
    monitor-exit v6

    nop

    move-object v6, v7

    nop

    goto :goto_21

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v6

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    nop

    nop

    :cond_3
    :goto_21
    invoke-direct {v1, v6}, Lfdo;-><init>(Ljava/lang/Object;)V

    sput-object v1, Leyu;->a:Lfdo;

    nop

    nop

    nop

    :cond_4
    monitor-exit v4

    nop

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v4

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v1, "LottieFetchResult close failed "

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

    :goto_23
    if-nez v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0xc

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_25
    if-eq v6, v8, :cond_6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_67

    nop

    nop

    :goto_26
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_31

    nop

    :catch_3
    move-exception p0

    nop

    :goto_2a
    :try_start_4
    new-instance v0, Lezs;

    nop

    nop

    nop

    invoke-direct {v0, p0}, Lezs;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2b
    move-object v7, v3

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_68

    nop

    nop

    :goto_2d
    goto/16 :goto_15

    nop

    :catch_4
    move-exception p0

    nop

    nop

    goto/32 :goto_16

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

    goto/32 :goto_3d

    nop

    nop

    :goto_2f
    if-nez v4, :cond_7

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    :goto_31
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object v3, v7

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

    nop

    :goto_33
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_36
    goto/32 :goto_34

    nop

    :goto_37
    goto/16 :goto_61

    nop

    nop

    nop

    :catch_5
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v3, :cond_8

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

    :cond_8
    :try_start_5
    invoke-virtual {v3}, Lfdl;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v0, Lezb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v6, v6, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_65

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3c
    const-string v1, "LottieFetchResult close failed "

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_9
    goto/32 :goto_33

    nop

    :goto_3e
    iget-object v6, v1, Lfdo;->a:Ljava/lang/Object;

    nop

    :try_start_6
    new-instance v7, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    move-object v8, v6

    nop

    check-cast v8, Lfdn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lfdn;->a()Ljava/io/File;

    move-result-object v8

    nop

    nop

    nop

    nop

    sget-object v9, Lfdm;->a:Lfdm;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v9, v5}, Lfdn;->c(Ljava/lang/String;Lfdm;Z)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    nop

    if-eqz v8, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    new-instance v7, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lfdn;

    nop

    invoke-virtual {v6}, Lfdn;->a()Ljava/io/File;

    move-result-object v6

    nop

    nop

    nop

    nop

    sget-object v8, Lfdm;->b:Lfdm;

    nop

    invoke-static {p0, v8, v5}, Lfdn;->c(Ljava/lang/String;Lfdm;Z)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    nop

    if-eqz v6, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto :goto_3f

    nop

    nop

    nop

    nop

    :cond_b
    move-object v7, v3

    nop

    nop

    nop

    :goto_3f
    if-nez v7, :cond_c

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_c
    new-instance v6, Ljava/io/FileInputStream;

    nop

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    goto/32 :goto_51

    nop

    nop

    :goto_40
    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v7, v4}, Lezg;->b(Ljava/io/InputStream;Ljava/lang/String;)Lezs;

    move-result-object v6

    nop

    :goto_44
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v2, p0, Lezc;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v6, Lfdm;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v8, Lfdm;->b:Lfdm;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_49
    sget v7, Lffb;->a:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4a
    sget v6, Lffb;->a:I

    nop

    nop

    :try_start_7
    new-instance v6, Ljava/net/URL;

    nop

    nop

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    sget-object v7, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->OOV:Ljava/lang/String;

    nop

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v7, Lfdl;

    nop

    nop

    nop

    invoke-direct {v7, v6}, Lfdl;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v7}, Lfdl;->a()Z

    move-result v6

    nop

    if-eqz v6, :cond_14

    nop

    nop

    nop

    nop

    iget-object v6, v7, Lfdl;->a:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    nop

    nop

    iget-object v8, v7, Lfdl;->a:Ljava/net/HttpURLConnection;

    nop

    nop

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const-string v9, "application/json"

    nop

    if-nez v8, :cond_d

    nop

    nop

    nop

    nop

    move-object v8, v9

    nop

    :cond_d
    const-string v9, "application/zip"

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_10

    nop

    const-string v9, "application/x-zip"

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    nop

    if-nez v9, :cond_10

    nop

    const-string v9, "application/x-zip-compressed"

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_10

    nop

    nop

    const-string v8, "\\?"

    nop

    nop

    nop

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    aget-object v5, v8, v5

    nop

    nop

    const-string v8, ".lottie"

    nop

    nop

    nop

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    nop

    if-eqz v5, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto :goto_4b

    nop

    nop

    nop

    nop

    :cond_e
    sget-object v2, Lfdm;->a:Lfdm;

    nop

    if-eqz v4, :cond_f

    nop

    iget-object v3, v1, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lfdn;

    nop

    invoke-virtual {v3, p0, v6, v2}, Lfdn;->b(Ljava/lang/String;Ljava/io/InputStream;Lfdm;)Ljava/io/File;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/io/FileInputStream;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p0}, Lezg;->b(Ljava/io/InputStream;Ljava/lang/String;)Lezs;

    move-result-object v3

    nop

    nop

    nop

    goto :goto_4d

    nop

    nop

    :cond_f
    invoke-static {v6, v3}, Lezg;->b(Ljava/io/InputStream;Ljava/lang/String;)Lezs;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_4d

    nop

    nop

    nop

    nop

    :cond_10
    :goto_4b
    sget-object v5, Lfdm;->b:Lfdm;

    nop

    if-eqz v4, :cond_11

    nop

    iget-object v3, v1, Lfdo;->a:Ljava/lang/Object;

    nop

    check-cast v3, Lfdn;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p0, v6, v5}, Lfdn;->b(Ljava/lang/String;Ljava/io/InputStream;Lfdm;)Ljava/io/File;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/util/zip/ZipInputStream;

    nop

    nop

    new-instance v8, Ljava/io/FileInputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v6, p0}, Lezg;->e(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lezs;

    move-result-object v2

    nop

    nop

    nop

    goto :goto_4c

    nop

    nop

    nop

    :cond_11
    new-instance v8, Ljava/util/zip/ZipInputStream;

    nop

    invoke-direct {v8, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v8, v3}, Lezg;->e(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lezs;

    move-result-object v2

    nop

    :goto_4c
    move-object v3, v2

    nop

    nop

    nop

    nop

    move-object v2, v5

    nop

    nop

    nop

    nop

    :goto_4d
    if-eqz v4, :cond_12

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lezs;->a:Ljava/lang/Object;

    nop

    if-eqz v5, :cond_12

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    invoke-static {p0, v2, v5}, Lfdn;->c(Ljava/lang/String;Lfdm;Z)Ljava/lang/String;

    move-result-object p0

    nop

    new-instance v2, Ljava/io/File;

    nop

    nop

    nop

    check-cast v1, Lfdn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfdn;->a()Ljava/io/File;

    move-result-object v1

    nop

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    const-string v1, ".temp"

    nop

    nop

    nop

    nop

    nop

    const-string v5, ""

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    if-nez p0, :cond_12

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    nop

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    invoke-static {p0}, Lffb;->a(Ljava/lang/String;)V

    :cond_12
    iget-object p0, v3, Lezs;->a:Ljava/lang/Object;

    nop

    nop
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v7}, Lfdl;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const-class v4, Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4f
    if-eqz v1, :cond_13

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_13
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_52
    move-object v6, v3

    nop

    :goto_53
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_65

    nop

    nop

    nop

    :cond_14
    :try_start_a
    new-instance p0, Lezs;

    nop

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v7}, Lfdl;->a()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_15

    nop

    nop

    nop

    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    :cond_15
    iget-object v1, v7, Lfdl;->a:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object v2, v7, Lfdl;->a:Ljava/net/HttpURLConnection;

    nop

    nop

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    nop

    iget-object v3, v7, Lfdl;->a:Ljava/net/HttpURLConnection;

    nop

    new-instance v5, Ljava/io/BufferedReader;

    nop

    new-instance v6, Ljava/io/InputStreamReader;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    nop

    nop

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_55
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    nop

    if-eqz v6, :cond_17

    nop

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_65

    nop

    nop

    :catch_6
    move-exception v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const-string v9, ".zip"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v8, :cond_16

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v1, v0}, Lffb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const-string v1, "LottieFetchResult close failed "

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v1, p0}, Lffb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_61
    goto/32 :goto_64

    nop

    nop

    :goto_62
    new-instance p0, Lezs;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move-object p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_64
    move-object p0, v0

    nop

    nop

    :goto_65
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_55

    nop

    :cond_17
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catch_7
    :try_start_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to fetch "

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Failed with "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    nop

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_67
    new-instance v6, Ljava/util/zip/ZipInputStream;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_68
    if-eqz v7, :cond_18

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v5, 0x0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_6a
    goto :goto_71

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sget-object v1, Leyu;->a:Lfdo;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto :goto_6e

    nop

    :catchall_4
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catch_8
    :try_start_10
    throw v1

    nop

    nop
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catch_9
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_11
    const-string v2, "get error failed "

    nop

    nop

    invoke-static {v2, v1}, Lffb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lezs;-><init>(Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    invoke-virtual {v7}, Lfdl;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto/32 :goto_56

    nop

    nop

    :goto_6f
    if-nez v4, :cond_19

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-eqz v6, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    :goto_71
    goto/32 :goto_52

    nop

    nop

    nop

    nop
.end method
