.class public final Lpvk;
.super Landroid/os/AsyncTask;
.source "PG"


# instance fields
.field final synthetic a:Lpvl;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lpvl;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpvk;->a:Lpvl;

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

.method private final f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;)I
    .locals 11

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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
    return v1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-le p1, v1, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne p1, v2, :cond_2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_25

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x6

    nop

    :try_start_0
    iget-object p0, p0, Lpvk;->a:Lpvl;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpvl;->c:Landroid/content/Context;

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

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

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lt p1, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_3
    :goto_e
    :try_start_1
    const-string v2, "Failed to start Lens: Error "

    nop

    invoke-static {p1, v2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Lpuq;->x(I)I

    move-result v1

    nop

    nop

    goto :goto_15

    nop

    :catch_0
    move-exception p1

    nop

    nop

    const-string v2, "Out of bounds parsing Lens version code value."

    nop

    nop

    nop

    nop

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    nop

    nop

    nop

    :catch_1
    move-exception p1

    nop

    const-string v1, "Unable to parse Lens version code value."

    nop

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    return v2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1f

    nop

    nop

    :goto_12
    iget-object v1, p0, Lpvk;->a:Lpvl;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    const-string v0, "LensSdkParamsReader"

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

    :goto_14
    const/16 v1, 0x12

    nop

    nop

    :goto_15
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v1, 0xc

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

    :goto_18
    const/4 v2, 0x3

    nop

    :try_start_2
    iget-object v1, v1, Lpvl;->d:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    nop

    const-string v3, "com.google.android.googlequicksearchbox"

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    nop

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_19
    return v1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

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

    :goto_1a
    const v1, 0x9

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

    :goto_1b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_1c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    :goto_1f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_21
    goto/32 :goto_32

    nop

    nop

    :goto_22
    const-string p0, "Unable to find agsa package: com.google.android.googlequicksearchbox"

    nop

    nop

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

    :goto_23
    const/16 v1, 0x11

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_26
    move-object p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_3

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    :try_start_3
    const-string p1, "Failed to start Lens due to unexpected exception."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_6
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    nop

    nop

    nop

    nop

    if-nez p1, :cond_7

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    nop

    nop

    nop

    if-nez p1, :cond_8

    nop

    nop

    nop

    const/16 v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_15

    nop

    :cond_8
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    :goto_2c
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_15

    nop

    :goto_2f
    :try_start_5
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    nop
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x17

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return v1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

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

    :goto_32
    throw p1

    nop

    nop

    :catch_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v2, Ltkb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p2, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Lpvl;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_24

    nop

    nop

    :goto_a
    invoke-virtual {v2, v1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_15

    nop

    nop

    :goto_b
    iput p1, v1, Lpvs;->e:I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput p2, p1, Lpvs;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_d
    sget-object v3, Lpvs;->a:Lpvs;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lpvk;->a:Lpvl;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, v2, Ltkb;->b:Ltkg;

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

    nop

    :goto_11
    goto/16 :goto_22

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    iput p2, p1, Lpvs;->b:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lpvk;->a:Lpvl;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_15
    iget-object v1, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput p1, v1, Lpvs;->b:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    :goto_1b
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    :goto_1c
    check-cast v1, Lpvs;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_37

    nop

    nop

    :goto_1f
    add-int/lit8 p1, p1, -0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p1, v0, Lpvl;->f:Lpvs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1a

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_25
    check-cast p1, Lpvs;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_26
    iget-object p0, p0, Lpvl;->e:Ljava/util/List;

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

    :goto_27
    iget-object p1, p0, Lpvk;->a:Lpvl;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_28
    iget p2, p1, Lpvs;->b:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_2a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p2, Lpvj;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2d
    iput-boolean p2, p1, Lpvl;->g:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, v0, Lpvl;->f:Lpvs;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2f
    const v1, 0x3

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

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

    nop

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_32
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_34
    or-int/lit8 p2, p2, 0x8

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_35
    if-nez p2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_36
    iget-object v1, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_37
    throw v0

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_39
    invoke-interface {p2, v0}, Lpvj;->a(Lpvs;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lpvk;->a:Lpvl;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

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

    :goto_3c
    check-cast p1, Lpvs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3d
    const v0, 0x13

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3e
    or-int/lit8 p1, p1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v2

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

    :goto_40
    iget p1, v1, Lpvs;->b:I

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

    nop

    nop

    :goto_41
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

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

    :goto_43
    add-int/lit8 p2, p2, -0x2

    nop

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

    nop

    :goto_44
    iget-object v1, v0, Lpvl;->f:Lpvs;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    iput p1, p0, Lpvk;->b:I

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

    :goto_3
    check-cast p1, [Ljava/lang/Void;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lpvl;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    sget-object p1, Lpvl;->b:Ljava/lang/String;

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

    :goto_6
    iput p1, p0, Lpvk;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Lpvk;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;)I

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Lpvk;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget p1, p0, Lpvk;->b:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Lpvk;->a(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/Void;

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

    :goto_4
    iget v0, p0, Lpvk;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method protected final onPreExecute()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Lpke;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, v1, Lpvl;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    nop

    :goto_6
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    iget-object v1, p0, Lpvk;->a:Lpvl;

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_e
    invoke-direct {v1, p0, v2, v3}, Lpke;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v2, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    const-wide/16 v2, 0xfa0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method
