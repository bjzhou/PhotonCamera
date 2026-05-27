.class public final Lapd;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lxz;

.field private static final b:Ljava/lang/Object;

.field private static c:Ladm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lxz;->h()Lxz;

    move-result-object v0

    sput-object v0, Lapd;->a:Lxz;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lapd;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lapd;->c:Ladm;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 25

    if-nez p1, :cond_1

    sget-object v0, Lapd;->c:Ladm;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object v1, Lapd;->b:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_3

    :try_start_0
    sget-object v0, Lapd;->c:Ladm;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    :goto_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/profiles/ref/"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "primary.prof"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_4

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/misc/profiles/cur/0/"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "primary.prof"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v8, :cond_5

    cmp-long v8, v16, v4

    if-lez v8, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v8, p0

    invoke-static {v5, v8}, Lapb;->a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-wide v14, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "profileInstalled"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v8, :cond_6

    :try_start_3
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v9, Lapc;

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v21

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v23

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v24}, Lapc;-><init>(IIJJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-static {v2, v3}, Ladk;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catch_0
    move-exception v0

    :try_start_8
    invoke-static {}, Lapd;->b()V

    monitor-exit v1

    return-void

    :cond_6
    const/4 v9, 0x0

    :goto_5
    const/4 v8, 0x2

    if-eqz v9, :cond_8

    iget-wide v10, v9, Lapc;->c:J

    cmp-long v12, v10, v14

    if-nez v12, :cond_8

    iget v10, v9, Lapc;->b:I

    if-ne v10, v8, :cond_7

    goto :goto_6

    :cond_7
    move v6, v10

    goto :goto_7

    :cond_8
    :goto_6
    if-eqz v0, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    if-eqz v4, :cond_a

    const/4 v6, 0x2

    :cond_a
    :goto_7
    if-eqz p1, :cond_c

    if-eqz v4, :cond_c

    if-eq v6, v7, :cond_b

    const/4 v6, 0x2

    goto :goto_8

    :cond_b
    const/4 v6, 0x1

    :cond_c
    :goto_8
    if-eqz v9, :cond_e

    iget v0, v9, Lapc;->b:I

    if-ne v0, v8, :cond_e

    if-ne v6, v7, :cond_e

    iget-wide v10, v9, Lapc;->d:J

    cmp-long v0, v2, v10

    if-gez v0, :cond_d

    const/4 v7, 0x3

    const/4 v13, 0x3

    goto :goto_9

    :cond_d
    const/4 v13, 0x1

    goto :goto_9

    :cond_e
    move v13, v6

    :goto_9
    new-instance v0, Lapc;

    const/4 v12, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lapc;-><init>(IIJJ)V

    if-eqz v9, :cond_f

    invoke-virtual {v9, v0}, Lapc;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v2, :cond_10

    :cond_f
    :try_start_9
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iget v3, v0, Lapc;->a:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v3, v0, Lapc;->b:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v3, v0, Lapc;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v3, v0, Lapc;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_d
    invoke-static {v3, v2}, Ladk;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_a
    throw v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catch_1
    move-exception v0

    :cond_10
    :goto_b
    :try_start_e
    invoke-static {}, Lapd;->b()V

    monitor-exit v1

    return-void

    :catch_2
    move-exception v0

    invoke-static {}, Lapd;->b()V

    monitor-exit v1

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0
.end method

.method private static b()V
    .locals 2

    new-instance v0, Ladm;

    invoke-direct {v0}, Ladm;-><init>()V

    sput-object v0, Lapd;->c:Ladm;

    sget-object v1, Lapd;->a:Lxz;

    invoke-virtual {v1, v0}, Lxz;->f(Ljava/lang/Object;)Z

    return-void
.end method
