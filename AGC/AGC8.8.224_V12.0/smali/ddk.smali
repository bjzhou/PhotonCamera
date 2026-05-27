.class public final Lddk;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lddk;->a:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    sget-object v0, Llug;->a:Llug;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Encode mail param failed, mail param: %s"

    invoke-virtual {v0, p0, p1, v1}, Llug;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized a([Lcom/google/android/libraries/barhopper/Barcode;II)Ljava/util/List;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-lez p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lmoz;->e(Z)V

    if-lez p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lmoz;->e(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    array-length v6, v0

    if-ge v5, v6, :cond_25

    aget-object v6, v0, v5

    iget-object v7, v6, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    invoke-static {v7}, Llud;->a(Ljava/lang/String;)Llud;

    move-result-object v7

    iget v8, v6, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    const/16 v9, 0x100

    const/4 v11, 0x3

    packed-switch v8, :pswitch_data_0

    sget-object v8, Lltv;->d:Lltv;

    goto/16 :goto_15

    :pswitch_0
    sget-object v8, Lltv;->g:Lltv;

    iget-object v9, v6, Lcom/google/android/libraries/barhopper/Barcode;->calendarEvent:Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    if-eqz v9, :cond_2

    move-object v14, v9

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    iget-object v9, v9, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    invoke-virtual {v7, v9}, Llud;->b(Ljava/lang/String;)Llud;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto/16 :goto_16

    :pswitch_1
    sget-object v8, Lltv;->B:Lltv;

    iget-object v9, v6, Lcom/google/android/libraries/barhopper/Barcode;->geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    if-eqz v9, :cond_3

    iget-wide v14, v9, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lat:D

    iget-wide v12, v9, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lng:D

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lddk;->a:Ljava/text/DecimalFormat;

    iget-object v12, v6, Lcom/google/android/libraries/barhopper/Barcode;->geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    iget-wide v12, v12, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lat:D

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v6, Lcom/google/android/libraries/barhopper/Barcode;->geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    iget-wide v13, v13, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lng:D

    invoke-virtual {v10, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\u00b0, "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u00b0)"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3}, Llud;->b(Ljava/lang/String;)Llud;

    move-result-object v3

    invoke-virtual {v3, v10}, Llud;->c(Ljava/lang/String;)Llud;

    move-result-object v7

    move-object v10, v9

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_16

    :pswitch_2
    sget-object v8, Lltv;->t:Lltv;

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v3, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v9}, Llud;->b(Ljava/lang/String;)Llud;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_16

    :pswitch_3
    sget-object v8, Lltv;->k:Lltv;

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    sget-object v7, Llue;->a:Ljava/util/regex/Pattern;

    const-string v7, " "

    const-string v9, ""

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget v7, Lmrk;->a:I

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v21, "http"

    const/16 v22, 0x0

    const/16 v23, 0x4

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v23}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "http://"

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    new-instance v9, Landroid/net/Uri$Builder;

    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    sget-object v9, Llue;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_6

    :cond_6
    :goto_5
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_6
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Llud;->a(Ljava/lang/String;)Llud;

    move-result-object v7

    const-string v9, "%s@"

    invoke-virtual {v3}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lltw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_7

    const-string v10, ""

    goto :goto_7

    :cond_7
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :goto_7
    const-string v13, ":%s"

    invoke-static {v13, v10}, Lltw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    sget-object v13, Lmpx;->a:Lmpx;

    goto :goto_9

    :cond_8
    const-string v14, "www."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eq v2, v14, :cond_9

    const/4 v14, 0x0

    goto :goto_8

    :cond_9
    const/4 v14, 0x4

    :goto_8
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const-string v12, "/"

    invoke-virtual {v13, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    sub-int/2addr v15, v12

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v13

    :goto_9
    new-instance v12, Ldvo;

    const/16 v14, 0xd

    invoke-direct {v12, v9, v10, v14}, Ldvo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v12}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v9

    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v10

    if-nez v10, :cond_a

    sget-object v3, Lmpx;->a:Lmpx;

    goto/16 :goto_11

    :cond_a
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_b
    goto :goto_a

    :sswitch_0
    const-string v13, "https"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v18, 0x1

    goto :goto_b

    :sswitch_1
    const-string v13, "http"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v18, 0x0

    goto :goto_b

    :sswitch_2
    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v18, 0x2

    goto :goto_b

    :goto_a
    const/16 v18, -0x1

    :goto_b
    packed-switch v18, :pswitch_data_1

    const-string v12, "://"

    goto :goto_c

    :pswitch_4
    const-string v10, ""

    goto :goto_d

    :goto_c
    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_d
    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lltw;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lltw;->c(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    invoke-static {v10}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    goto :goto_11

    :cond_c
    invoke-static {v3}, Lltw;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v9}, Lltw;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_e

    :cond_d
    const-string v3, ""

    goto :goto_f

    :cond_e
    :goto_e
    const-string v3, "\u2026"

    :goto_f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x19

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-le v10, v12, :cond_f

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    :cond_f
    if-gez v10, :cond_10

    move v12, v10

    goto :goto_10

    :cond_10
    const/4 v12, 0x0

    :goto_10
    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    :goto_11
    invoke-virtual {v3}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Llud;->c(Ljava/lang/String;)Llud;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_16

    :pswitch_5
    sget-object v8, Lltv;->u:Lltv;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_16

    :pswitch_6
    sget-object v8, Lltv;->z:Lltv;

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->sms:Lcom/google/android/libraries/barhopper/Barcode$Sms;

    iget-object v3, v3, Lcom/google/android/libraries/barhopper/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_11

    invoke-virtual {v7, v3}, Llud;->b(Ljava/lang/String;)Llud;

    move-result-object v7

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->sms:Lcom/google/android/libraries/barhopper/Barcode$Sms;

    move-object v9, v3

    const/4 v3, 0x0

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_12
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_16

    :pswitch_7
    sget-object v8, Lltv;->j:Lltv;

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    invoke-static {v3}, Llud;->a(Ljava/lang/String;)Llud;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_16

    :pswitch_8
    iget v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    and-int/lit16 v8, v3, 0x660

    if-eqz v8, :cond_12

    sget-object v8, Lltv;->c:Lltv;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_16

    :cond_12
    if-ne v3, v9, :cond_13

    sget-object v8, Lltv;->d:Lltv;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_16

    :cond_13
    sget-object v8, Lltv;->e:Lltv;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_16

    :pswitch_9
    sget-object v8, Lltv;->i:Lltv;

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->email:Lcom/google/android/libraries/barhopper/Barcode$Email;

    if-eqz v3, :cond_14

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v9, v3, Lcom/google/android/libraries/barhopper/Barcode$Email;->address:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v7, v10

    iget-object v9, v3, Lcom/google/android/libraries/barhopper/Barcode$Email;->subject:Ljava/lang/String;

    invoke-static {v9}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lddk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    iget-object v3, v3, Lcom/google/android/libraries/barhopper/Barcode$Email;->body:Ljava/lang/String;

    invoke-static {v3}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lddk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x2

    aput-object v3, v7, v9

    const-string v3, "?to=%s&subject=%s&body=%s"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llud;->a(Ljava/lang/String;)Llud;

    move-result-object v3

    iget-object v7, v6, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    invoke-virtual {v3, v7}, Llud;->c(Ljava/lang/String;)Llud;

    move-result-object v7

    :cond_14
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_16

    :pswitch_a
    sget-object v8, Lltv;->h:Lltv;

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->contactInfo:Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    invoke-static {}, Llty;->a()Lltx;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->name:Lcom/google/android/libraries/barhopper/Barcode$PersonName;

    if-eqz v10, :cond_15

    iget-object v10, v10, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->formattedName:Ljava/lang/String;

    invoke-static {v10}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v10

    iput-object v10, v9, Lltx;->a:Lmqp;

    :cond_15
    iget-object v10, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->phones:[Lcom/google/android/libraries/barhopper/Barcode$Phone;

    array-length v12, v10

    const/4 v13, 0x0

    :goto_13
    if-ge v13, v12, :cond_17

    aget-object v14, v10, v13

    iget-object v15, v14, Lcom/google/android/libraries/barhopper/Barcode$Phone;->number:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_16

    iget-object v15, v14, Lcom/google/android/libraries/barhopper/Barcode$Phone;->number:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v11, 0x3c

    if-ge v15, v11, :cond_16

    invoke-virtual {v9}, Lltx;->c()Lmvq;

    move-result-object v11

    iget-object v14, v14, Lcom/google/android/libraries/barhopper/Barcode$Phone;->number:Ljava/lang/String;

    invoke-static {v14}, Llud;->a(Ljava/lang/String;)Llud;

    move-result-object v14

    iget-object v14, v14, Llud;->a:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lmvq;->g(Ljava/lang/Object;)V

    :cond_16
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x3

    goto :goto_13

    :cond_17
    iget-object v10, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->emails:[Lcom/google/android/libraries/barhopper/Barcode$Email;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v11, :cond_18

    aget-object v13, v10, v12

    invoke-virtual {v9}, Lltx;->b()Lmvq;

    move-result-object v14

    iget-object v13, v13, Lcom/google/android/libraries/barhopper/Barcode$Email;->address:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lmvq;->g(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_18
    iget-object v10, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->urls:[Ljava/lang/String;

    array-length v11, v10

    if-lez v11, :cond_19

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Lltx;->e(Ljava/lang/String;)V

    :cond_19
    iget-object v10, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->addresses:[Lcom/google/android/libraries/barhopper/Barcode$Address;

    array-length v11, v10

    if-lez v11, :cond_1a

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/google/android/libraries/barhopper/Barcode$Address;->addressLines:[Ljava/lang/String;

    const-string v11, "\n"

    invoke-static {v11, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lltx;->d(Ljava/lang/String;)V

    :cond_1a
    iget-object v10, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->organization:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b

    iget-object v10, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->organization:Ljava/lang/String;

    invoke-static {v10}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v10

    iput-object v10, v9, Lltx;->c:Lmqp;

    :cond_1b
    iget-object v10, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->note:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c

    iget-object v3, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->note:Ljava/lang/String;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v9, Lltx;->b:Lmqp;

    :cond_1c
    invoke-virtual {v9}, Lltx;->a()Llty;

    move-result-object v3

    move-object v13, v3

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    goto :goto_16

    :goto_15
    iget v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    if-ne v3, v9, :cond_1d

    const-string v3, ""

    invoke-virtual {v7, v3}, Llud;->b(Ljava/lang/String;)Llud;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_16

    :cond_1d
    sget-object v3, Llug;->a:Llug;

    iget v9, v6, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected Barcode valueFormat, %d, of non-QR type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v9, v11}, Llug;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_16
    iget-object v11, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    array-length v11, v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1e

    const/4 v11, 0x1

    goto :goto_17

    :cond_1e
    const/4 v11, 0x0

    :goto_17
    const-string v12, "Barcode does not have expected four corner points."

    invoke-static {v11, v12}, Lmoz;->f(ZLjava/lang/Object;)V

    new-instance v11, Lmdj;

    const/16 v12, 0x8

    new-array v12, v12, [F

    iget-object v15, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    const/16 v17, 0x0

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    aput v15, v12, v17

    iget-object v15, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    aget-object v15, v15, v17

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    aput v15, v12, v2

    iget-object v15, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    aget-object v15, v15, v2

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    const/16 v19, 0x2

    aput v15, v12, v19

    iget-object v15, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    aget-object v15, v15, v2

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    const/16 v18, 0x3

    aput v15, v12, v18

    iget-object v15, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    const/16 v19, 0x2

    aget-object v15, v15, v19

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    const/16 v16, 0x4

    aput v15, v12, v16

    iget-object v15, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    const/16 v16, 0x5

    aput v15, v12, v16

    iget-object v15, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    const/16 v16, 0x3

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    const/16 v16, 0x6

    aput v15, v12, v16

    iget-object v15, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    const/16 v16, 0x3

    aget-object v15, v15, v16

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    const/16 v16, 0x7

    aput v15, v12, v16

    invoke-direct {v11, v12}, Lmdj;-><init>([F)V

    invoke-static {v11}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v11

    invoke-static {}, Lluc;->C()Llua;

    move-result-object v12

    iput-object v7, v12, Llua;->b:Llud;

    invoke-virtual {v12, v8}, Llua;->h(Lltv;)V

    iput-boolean v2, v12, Llua;->a:Z

    sget-object v7, Llub;->b:Llub;

    invoke-virtual {v12, v7}, Llua;->g(Llub;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, v12, Llua;->c:Ljava/lang/Float;

    invoke-virtual {v12, v11}, Llua;->e(Lmvv;)V

    sget-object v7, Lltv;->n:Lltv;

    if-eq v8, v7, :cond_1f

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    iput-object v6, v12, Llua;->d:Lmqp;

    :cond_1f
    if-eqz v13, :cond_20

    invoke-virtual {v12, v13}, Llua;->f(Llty;)V

    :cond_20
    if-eqz v3, :cond_21

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v12, Llua;->e:Lmqp;

    :cond_21
    if-eqz v9, :cond_22

    invoke-static {v9}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v12, Llua;->f:Lmqp;

    :cond_22
    if-eqz v10, :cond_23

    invoke-static {v10}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v12, Llua;->h:Lmqp;

    :cond_23
    if-eqz v14, :cond_24

    invoke-static {v14}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iput-object v3, v12, Llua;->g:Lmqp;

    :cond_24
    invoke-virtual {v12}, Llua;->a()Lluc;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_25
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_19

    :goto_18
    throw v0

    :goto_19
    goto :goto_18

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x310888 -> :sswitch_1
        0x5f008eb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
