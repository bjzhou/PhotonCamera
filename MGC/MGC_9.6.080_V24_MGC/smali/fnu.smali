.class public final Lfnu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjy;


# instance fields
.field private a:Ljava/lang/Object;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lgvb;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfnu;->d:Ljava/lang/Object;

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lfnu;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput p3, p0, Lfnu;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/File;Lfnv;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lfnu;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput p3, p0, Lfnu;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfnu;->c:Ljava/lang/Object;

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
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;Lfkr;)Lfnu;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const v1, 0x5

    nop

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

    nop

    :goto_1
    invoke-direct {v1, v2, p2, v0, p0}, Lgvb;-><init>(Ljava/util/List;Lfkr;Lfmm;Landroid/content/ContentResolver;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lfia;->d:Lfmm;

    nop

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

    :goto_3
    invoke-static {p0}, Lfia;->b(Landroid/content/Context;)Lfia;

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

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Lfid;->b()Lhcs;

    move-result-object v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Lfia;->b(Landroid/content/Context;)Lfia;

    move-result-object v2

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

    :goto_9
    invoke-virtual {v2}, Lhcs;->b()Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xc

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

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1, v1, p2}, Lfnu;-><init>(Landroid/net/Uri;Lgvb;I)V

    goto/32 :goto_c

    nop

    nop

    :goto_11
    new-instance p0, Lfnu;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    new-instance v1, Lgvb;

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

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_15
    iget-object v2, v2, Lfia;->b:Lfid;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfnu;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lfnv;->a()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-class p0, Ljava/io/InputStream;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget v0, p0, Lfnu;->b:I

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

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop
.end method

.method public final cG()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfnu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget v0, p0, Lfnu;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lfnu;->a:Ljava/lang/Object;

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

    :goto_7
    if-nez p0, :cond_1

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

    :cond_1
    :try_start_0
    check-cast p0, Ljava/io/InputStream;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    :try_start_1
    iget-object p0, p0, Lfnu;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Lfnv;->c(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final f(Lfie;Lfjx;)V
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2, p0}, Lfjx;->e(Ljava/lang/Exception;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lfnu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    if-ne v1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    :try_start_0
    new-instance v0, Lfke;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1, v1}, Lfke;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfnu;->a:Ljava/lang/Object;

    nop

    invoke-interface {p2, p1}, Lfjx;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    goto/32 :goto_f

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    :try_start_2
    new-instance v0, Ljava/io/FileNotFoundException;

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    nop

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Ljava/io/FileNotFoundException;

    nop

    nop

    throw p0

    nop

    nop

    :goto_a
    const/4 v0, -0x1

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lfnu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lfnu;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    move-object v4, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lgvb;

    nop

    iget-object v4, v4, Lgvb;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v4, Landroid/content/ContentResolver;

    nop

    nop

    nop

    check-cast v3, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    nop

    nop

    move-object v3, v1

    nop

    nop

    check-cast v3, Lgvb;

    nop

    nop

    iget-object v3, v3, Lgvb;->c:Ljava/lang/Object;

    nop

    check-cast v1, Lgvb;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgvb;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lfmm;

    nop

    invoke-static {v3, v2, v1}, Lfic;->d(Ljava/util/List;Ljava/io/InputStream;Lfmm;)I

    move-result v1

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_e
    :try_start_5
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :catch_4
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    :try_start_6
    iget-object v0, p0, Lfnu;->c:Ljava/lang/Object;

    nop

    nop

    iget-object v1, p0, Lfnu;->d:Ljava/lang/Object;

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_5

    nop

    goto/32 :goto_16

    nop

    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    invoke-interface {p2, p0}, Lfjx;->e(Ljava/lang/Exception;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    :try_start_8
    iget-object p1, p0, Lfnu;->d:Ljava/lang/Object;

    nop

    nop

    iget-object v0, p0, Lfnu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lfnv;->b(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lfnu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p1}, Lfjx;->b(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    move v1, v0

    nop

    :catch_5
    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :catch_6
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_7
    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_8

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_20

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    move-object v2, v3

    nop

    nop

    nop

    goto :goto_1e

    nop

    :cond_8
    :goto_1c
    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1f

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v2, :cond_9

    nop

    nop

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p0

    nop

    nop

    nop

    nop

    :catch_7
    move-object v3, v2

    nop

    nop

    nop

    :catch_8
    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    :cond_a
    :goto_1f
    move-object v4, v2

    nop

    nop

    nop

    :goto_20
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_c

    nop

    nop

    :cond_b
    move-object p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_a

    nop

    nop

    nop

    :cond_c
    new-instance v3, Ljava/io/File;

    nop

    nop

    nop

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    nop

    if-eqz v4, :cond_b

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    nop

    nop

    const-wide/16 v6, 0x0

    nop

    nop

    cmp-long v4, v4, v6

    nop

    nop

    nop

    nop

    if-lez v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    nop

    nop
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    :try_start_b
    check-cast v0, Lgvb;

    nop

    nop

    nop

    iget-object v0, v0, Lgvb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v0, Landroid/content/ContentResolver;

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    nop

    nop

    nop
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4

    goto/32 :goto_9

    nop

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    nop

    :try_start_c
    move-object v3, v0

    nop

    check-cast v3, Lgvb;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lgvb;->b:Ljava/lang/Object;

    nop

    nop

    move-object v4, v1

    nop

    nop

    check-cast v4, Landroid/net/Uri;

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lfkr;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    nop

    nop
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string p1, "NPE opening uri: "

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

.method public final g()I
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

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
