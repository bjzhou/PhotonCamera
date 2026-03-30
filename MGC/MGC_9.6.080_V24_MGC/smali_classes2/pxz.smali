.class public final Lpxz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpxy;


# instance fields
.field private final a:Lryh;


# direct methods
.method public constructor <init>(Lqar;)V
    .locals 0

    goto/32 :goto_2

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
    iget-object p1, p1, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

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

    :goto_3
    iput-object p1, p0, Lpxz;->a:Lryh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-static {p1}, Lryh;->m(Ljava/util/Map;)Lryh;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpxx;)Lsui;
    .locals 1

    :try_start_0
    iget-object v0, p1, Lpxx;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lpxz;->b(Ljava/lang/String;)Lpxy;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Lpwf; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Lpxy;->a(Lpxx;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final b(Ljava/lang/String;)Lpxy;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    sget-object p1, Lpwe;->V:Lpwe;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "%s: The download url is malformed, url = %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-object p0, p1, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    const-string v0, "MultiSchemeFileDownloader"

    nop

    nop

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    nop

    nop
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p1, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v0, p1}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ltar;->c()Lpwf;

    move-result-object p0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, "%s: No registered downloader supports the download url scheme, scheme = %s"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    check-cast p0, Lpxy;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    nop

    :goto_11
    invoke-static {p0, v0, v1}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ltar;->c()Lpwf;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lpxz;->a:Lryh;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_1a
    sget-object v0, Lpwe;->U:Lpwe;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    throw p0

    nop

    nop

    nop

    nop

    :goto_20
    :try_start_1
    new-instance p0, Ljava/net/MalformedURLException;

    nop

    nop

    const-string v1, "URL contained no scheme."

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    :cond_3
    new-instance p0, Ljava/net/MalformedURLException;

    nop

    nop

    const-string v1, "Could not parse URL."

    nop

    nop

    invoke-direct {p0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
