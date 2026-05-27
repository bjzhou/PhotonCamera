.class public final Ldev;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/cameravisionkit/URIEllipsizer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldev;->a:Lnak;

    return-void
.end method

.method public static a(Ljava/net/URI;)Lmqp;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_0
    const-string v1, "http"

    invoke-static {v0, v1}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-static {v0, v1}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    const-string v4, "fido"

    invoke-static {v0, v4}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "shc"

    invoke-static {v0, v5}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v16

    if-eqz v1, :cond_3

    if-nez v6, :cond_5

    :cond_3
    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_5
    :goto_1
    const/4 v4, 0x2

    if-eqz v6, :cond_10

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x2e

    if-ge v5, v8, :cond_7

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-lt v7, v4, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x4

    if-le v5, v7, :cond_b

    const-string v5, "www"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x3

    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_a

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_8

    add-int/lit8 v7, v5, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_c

    const-string v5, "web."

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_d

    const-string v5, "ftp."

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_e

    const-string v5, "wap."

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x5

    if-le v5, v7, :cond_f

    const-string v5, "home."

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_5

    :cond_f
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_10
    :goto_6
    if-nez v6, :cond_11

    if-nez v15, :cond_11

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    new-instance v5, Ljava/net/URI;

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_11
    new-instance v5, Ljava/net/URI;

    if-eq v3, v1, :cond_12

    move-object v8, v0

    goto :goto_7

    :cond_12
    const/4 v7, 0x0

    move-object v8, v7

    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getPort()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v14

    move-object v7, v5

    move-object v10, v6

    move-object v12, v15

    invoke-direct/range {v7 .. v14}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_13
    const-string v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_14
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x19

    if-gt v7, v8, :cond_15

    invoke-static {v5}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_15
    if-eqz v6, :cond_16

    move-object v5, v6

    goto :goto_9

    :cond_16
    if-eqz v15, :cond_17

    move-object v5, v15

    goto :goto_9

    :cond_17
    invoke-static/range {v16 .. v16}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_9
    if-eqz v6, :cond_18

    if-eqz v15, :cond_18

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_18

    const-string v6, "/\u2026"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    goto :goto_a

    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "?\u2026"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "#\u2026"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    goto :goto_a

    :cond_1a
    const/4 v6, 0x0

    :goto_a
    if-eqz v1, :cond_1b

    const-string v0, ""

    goto :goto_b

    :cond_1b
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v3, v6, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v2, 0x2

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    if-le v3, v8, :cond_1d

    add-int/lit8 v3, v3, -0x16

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1d
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Ldev;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Failed to build intermediate barcode URI"

    const/16 v3, 0x35d

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method
