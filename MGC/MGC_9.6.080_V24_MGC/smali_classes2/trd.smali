.class public final Ltrd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltrr;


# static fields
.field private static final a:Ljava/lang/String; = "trd"


# instance fields
.field private final b:Landroid/content/ContentProviderClient;

.field private final c:Landroid/net/Uri;

.field private final d:Landroid/net/Uri;

.field private final e:Landroid/net/Uri;

.field private final f:Landroid/net/Uri;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(Landroid/net/Uri;Ljava/lang/String;)[B
    .locals 7

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    move-object p1, p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    nop

    nop

    nop

    if-eqz p2, :cond_3

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_7
    return-object v0

    nop

    nop

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    return-object p1

    nop

    :cond_3
    :goto_b
    :try_start_1
    sget-object p2, Ltrd;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v1, "Invalid params result from ContentProvider query: "

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v1}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_4

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    goto :goto_1a

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_1d

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v1, p0, Ltrd;->b:Landroid/content/ContentProviderClient;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    move-object v4, p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_4

    nop

    nop

    :goto_13
    throw p1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    :goto_18
    move-object p0, v0

    nop

    nop

    nop

    :goto_19
    :try_start_3
    sget-object p2, Ltrd;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Error reading params from ContentProvider"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v0, p0

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    goto :goto_19

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_22
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltrd;->f:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "phone_params"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2, p1}, Lrgw;->az(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string p1, "Authority key must be non-null and non-empty"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p2, p1}, Lrgw;->az(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p2, p0}, Lrgw;->az(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Ltrd;->e:Landroid/net/Uri;

    nop

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

    :goto_9
    const-string p1, "user_prefs"

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

    :goto_a
    invoke-static {p2, p1}, Lrgw;->az(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Ltrd;->b:Landroid/content/ContentProviderClient;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const-string p1, "device_params"

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
    invoke-static {p2, p1}, Lrgw;->az(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    nop

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

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Ltrd;->c:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Ltrd;->d:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p0, "recent_headsets"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p1, "sdk_configuration_params"

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

    :goto_16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Ltlp;Landroid/net/Uri;Ljava/lang/String;)Ltlq;
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-object p2

    nop

    nop

    :goto_1
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    invoke-interface {p1, p0}, Ltlp;->d([B)Ltlp;

    move-result-object p0

    nop

    nop

    nop

    invoke-interface {p0}, Ltlp;->l()Ltlq;

    move-result-object p0

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p3, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->loAaxB:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-direct {p0, p2, p3}, Ltrd;->19e596a3e324281407eb5c11093c0152m(Landroid/net/Uri;Ljava/lang/String;)[B

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Ltrd;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p2, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ltsq;)Lsji;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

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

    :goto_1
    invoke-virtual {v0, v1}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ltis;->h()[B

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const v1, 0x20

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

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    return-object p0

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x5

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

    :goto_a
    invoke-direct {p0, v1, v0, p1}, Ltrd;->d5484163cd8d335e6b17663474ff5f2bm(Ltlp;Landroid/net/Uri;Ljava/lang/String;)Ltlq;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    check-cast v1, Ltkb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Ltse;->c:Lsji;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lsji;

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

    :goto_12
    iget-object v0, p0, Ltrd;->f:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_12

    nop

    nop
.end method

.method public final b()Ltsn;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

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

    nop

    :goto_1
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ltsn;

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

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Ltrd;->c:Landroid/net/Uri;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-direct {p0, v0, v1, v2}, Ltrd;->d5484163cd8d335e6b17663474ff5f2bm(Ltlp;Landroid/net/Uri;Ljava/lang/String;)Ltlq;

    move-result-object p0

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    sget-object v0, Ltsn;->a:Ltsn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop
.end method

.method public final c()Ltso;
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Ltrd;->e:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    sget-object v0, Ltso;->a:Ltso;

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

    :goto_5
    const v1, 0x8

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
    const/4 v2, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    invoke-direct {p0, v0, v1, v2}, Ltrd;->d5484163cd8d335e6b17663474ff5f2bm(Ltlp;Landroid/net/Uri;Ljava/lang/String;)Ltlq;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x16

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Ltso;

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
.end method

.method public final d()Ltsp;
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

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

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Ltsp;->a:Ltsp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    check-cast p0, Ltsp;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, v1, v2}, Ltrd;->d5484163cd8d335e6b17663474ff5f2bm(Ltlp;Landroid/net/Uri;Ljava/lang/String;)Ltlq;

    move-result-object p0

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
    iget-object v1, p0, Ltrd;->d:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_e
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltrd;->b:Landroid/content/ContentProviderClient;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final f(Ltsn;)Z
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1c

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

    nop

    :goto_3
    sget-object p1, Ltrd;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto :goto_c

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

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

    :goto_6
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

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

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    const-string v0, "Insufficient permissions to write params to ContentProvider"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    const-string v0, "Failed to write params to ContentProvider"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    goto/32 :goto_15

    nop

    nop

    :goto_d
    sget-object p1, Ltrd;->a:Ljava/lang/String;

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

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_4

    nop

    nop

    :goto_12
    if-eqz p1, :cond_1

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

    :cond_1
    :try_start_0
    iget-object p0, p0, Ltrd;->b:Landroid/content/ContentProviderClient;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :goto_13
    new-instance v2, Landroid/content/ContentValues;

    nop

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p1}, Ltlq;->h()[B

    move-result-object p1

    nop

    nop

    nop

    const-string v3, "value"

    nop

    nop

    nop

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object p0, p0, Ltrd;->b:Landroid/content/ContentProviderClient;

    nop

    nop

    nop

    invoke-virtual {p0, v0, v2, v1, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_14
    goto/32 :goto_16

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    if-gtz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ltrd;->c:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop
.end method
