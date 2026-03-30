.class final Loek;
.super Lodj;
.source "PG"


# static fields
.field public static final a:[B


# instance fields
.field public final c:Loeq;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Loek;->a:[B

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string v0, "\n"

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
.end method

.method public constructor <init>(Lodm;)V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

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

    nop

    :goto_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v3, "-"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v0, 0x13

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

    :goto_a
    sget-object v1, Lodk;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

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

    :goto_c
    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1}, Loeq;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    const-string v0, "GoogleAnalytics"

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
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Loek;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0xf

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2f

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_22
    if-nez v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, p1}, Lodj;-><init>(Lodm;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v3, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_28
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_31

    nop

    nop

    :goto_2a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p1, Loeq;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v3, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object p1, p0, Loek;->c:Loeq;

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

    nop

    :goto_2e
    if-eqz p1, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    :goto_2f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    :goto_31
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop
.end method

.method private static final I(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, Lj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0x3d

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "UTF-8"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-static {p2, v0}, Lj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0x26

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final C()Ljava/net/URL;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Lnar;->v()Ljava/lang/Object;

    move-result-object v1

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

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ljava/net/URL;

    nop

    nop

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Lody;->f()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    const/4 p0, 0x0

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

    :goto_9
    const v1, 0x19

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    sget-object v1, Loed;->l:Lnar;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "Error trying to parse the hardcoded host url"

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

    nop

    :goto_c
    return-object v1

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1, v0}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final D(Loef;)Ljava/net/URL;
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, p1}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lody;->g()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    :goto_3
    :try_start_0
    new-instance v0, Ljava/net/URL;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "Error trying to parse the hardcoded host url"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    return-object v0

    nop

    :catch_0
    move-exception p1

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

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-static {}, Lody;->f()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Lody;->h()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lody;->g()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean p1, p1, Loef;->e:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final E(Loef;Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lody;->g()Ljava/lang/String;

    move-result-object v1

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
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p2

    nop

    :catch_0
    move-exception p1

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

    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    const-string p2, "Error trying to parse the hardcoded host url"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean p1, p1, Loef;->e:Z

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    invoke-static {}, Lody;->f()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :goto_e
    :try_start_0
    new-instance p2, Ljava/net/URL;

    nop

    nop

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lody;->h()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    const-string v0, "?"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    goto :goto_e

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Lody;->g()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_20
    goto/32 :goto_11

    nop

    nop

    :goto_21
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p2, p1}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x17

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final F(Ljava/net/HttpURLConnection;)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_3
    if-nez p1, :cond_1

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
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0, p1}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    throw v1

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0, p1}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :catch_1
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->EVJPQKh:Ljava/lang/String;

    nop

    nop

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0x400

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    new-array v1, v1, [B

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x1a

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    if-lez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final G()Z
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "connectivity"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lodf;->a()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_8

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    :goto_4
    const v0, 0x11

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_10

    nop

    nop

    :goto_d
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lodj;->z()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_1c

    nop

    :catch_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lodi;->d()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Lodi;->q(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    const-string v0, "No network connectivity"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final H(Ljava/net/URL;[B)I
    .locals 9

    goto/32 :goto_21

    nop

    nop

    :goto_0
    const/4 v3, 0x1

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p1}, Loek;->F(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    nop

    const/16 v1, 0xc8

    nop

    nop

    if-ne p2, v1, :cond_0

    nop

    invoke-virtual {p0}, Lodi;->f()Lodh;

    move-result-object p2

    nop

    nop

    invoke-virtual {p2}, Lodh;->c()V

    move p2, v1

    nop

    nop

    :cond_0
    const-string v1, "POST status"

    nop

    nop

    nop

    nop

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v3}, Lodi;->m(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    move-object p1, v2

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_1
    const-string v1, "Network POST connection error"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, p2}, Lodi;->u(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_17

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_27

    nop

    nop

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    move-object v2, p1

    nop

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

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p0, p1}, Loek;->c(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    move-object p1, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    move-object v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_c
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    nop

    :goto_e
    goto/16 :goto_2b

    nop

    nop

    nop

    :catch_0
    move-exception p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_23

    nop

    nop

    :catch_1
    move-exception v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    return p2

    nop

    :catchall_1
    move-exception p2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0, v1}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_13
    goto/32 :goto_29

    nop

    nop

    :goto_14
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

    :goto_15
    throw p2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    move-object v8, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    move-object v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-super/range {v2 .. v7}, Lodi;->w(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_1f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0, v1}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v8, v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object p1, v8

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_26
    array-length v1, p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_27
    const-string v0, "Error closing http post connection output stream"

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_28
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2a
    move-object p1, v8

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Loek;->x()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v6, p1

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

    :goto_2f
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/32 :goto_28

    nop

    nop

    :goto_30
    const-string v4, "POST bytes, url"

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_31
    goto :goto_2b

    nop

    :catch_3
    move-exception p2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object v2, p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_34
    invoke-static {p2}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_35
    move-object p1, v8

    nop

    :goto_36
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_38
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop
.end method

.method protected final a()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "Network initialized. User agent"

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    iget-object v1, p0, Loek;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    :goto_6
    const v0, 0x19

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v1}, Lodi;->r(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method final b(Loef;Z)Ljava/lang/String;
    .locals 7

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_2
    if-nez v2, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_5

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_5

    nop

    nop

    const-string v4, "AppUID"

    nop

    nop

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    if-nez v4, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    const-string v3, "_gmsv"

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v0, v6, v2}, Loek;->I(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    nop

    :goto_3
    iget-wide v1, p1, Loef;->c:J

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-static {v0, v5, v1}, Loek;->I(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    nop

    nop

    iget-wide v5, p1, Loef;->c:J

    nop

    nop

    nop

    sub-long/2addr v1, v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v4, v1}, Loek;->I(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    nop

    nop

    const-string p2, "_s"

    nop

    nop

    nop

    const-string v1, "0"

    nop

    nop

    nop

    invoke-static {p2}, Lolx;->ae(Ljava/lang/String;)V

    const-string v2, "Short param name required"

    nop

    const/4 v4, 0x1

    nop

    invoke-static {v4, v2}, Lolx;->Y(ZLjava/lang/Object;)V

    iget-object v2, p1, Loef;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Ljava/lang/String;

    nop

    nop
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-static {p1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    const-string v3, "z"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    const-wide/16 v4, 0x0

    nop

    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    nop
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    goto :goto_13

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    invoke-virtual {p0, p2, p1}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    if-eqz p2, :cond_2

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    nop

    goto :goto_10

    nop

    :goto_f
    iget-wide p1, p1, Loef;->b:J

    nop

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v3, p1}, Loek;->I(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    move-object v1, p2

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    :goto_14
    const-string v4, "qt"

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

    :goto_15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_3
    iget-object v1, p1, Loef;->a:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :cond_5
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    const-string p2, "Failed to encode name or value"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    move-wide v1, v4

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    cmp-long p2, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p0, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1b

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v5, "ht"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_23
    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method final c(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

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

    :goto_1
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Lnar;->v()Ljava/lang/Object;

    move-result-object v1

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

    :goto_a
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "User-Agent"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    :goto_12
    const-string p1, "Failed to obtain http connection"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_16
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Loed;->v:Lnar;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x1

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

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1d

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

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

    :goto_1c
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    iget-object p0, p0, Loek;->d:Ljava/lang/String;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    check-cast p1, Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p1

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    goto/32 :goto_17

    nop

    nop

    :goto_22
    check-cast v1, Ljava/lang/Integer;

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

    :goto_23
    invoke-virtual {v1}, Lnar;->v()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    sget-object v1, Loed;->u:Lnar;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method
