.class public Lidi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lide;

.field private final c:Lidj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "idi"

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

    :goto_1
    return-void

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_3
    sput-object v0, Lidi;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lide;Lidj;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lidi;->b:Lide;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lidi;->c:Lidj;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(J)Lrss;
    .locals 9

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1c

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    const-string v4, "jpg"

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_3c

    nop

    nop

    :goto_1
    goto/16 :goto_47

    nop

    nop

    :cond_1
    :goto_2
    :try_start_1
    sget-object v3, Lrsa;->a:Lrsa;

    nop

    goto/16 :goto_34

    nop

    :goto_3
    sget-object v3, Lrsa;->a:Lrsa;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, p1, p2}, Lidc;-><init>(J)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    const v0, 0xa

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    move-object v1, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-nez p0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_e

    nop

    nop

    nop

    :cond_3
    :try_start_2
    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lpuf;->k(Ljava/lang/String;)Z

    move-result v3

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_44

    nop

    :catch_0
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, v1, Lidj;->c:Lpdf;

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

    :goto_d
    iget-object v1, v1, Lidj;->c:Lpdf;

    nop

    nop

    :goto_e
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_10

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v1, Lidj;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_4
    const-string v2, "external"

    nop

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lidj;->b:Landroid/content/ContentResolver;

    nop

    nop

    nop

    nop

    const-string v2, "_data"

    nop

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    nop

    const/4 v7, 0x0

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_33

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_14
    return-object v1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Lidi;->c:Lidj;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_17
    goto/32 :goto_36

    nop

    nop

    :goto_18
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string p2, "Fails to obtain canonical path"

    nop

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_2
    move-exception p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    :goto_1d
    if-eqz v3, :cond_4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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
    iget-object v2, v2, Lide;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Lrss;->h()Z

    move-result p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    iget-object v1, v1, Lidj;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v3, v1, v2}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    nop

    :try_start_6
    invoke-interface {v1}, Lsui;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lrss;

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    iget-object v3, v2, Lide;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_5
    :try_start_7
    const-string v4, "jpeg"

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    nop

    if-nez v4, :cond_7

    nop

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    nop

    :cond_6
    sget-object v0, Lidj;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v3, 0x56e

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    const-string v3, "Ignoring metadata for file which is not an image %s"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_e

    nop

    nop

    :cond_7
    :goto_26
    :try_start_8
    new-instance v3, Ljava/io/File;

    nop

    nop

    nop

    move-object v4, v2

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object v4, v1, Lidj;->d:Lmle;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lmle;->b()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_a

    nop

    sget-object v0, Lidj;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v3, 0x56d

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v3, "Ignoring metadata for image that is not in supported location: %s"

    nop

    invoke-interface {v0, v3, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_2f

    nop

    nop

    :goto_27
    iget-object v2, v1, Lidj;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_3f

    nop

    :goto_2a
    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    nop

    nop

    nop

    nop

    move-object v5, v2

    nop

    nop

    check-cast v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static {v3}, Lpuf;->o(Ljava/io/InputStream;)Lexq;

    move-result-object v5

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_9

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_9
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2d
    iget-object v2, p0, Lidi;->b:Lide;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, v1, Lidj;->c:Lpdf;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2f
    iget-object v1, v1, Lidj;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :try_start_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/32 :goto_2e

    nop

    nop

    :goto_31
    new-instance v1, Lidc;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    check-cast v0, Lidb;

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_33
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_b
    :try_start_f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_3

    nop

    :cond_c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/io/File;

    nop

    nop

    nop

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_d

    nop

    goto/16 :goto_2

    nop

    :cond_d
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :goto_34
    :try_start_10
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_15

    nop

    :goto_36
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_38
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_39
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_20

    nop

    nop

    :goto_3b
    const-string v3, "SpecialType"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v5, "dng"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3d
    goto :goto_3e

    nop

    nop

    :catchall_3
    move-exception v3

    nop

    :try_start_11
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    throw v5

    nop
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catch_2
    move-exception v3

    nop

    :try_start_12
    const-string v5, "Could not read file: "

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    nop

    nop

    :catch_3
    move-exception v3

    nop

    const-string v5, "Could not find file: "

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    if-nez v4, :cond_e

    nop

    sget-object v0, Lexs;->a:Lts;

    nop

    nop

    new-instance v4, Leye;

    nop

    nop

    invoke-direct {v4}, Leye;-><init>()V

    :cond_e
    invoke-static {v4}, Lpuf;->f(Lexq;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Lidb;->b(Ljava/lang/String;)Lrss;

    move-result-object v0

    nop

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_f

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_35

    nop

    :goto_42
    invoke-virtual {p0, p1, p2, v0}, Lidi;->b(JLidb;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_40

    nop

    nop

    :goto_45
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_7

    nop

    nop

    :goto_46
    goto/16 :goto_34

    nop

    nop

    :goto_47
    :try_start_13
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lidj;->a:Lsdb;

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

    const/16 v2, 0x56f

    nop

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

    const-string v2, "No metadata for %d"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2, p1, p2}, Lscz;->u(Ljava/lang/String;J)V

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object v4, v5

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v5

    nop

    nop

    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v0, "XmpUtil"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4c
    if-nez v2, :cond_11

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_46

    nop

    nop

    nop

    nop
.end method

.method public final b(JLidb;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const-string v1, "media_store_id"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    iget-object p2, p0, Lide;->c:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-static {p2, p1, p0}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget-object p0, p0, Lidi;->b:Lide;

    nop

    nop

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

    :goto_5
    invoke-virtual {p3}, Lidb;->f()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    goto/32 :goto_12

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

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    new-instance p1, Lidd;

    nop

    goto/32 :goto_f

    nop

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

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1, v0}, Lidd;-><init>(Landroid/content/ContentValues;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lide;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    new-instance v0, Landroid/content/ContentValues;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p1, "special_type_id"

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final c(Lpsf;Lidb;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x56a

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Lidi;->a:Lsdb;

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

    :goto_2
    goto/32 :goto_d

    nop

    :goto_3
    invoke-static {p2, v0, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    const-string p2, "Error applying SpecialType."

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lpsf;->j()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x19

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

    :goto_f
    invoke-interface {p1}, Lpsf;->b()Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    nop

    invoke-virtual {p0, v0, v1, p2}, Lidi;->b(JLidb;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

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
.end method
