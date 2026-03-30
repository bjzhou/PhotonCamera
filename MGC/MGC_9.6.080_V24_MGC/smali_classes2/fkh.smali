.class public final Lfkh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjy;


# instance fields
.field private final a:Lfny;

.field private final b:I

.field private c:Ljava/net/HttpURLConnection;

.field private d:Ljava/io/InputStream;

.field private volatile e:Z


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 5

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-int/lit8 v0, p3, 0x64

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lfkh;->c:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    nop

    if-eqz p2, :cond_0

    nop

    nop

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    nop

    nop

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    nop

    nop

    nop

    nop

    int-to-long v0, p2

    nop

    nop

    nop

    nop

    nop

    new-instance p2, Lftl;

    nop

    nop

    nop

    nop

    invoke-direct {p2, p3, v0, v1}, Lftl;-><init>(Ljava/io/InputStream;J)V

    iput-object p2, p0, Lfkh;->d:Ljava/io/InputStream;

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    nop

    nop

    iput-object p2, p0, Lfkh;->d:Ljava/io/InputStream;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    if-eq p3, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p2, p3, p0}, Lfje;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/net/HttpURLConnection;

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/32 :goto_49

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lfkh;->d()V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_d
    const-string p1, "Received empty or null redirect url"

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_e
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

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Lfje;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lfkh;->d:Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean p3, p0, Lfkh;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x17

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

    :goto_16
    throw p1

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p2, p1, p3, p0}, Lfje;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p2, p3, p1, p0}, Lfje;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_1b
    if-eq v0, v3, :cond_3

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

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

    :goto_1f
    const/4 p0, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    new-instance p2, Lfje;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    const-string p4, "Bad redirect url: "

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    throw p2

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception p0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_28
    iget v2, p0, Lfkh;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    throw p2

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string p3, "Failed to connect or obtain data"

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1, v1}, Lfje;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0, p1, p3}, Lfje;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_23

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2f
    const-string p2, "Failed to get a response message"

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_30
    check-cast v3, Ljava/util/Map$Entry;

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

    :goto_31
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    :goto_33
    :try_start_2
    new-instance p1, Lfje;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lfkh;->c:Ljava/net/HttpURLConnection;

    nop

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    invoke-direct {p1, p0, p3}, Lfje;-><init>(Ljava/lang/String;I)V

    throw p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    move-exception p0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_34
    throw p2

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_f

    nop

    nop

    :goto_36
    invoke-direct {p0, v1, p2, p1, p4}, Lfkh;->23ce148e54b083367f51e25c7971761em(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p0

    nop

    nop

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

    :goto_37
    new-instance p1, Lfje;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_46

    nop

    :goto_39
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p0}, Lfkh;->b(Ljava/net/HttpURLConnection;)I

    move-result p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string p3, "Failed to obtain InputStream"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_4
    :try_start_3
    new-instance v1, Ljava/net/URL;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_41
    check-cast v4, Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v3, Ljava/lang/String;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_43
    if-nez p3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_5
    :try_start_4
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p3

    nop

    nop

    invoke-virtual {v0, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p3

    nop

    nop

    nop

    nop

    if-nez p3, :cond_6

    nop

    nop

    goto :goto_44

    nop

    nop

    :cond_6
    new-instance p3, Lfje;

    nop

    nop

    const-string v0, "In re-direct loop"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p3, v0, v1}, Lfje;-><init>(Ljava/lang/String;I)V

    throw p3

    nop
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :goto_44
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    throw p0

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string p1, "Http request failed"

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

    :goto_48
    const-string v1, "Location"

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

    :goto_49
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {p1, p2, p3, p0}, Lfje;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4c
    const-string p1, "Too many (> 5) redirects!"

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    :goto_4e
    if-nez p3, :cond_8

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v2, p0, Lfkh;->b:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_50
    throw p1

    nop

    :goto_51
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {p3}, Lfkh;->b(Ljava/net/HttpURLConnection;)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_40

    nop

    :goto_55
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lfkh;->c:Ljava/net/HttpURLConnection;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const v0, 0x17

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_59
    new-instance p1, Lfje;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_5b
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_5c
    invoke-direct {p0, p1, v1}, Lfje;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_5d
    new-instance p2, Lfje;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p3, p0, Lfkh;->c:Ljava/net/HttpURLConnection;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget-object p2, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->pUhHtVsgZOBNI:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_61
    invoke-static {p1}, Lfkh;->b(Ljava/net/HttpURLConnection;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-lt p2, v0, :cond_9

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-eq v0, v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_a
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    new-instance p0, Lfje;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_65
    add-int/2addr p2, v2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    new-instance p2, Lfje;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_67
    iput-object v0, p0, Lfkh;->c:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p3, p0, Lfkh;->c:Ljava/net/HttpURLConnection;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    nop

    iput-object p3, p0, Lfkh;->d:Ljava/io/InputStream;

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance p0, Lfje;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_69
    invoke-direct {p2, p3, p0, p1}, Lfje;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v0, p0, Lfkh;->c:Ljava/net/HttpURLConnection;

    nop

    goto/32 :goto_48

    nop

    nop
.end method

.method public constructor <init>(Lfny;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfkh;->a:Lfny;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lfkh;->b:I

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

.method private static b(Ljava/net/HttpURLConnection;)I
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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

    :goto_1
    return p0

    nop

    nop

    :catch_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const-class p0, Ljava/io/InputStream;

    nop

    goto/32 :goto_0

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

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lfkh;->e:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfkh;->c:Ljava/net/HttpURLConnection;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lfkh;->d:Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lfkh;->c:Ljava/net/HttpURLConnection;

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

    :goto_9
    const/4 v0, 0x0

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
.end method

.method public final f(Lfie;Lfjx;)V
    .locals 11

    goto/32 :goto_10

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p2, p0}, Lfjx;->e(Ljava/lang/Exception;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    :try_start_0
    iget-object p1, p0, Lfkh;->a:Lfny;

    nop

    nop

    nop

    iget-object v0, p1, Lfny;->f:Ljava/net/URL;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    new-instance v0, Ljava/net/URL;

    nop

    nop

    nop

    iget-object v1, p1, Lfny;->e:Ljava/lang/String;

    nop

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, p1, Lfny;->d:Ljava/lang/String;

    nop

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    iget-object v1, p1, Lfny;->c:Ljava/net/URL;

    nop

    nop

    invoke-static {v1}, Lfsh;->r(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    :cond_1
    const-string v2, "@#&=*+-_.,:!?()/~\'%;$"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    iput-object v1, p1, Lfny;->e:Ljava/lang/String;

    nop

    nop

    nop

    :cond_2
    iget-object v1, p1, Lfny;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lfny;->f:Ljava/net/URL;

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget-object p1, p1, Lfny;->f:Ljava/net/URL;

    nop

    iget-object v0, p0, Lfkh;->a:Lfny;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lfny;->b:Lfnz;

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lfoc;

    nop

    nop

    iget-object v1, v1, Lfoc;->c:Ljava/util/Map;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    if-nez v1, :cond_9

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object v1, v0

    nop

    nop

    check-cast v1, Lfoc;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lfoc;->c:Ljava/util/Map;

    nop

    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    nop

    nop

    nop

    check-cast v3, Lfoc;

    nop

    nop

    nop

    iget-object v3, v3, Lfoc;->b:Ljava/util/Map;

    nop

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    nop

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :cond_4
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_7

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Ljava/util/List;

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    move v8, v2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ge v8, v7, :cond_6

    nop

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Lfob;

    nop

    iget-object v9, v9, Lfob;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    nop

    nop

    if-nez v10, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    nop

    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    nop

    if-eq v8, v9, :cond_5

    nop

    nop

    nop

    const/16 v9, 0x2c

    nop

    nop

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_4

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    nop

    nop

    nop

    :cond_7
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-object v3, v0

    nop

    check-cast v3, Lfoc;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v3, Lfoc;->c:Ljava/util/Map;

    nop

    nop

    :cond_8
    monitor-exit v0

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    nop

    :cond_9
    :goto_e
    check-cast v0, Lfoc;

    nop

    iget-object v0, v0, Lfoc;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    invoke-direct {p0, p1, v2, v1, v0}, Lfkh;->23ce148e54b083367f51e25c7971761em(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p0

    nop

    nop

    invoke-interface {p2, p0}, Lfjx;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

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

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xd

    nop

    nop

    goto/32 :goto_8

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
    const/4 p0, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
