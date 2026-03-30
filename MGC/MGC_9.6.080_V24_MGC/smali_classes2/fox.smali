.class final Lfox;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjy;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lfoh;

.field private final d:Lfoh;

.field private final e:Landroid/net/Uri;

.field private final f:I

.field private final g:I

.field private final h:Lfjp;

.field private final i:Ljava/lang/Class;

.field private volatile j:Z

.field private volatile k:Lfjy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/KvcD/IYYyjJUHLbynRQ;->DGNMex:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lfox;->a:[Ljava/lang/String;

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
.end method

.method public constructor <init>(Landroid/content/Context;Lfoh;Lfoh;Landroid/net/Uri;IILfjp;Ljava/lang/Class;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iput p6, p0, Lfox;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lfox;->e:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p5, p0, Lfox;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lfox;->c:Lfoh;

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

    :goto_7
    iput-object p3, p0, Lfox;->d:Lfoh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p7, p0, Lfox;->h:Lfjp;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    iput-object p1, p0, Lfox;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iput-object p8, p0, Lfox;->i:Ljava/lang/Class;

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

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfox;->i:Ljava/lang/Class;

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
    return-object p0

    nop

    nop

    nop
.end method

.method public final cG()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfox;->k:Lfjy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

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

    :goto_4
    iput-boolean v0, p0, Lfox;->j:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lfjy;->cG()V

    :goto_6
    goto/32 :goto_3

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    iget-object p0, p0, Lfox;->k:Lfjy;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lfjy;->d()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lfie;Lfjx;)V
    .locals 10

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    move-object v2, v3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    goto :goto_5

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

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    goto/16 :goto_14

    nop

    nop

    nop

    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/FileNotFoundException;

    nop

    const-string p1, "File path was empty in media store for: "

    nop

    invoke-static {v9, p1}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    :cond_2
    :goto_7
    new-instance p0, Ljava/io/FileNotFoundException;

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->VeKFYcSZmVlF:Ljava/lang/String;

    nop

    invoke-static {v9, p1}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p2, p0}, Lfjx;->e(Ljava/lang/Exception;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    const v1, 0x18

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_2

    nop

    const-string v4, "_data"

    nop

    nop

    nop

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    nop

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    nop

    nop

    nop

    nop

    if-nez v5, :cond_1

    nop

    nop

    nop

    new-instance v5, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget v3, p0, Lfox;->f:I

    nop

    nop

    nop

    nop

    iget v4, p0, Lfox;->g:I

    nop

    nop

    iget-object v6, p0, Lfox;->h:Lfjp;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v5, v3, v4, v6}, Lfoh;->b(Ljava/lang/Object;IILfjp;)Lhdu;

    move-result-object v1

    nop

    nop
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_6

    nop

    nop

    :goto_f
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    const-string v0, "Failed to build fetcher for: "

    nop

    nop

    :try_start_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lfox;->c:Lfoh;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, p0, Lfox;->e:Landroid/net/Uri;

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v3, p0, Lfox;->b:Landroid/content/Context;

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    nop

    nop

    nop

    sget-object v5, Lfox;->a:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    const/4 v6, 0x0

    nop

    nop

    move-object v4, v9

    nop

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_11
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_4
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_12
    throw p0

    nop

    :cond_5
    iget-object v1, p0, Lfox;->e:Landroid/net/Uri;

    nop

    nop

    invoke-static {v1}, Lfic;->g(Landroid/net/Uri;)Z

    move-result v3

    nop

    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const-string v3, "picker"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    iget-object v1, p0, Lfox;->d:Lfoh;

    nop

    nop

    iget-object v3, p0, Lfox;->e:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    iget v4, p0, Lfox;->f:I

    nop

    nop

    nop

    iget v5, p0, Lfox;->g:I

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lfox;->h:Lfjp;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3, v4, v5, v6}, Lfoh;->b(Ljava/lang/Object;IILfjp;)Lhdu;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_6
    iget-object v1, p0, Lfox;->b:Landroid/content/Context;

    nop

    const-string v3, "android.permission.ACCESS_MEDIA_LOCATION"

    nop

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    if-nez v1, :cond_7

    nop

    iget-object v1, p0, Lfox;->e:Landroid/net/Uri;

    nop

    invoke-static {v1}, Landroid/provider/MediaStore;->setRequireOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v1, p0, Lfox;->e:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Lfox;->d:Lfoh;

    nop

    nop

    nop

    nop

    iget v4, p0, Lfox;->f:I

    nop

    iget v5, p0, Lfox;->g:I

    nop

    nop

    iget-object v6, p0, Lfox;->h:Lfjp;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1, v4, v5, v6}, Lfoh;->b(Ljava/lang/Object;IILfjp;)Lhdu;

    move-result-object v1

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_8

    nop

    iget-object v2, v1, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :cond_8
    if-nez v2, :cond_9

    nop

    nop

    nop

    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    iget-object p0, p0, Lfox;->e:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lfjx;->e(Ljava/lang/Exception;)V

    return-void

    nop

    nop

    :cond_9
    iput-object v2, p0, Lfox;->k:Lfjy;

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lfox;->j:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lfox;->cG()V

    return-void

    nop

    :cond_a
    invoke-interface {v2, p1, p2}, Lfjy;->f(Lfie;Lfjx;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    :goto_1
    return p0

    nop

    nop

    nop
.end method
