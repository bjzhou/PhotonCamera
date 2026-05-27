.class public final Lgwu;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;

.field private static final d:Lmrl;


# instance fields
.field public final b:Ldhi;

.field public final c:Ljava/util/concurrent/Executor;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:Lfbz;

.field private final h:Lkpo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/session/InflightFallbackSaver"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgwu;->a:Lnak;

    sget-object v0, Lffe;->e:Lffe;

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    sput-object v0, Lgwu;->d:Lmrl;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lkpo;Ldhi;Lfbz;Ljava/util/concurrent/Executor;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p6, Ljava/io/File;

    const-string p7, "inflight"

    invoke-direct {p6, p1, p7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p6, p0, Lgwu;->e:Ljava/io/File;

    new-instance p6, Ljava/io/File;

    const-string p7, "inflight-mars"

    invoke-direct {p6, p1, p7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p6, p0, Lgwu;->f:Ljava/io/File;

    iput-object p2, p0, Lgwu;->h:Lkpo;

    iput-object p3, p0, Lgwu;->b:Ldhi;

    iput-object p4, p0, Lgwu;->g:Lfbz;

    iput-object p5, p0, Lgwu;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lgxl;)V
    .locals 6

    invoke-interface {p1}, Lgxl;->j()Lgyb;

    move-result-object v0

    sget-object v1, Lgyb;->b:Lgyb;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgwu;->f:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgwu;->e:Ljava/io/File;

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-interface {p1}, Lgxl;->d()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "medres-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lgwt;

    invoke-direct {v0, p0, v1, p1}, Lgwt;-><init>(Lgwu;Ljava/io/File;Lgxl;)V

    invoke-interface {p1, v0}, Lgxl;->u(Lgxw;)V

    return-void
.end method

.method public final b(Z)V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "Failed to delete fallback file %s"

    const-string v9, "RESTORED"

    if-eqz p1, :cond_0

    iget-object v0, v1, Lgwu;->f:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lgwu;->e:Ljava/io/File;

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_a

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_1
    array-length v0, v10

    if-ge v11, v0, :cond_a

    aget-object v12, v10, v11

    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v14, 0x0

    cmp-long v0, v3, v14

    if-nez v0, :cond_2

    sget-object v0, Lgwu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0xd0b

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "Failed to restore empty file: %s"

    invoke-interface {v0, v3, v12}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    sget-object v0, Lgwu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const/16 v4, 0xd0c

    invoke-static {v0, v2, v12, v4, v3}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_2
    :try_start_2
    sget-object v0, Lgwu;->d:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-object v0, v1, Lgwu;->b:Ldhi;

    sget-object v3, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    iget-object v3, v1, Lgwu;->h:Lkpo;

    if-eqz p1, :cond_3

    sget-object v0, Lgyb;->b:Lgyb;

    goto :goto_2

    :cond_3
    sget-object v0, Lgyb;->a:Lgyb;

    :goto_2
    sget-object v16, Ldyy;->a:Ldyy;

    move-wide/from16 v17, v6

    move-object/from16 v6, v16

    move-object v7, v9

    const/4 v13, 0x1

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lkpo;->g(JLdyy;Ljava/lang/String;Lgyb;)Lgxr;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    const-string v0, "jpg"

    invoke-virtual {v3, v0}, Lgxr;->a(Ljava/lang/String;)Lgxn;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    iget-object v0, v4, Lgxn;->a:Lkph;

    invoke-interface {v0}, Lkph;->e()Ljava/io/FileOutputStream;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v5, v6}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    cmp-long v0, v7, v14

    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Lgxn;->b()V

    invoke-virtual {v3}, Lgxr;->g()V

    sget-object v0, Lgwu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v5, 0xd07

    invoke-interface {v0, v5}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v5, "Restored %s"

    iget-object v6, v4, Lgxn;->a:Lkph;

    invoke-interface {v6}, Lkph;->b()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lgwu;->g:Lfbz;

    sget-object v5, Lnir;->d:Lnir;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v6, v5, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_4
    iget-object v6, v5, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lnir;

    iget v8, v7, Lnir;->a:I

    or-int/2addr v8, v13

    iput v8, v7, Lnir;->a:I

    move-wide/from16 v14, v17

    iput-wide v14, v7, Lnir;->b:J

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_5
    iget-object v6, v5, Lnwn;->b:Lnws;

    check-cast v6, Lnir;

    iput v13, v6, Lnir;->c:I

    iget v7, v6, Lnir;->a:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Lnir;->a:I

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v5

    check-cast v5, Lnir;

    invoke-interface {v0, v5}, Lfbz;->i(Lnir;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    sget-object v0, Lgwu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const/16 v4, 0xd08

    invoke-static {v0, v2, v12, v4, v3}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_6
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v7, "Copy returned 0 bytes"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v0

    move-object v7, v0

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_c
    invoke-static {v7, v6}, Ljcb;->o(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_e
    invoke-static {v6, v5}, Ljcb;->o(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    throw v6
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catch_2
    move-exception v0

    move-object v13, v4

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v13, 0x0

    goto :goto_6

    :cond_7
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unknown fallback file format: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    goto :goto_7

    :catch_4
    move-exception v0

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_8

    :try_start_10
    invoke-virtual {v13}, Lgxn;->a()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lgxr;->d()V

    :cond_9
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :goto_7
    :try_start_11
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v4, v0

    sget-object v0, Lgwu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const/16 v5, 0xd09

    invoke-static {v0, v2, v12, v5, v4}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    :goto_8
    throw v3

    :cond_a
    return-void
.end method
