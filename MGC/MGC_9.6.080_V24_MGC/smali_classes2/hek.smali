.class public final Lhek;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    sput-object v0, Lhek;->a:Ljava/text/DecimalFormat;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x3

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "#.###"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const v0, 0x7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    new-instance v0, Ljava/text/DecimalFormat;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

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

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sget p0, Lrda;->a:I

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

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
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

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

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    :goto_a
    :try_start_0
    const-string v0, "UTF-8"

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Lj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    const-string v1, "+"

    nop

    nop

    nop

    nop

    const-string v2, "%20"

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    nop
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "Encode mail param failed, mail param: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0, v1, p1}, Lrdj;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const-string p0, ""

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    sget-object v0, Lrdj;->a:Lrdj;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a([Lcom/google/android/libraries/barhopper/Barcode;II)Ljava/util/List;
    .locals 26

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v1, p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4
    move/from16 v2, v25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    move/from16 v25, v4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v5, v21, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v0, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    move-object v2, v4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    return-object v2

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    if-lez p3, :cond_2

    nop

    move v4, v2

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_2
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_13
    invoke-static {v4}, La;->au(Z)V

    if-lez p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    move v4, v2

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v4}, La;->au(Z)V

    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :goto_15
    array-length v6, v0

    nop

    if-ge v5, v6, :cond_1

    nop

    nop

    nop

    nop

    aget-object v6, v0, v5

    nop

    iget-object v7, v6, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    nop

    nop

    nop

    new-instance v8, Lrdg;

    nop

    nop

    sget-object v9, Lrsa;->a:Lrsa;

    nop

    invoke-direct {v8, v7, v9}, Lrdg;-><init>(Ljava/lang/String;Lrss;)V

    iget v7, v6, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    nop

    nop

    const/4 v9, 0x6

    nop

    nop

    nop

    const/16 v10, 0x100

    nop

    const/4 v12, 0x2

    nop

    nop

    packed-switch v7, :pswitch_data_0

    move-object/from16 p2, v4

    nop

    nop

    sget-object v7, Lrcz;->d:Lrcz;

    nop

    nop

    goto/16 :goto_2a

    nop

    :pswitch_0
    sget-object v7, Lrcz;->g:Lrcz;

    nop

    iget-object v10, v6, Lcom/google/android/libraries/barhopper/Barcode;->calendarEvent:Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_4

    nop

    nop

    nop

    nop

    move-object v14, v10

    nop

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    :cond_4
    const/4 v14, 0x0

    nop

    nop

    :goto_16
    iget-object v10, v10, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v8, v10}, Lrdg;->a(Ljava/lang/String;)Lrdg;

    move-result-object v8

    nop

    nop

    nop

    move-object/from16 p2, v4

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    goto/16 :goto_27

    nop

    nop

    nop

    :pswitch_1
    sget-object v7, Lrcz;->B:Lrcz;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v6, Lcom/google/android/libraries/barhopper/Barcode;->geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    nop

    if-eqz v10, :cond_5

    nop

    nop

    nop

    iget-wide v14, v10, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lat:D

    nop

    move-object/from16 p2, v4

    nop

    nop

    iget-wide v3, v10, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lng:D

    nop

    new-instance v11, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, ","

    nop

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ")"

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    sget-object v4, Lhek;->a:Ljava/text/DecimalFormat;

    nop

    nop

    nop

    iget-object v11, v6, Lcom/google/android/libraries/barhopper/Barcode;->geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    nop

    iget-wide v13, v11, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lat:D

    nop

    nop

    invoke-virtual {v4, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    nop

    iget-object v13, v6, Lcom/google/android/libraries/barhopper/Barcode;->geoPoint:Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    nop

    nop

    nop

    iget-wide v13, v13, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lng:D

    nop

    nop

    nop

    invoke-virtual {v4, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    new-instance v13, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    nop

    nop

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\u00b0, "

    nop

    nop

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u00b0)"

    nop

    nop

    nop

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-virtual {v8, v3}, Lrdg;->a(Ljava/lang/String;)Lrdg;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3, v4}, Lrdg;->b(Ljava/lang/String;)Lrdg;

    move-result-object v8

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_5
    move-object/from16 p2, v4

    nop

    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    move-object/from16 p2, v4

    nop

    nop

    nop

    sget-object v7, Lrcz;->t:Lrcz;

    nop

    nop

    nop

    nop

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->wifi:Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v4}, Lrdg;->a(Ljava/lang/String;)Lrdg;

    move-result-object v8

    nop

    nop

    nop

    move-object/from16 v17, v3

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/16 :goto_2b

    nop

    nop

    :pswitch_3
    move-object/from16 p2, v4

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Lrcz;->k:Lrcz;

    nop

    nop

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    nop

    nop

    nop

    nop

    sget-object v4, Lrdh;->a:Ljava/util/regex/Pattern;

    nop

    const-string v4, " "

    nop

    const-string v8, ""

    nop

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    nop

    sget v4, Lrtl;->a:I

    nop

    const-string v21, "http"

    nop

    nop

    nop

    nop

    const/16 v22, 0x0

    nop

    nop

    nop

    nop

    const/16 v23, 0x4

    nop

    nop

    nop

    nop

    nop

    const/16 v19, 0x1

    nop

    nop

    nop

    nop

    const/16 v20, 0x0

    nop

    move-object/from16 v18, v3

    nop

    nop

    nop

    nop

    invoke-virtual/range {v18 .. v23}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    nop

    if-nez v4, :cond_6

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "http://"

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    :cond_6
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    if-eqz v4, :cond_8

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_7
    new-instance v8, Landroid/net/Uri$Builder;

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    nop

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    nop

    sget-object v8, Lrdh;->a:Ljava/util/regex/Pattern;

    nop

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    nop

    nop

    nop

    nop

    const-string v10, "/"

    nop

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v8

    nop

    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    nop

    nop

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-virtual {v4, v3}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    nop

    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_17
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    nop

    :goto_18
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    new-instance v8, Lrdg;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v4, v10}, Lrdg;-><init>(Ljava/lang/String;Lrss;)V

    const-string v4, "%s@"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-static {v4, v10}, Lrda;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v10

    nop

    nop

    const/4 v11, -0x1

    nop

    nop

    if-ne v10, v11, :cond_9

    nop

    const-string v10, ""

    nop

    goto :goto_19

    nop

    nop

    nop

    nop

    :cond_9
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v13, ":%s"

    nop

    nop

    invoke-static {v13, v10}, Lrda;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    nop

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    nop

    if-eqz v14, :cond_a

    nop

    nop

    nop

    sget-object v13, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto :goto_1b

    nop

    nop

    :cond_a
    const-string v14, "www."

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    nop

    nop

    nop

    if-eq v2, v14, :cond_b

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    :cond_b
    const/4 v14, 0x4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    nop

    nop

    nop

    const-string v11, "/"

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    nop

    nop

    nop

    nop

    sub-int/2addr v15, v11

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v13

    nop

    nop

    nop

    :goto_1b
    new-instance v11, Lquu;

    nop

    nop

    invoke-direct {v11, v4, v10, v9}, Lquu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v11}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v10

    nop

    nop

    nop

    nop

    if-nez v10, :cond_c

    nop

    sget-object v3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/16 :goto_22

    nop

    :cond_c
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-static {v10}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    nop

    nop

    if-eqz v13, :cond_f

    nop

    nop

    nop

    const v14, 0x310888    # 4.503E-39f

    nop

    nop

    nop

    nop

    if-eq v13, v14, :cond_e

    nop

    nop

    nop

    nop

    nop

    const v14, 0x5f008eb

    nop

    nop

    if-eq v13, v14, :cond_d

    nop

    nop

    nop

    nop

    goto :goto_1c

    nop

    nop

    nop

    nop

    :cond_d
    const/4 v13, 0x0

    nop

    nop

    sget-object v13, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->jyxzP:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    if-eqz v11, :cond_10

    nop

    nop

    nop

    move v11, v2

    nop

    nop

    goto :goto_1d

    nop

    nop

    :cond_e
    const-string v13, "http"

    nop

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    if-eqz v11, :cond_10

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    goto :goto_1d

    nop

    :cond_f
    const-string v13, ""

    nop

    nop

    nop

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_10

    nop

    nop

    move v11, v12

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_10
    :goto_1c
    const/4 v11, -0x1

    nop

    :goto_1d
    if-eqz v11, :cond_11

    nop

    nop

    nop

    nop

    if-eq v11, v2, :cond_11

    nop

    if-eq v11, v12, :cond_11

    nop

    nop

    const-string v11, "://"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto :goto_1e

    nop

    :cond_11
    const-string v10, ""

    nop

    :goto_1e
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-static {v3}, Lrda;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    invoke-static {v10}, Lrda;->c(Ljava/lang/String;)Z

    move-result v11

    nop

    nop

    nop

    if-nez v11, :cond_12

    nop

    nop

    invoke-static {v10}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_22

    nop

    nop

    :cond_12
    invoke-static {v3}, Lrda;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_14

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lrda;->c(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_13

    nop

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    :cond_13
    const-string v3, ""

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_14
    :goto_1f
    const-string v3, "\u2026"

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    nop

    rsub-int/lit8 v10, v10, 0x19

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    nop

    nop

    nop

    nop

    if-le v10, v11, :cond_15

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    nop

    nop

    nop

    :cond_15
    if-gez v10, :cond_16

    nop

    nop

    nop

    nop

    nop

    move v11, v10

    nop

    nop

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    :cond_16
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3}, Lrss;->f()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v8, v3}, Lrdg;->b(Ljava/lang/String;)Lrdg;

    move-result-object v8

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    move-object/from16 p2, v4

    nop

    nop

    nop

    nop

    sget-object v7, Lrcz;->u:Lrcz;

    nop

    nop

    nop

    nop

    :cond_17
    :goto_23
    const/4 v3, 0x0

    nop

    nop

    :goto_24
    const/4 v10, 0x0

    nop

    :goto_25
    const/4 v13, 0x0

    nop

    nop

    nop

    :goto_26
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    :goto_27
    const/16 v17, 0x0

    nop

    goto/16 :goto_2b

    nop

    nop

    :pswitch_5
    move-object/from16 p2, v4

    nop

    nop

    nop

    nop

    sget-object v7, Lrcz;->z:Lrcz;

    nop

    nop

    nop

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->sms:Lcom/google/android/libraries/barhopper/Barcode$Sms;

    nop

    nop

    iget-object v3, v3, Lcom/google/android/libraries/barhopper/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    nop

    if-eqz v3, :cond_17

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v3}, Lrdg;->a(Ljava/lang/String;)Lrdg;

    move-result-object v8

    nop

    nop

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->sms:Lcom/google/android/libraries/barhopper/Barcode$Sms;

    nop

    goto :goto_24

    nop

    nop

    nop

    :pswitch_6
    move-object/from16 p2, v4

    nop

    sget-object v7, Lrcz;->j:Lrcz;

    nop

    nop

    nop

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    nop

    nop

    nop

    new-instance v8, Lrdg;

    nop

    sget-object v4, Lrsa;->a:Lrsa;

    nop

    nop

    invoke-direct {v8, v3, v4}, Lrdg;-><init>(Ljava/lang/String;Lrss;)V

    goto :goto_23

    nop

    nop

    :pswitch_7
    move-object/from16 p2, v4

    nop

    nop

    nop

    nop

    nop

    iget v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    nop

    and-int/lit16 v4, v3, 0x660

    nop

    nop

    if-eqz v4, :cond_18

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Lrcz;->c:Lrcz;

    nop

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    :cond_18
    if-ne v3, v10, :cond_19

    nop

    nop

    sget-object v7, Lrcz;->d:Lrcz;

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_19
    sget-object v7, Lrcz;->e:Lrcz;

    nop

    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    move-object/from16 p2, v4

    nop

    sget-object v7, Lrcz;->i:Lrcz;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->email:Lcom/google/android/libraries/barhopper/Barcode$Email;

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_17

    nop

    nop

    nop

    nop

    iget-object v4, v3, Lcom/google/android/libraries/barhopper/Barcode$Email;->address:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v3, Lcom/google/android/libraries/barhopper/Barcode$Email;->subject:Ljava/lang/String;

    nop

    nop

    invoke-static {v8}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    invoke-direct {v1, v8}, Lhek;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lcom/google/android/libraries/barhopper/Barcode$Email;->body:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v3}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3}, Lhek;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    filled-new-array {v4, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "?to=%s&subject=%s&body=%s"

    nop

    nop

    nop

    nop

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lrdg;

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3, v8}, Lrdg;-><init>(Ljava/lang/String;Lrss;)V

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->displayValue:Ljava/lang/String;

    nop

    invoke-virtual {v4, v3}, Lrdg;->b(Ljava/lang/String;)Lrdg;

    move-result-object v8

    nop

    nop

    goto/16 :goto_23

    nop

    :pswitch_9
    move-object/from16 p2, v4

    nop

    nop

    nop

    nop

    sget-object v7, Lrcz;->h:Lrcz;

    nop

    nop

    iget-object v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->contactInfo:Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;

    nop

    nop

    nop

    new-instance v4, Lrdb;

    nop

    const/4 v11, 0x0

    nop

    invoke-direct {v4, v11}, Lrdb;-><init>([B)V

    iget-object v10, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->name:Lcom/google/android/libraries/barhopper/Barcode$PersonName;

    nop

    nop

    if-eqz v10, :cond_1a

    nop

    nop

    iget-object v10, v10, Lcom/google/android/libraries/barhopper/Barcode$PersonName;->formattedName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v10}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    iput-object v10, v4, Lrdb;->a:Lrss;

    nop

    nop

    nop

    nop

    :cond_1a
    iget-object v10, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->phones:[Lcom/google/android/libraries/barhopper/Barcode$Phone;

    nop

    array-length v13, v10

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    :goto_28
    if-ge v14, v13, :cond_1c

    nop

    nop

    nop

    nop

    nop

    aget-object v15, v10, v14

    nop

    nop

    iget-object v11, v15, Lcom/google/android/libraries/barhopper/Barcode$Phone;->number:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    nop

    nop

    nop

    nop

    if-lez v11, :cond_1b

    nop

    nop

    nop

    iget-object v11, v15, Lcom/google/android/libraries/barhopper/Barcode$Phone;->number:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    nop

    nop

    nop

    const/16 v9, 0x3c

    nop

    nop

    if-ge v11, v9, :cond_1b

    nop

    nop

    invoke-virtual {v4}, Lrdb;->c()Lrxw;

    move-result-object v9

    nop

    iget-object v11, v15, Lcom/google/android/libraries/barhopper/Barcode$Phone;->number:Ljava/lang/String;

    nop

    nop

    nop

    new-instance v15, Lrdg;

    nop

    sget-object v12, Lrsa;->a:Lrsa;

    nop

    nop

    invoke-direct {v15, v11, v12}, Lrdg;-><init>(Ljava/lang/String;Lrss;)V

    iget-object v11, v15, Lrdg;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v11}, Lrxw;->h(Ljava/lang/Object;)V

    :cond_1b
    add-int/lit8 v14, v14, 0x1

    nop

    const/4 v9, 0x6

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    const/4 v12, 0x2

    nop

    nop

    nop

    nop

    goto :goto_28

    nop

    nop

    :cond_1c
    iget-object v9, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->emails:[Lcom/google/android/libraries/barhopper/Barcode$Email;

    nop

    nop

    nop

    nop

    nop

    array-length v10, v9

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    :goto_29
    if-ge v11, v10, :cond_1d

    nop

    nop

    aget-object v12, v9, v11

    nop

    invoke-virtual {v4}, Lrdb;->b()Lrxw;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v12, Lcom/google/android/libraries/barhopper/Barcode$Email;->address:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v13, v12}, Lrxw;->h(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    goto :goto_29

    nop

    nop

    nop

    :cond_1d
    iget-object v9, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->urls:[Ljava/lang/String;

    nop

    array-length v10, v9

    nop

    if-lez v10, :cond_1e

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

    nop

    aget-object v9, v9, v10

    nop

    nop

    invoke-virtual {v4, v9}, Lrdb;->e(Ljava/lang/String;)V

    :cond_1e
    iget-object v9, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->addresses:[Lcom/google/android/libraries/barhopper/Barcode$Address;

    nop

    nop

    nop

    nop

    array-length v10, v9

    nop

    nop

    nop

    nop

    nop

    if-lez v10, :cond_1f

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

    aget-object v9, v9, v10

    nop

    nop

    nop

    iget-object v9, v9, Lcom/google/android/libraries/barhopper/Barcode$Address;->addressLines:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v10, "\n"

    nop

    nop

    nop

    invoke-static {v10, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v4, v9}, Lrdb;->d(Ljava/lang/String;)V

    :cond_1f
    iget-object v9, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->organization:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    nop

    if-nez v9, :cond_20

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->organization:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v9

    nop

    nop

    nop

    iput-object v9, v4, Lrdb;->c:Lrss;

    nop

    nop

    nop

    :cond_20
    iget-object v9, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->note:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    nop

    if-nez v9, :cond_21

    nop

    nop

    nop

    iget-object v3, v3, Lcom/google/android/libraries/barhopper/Barcode$ContactInfo;->note:Ljava/lang/String;

    nop

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    iput-object v3, v4, Lrdb;->b:Lrss;

    nop

    nop

    nop

    nop

    :cond_21
    invoke-virtual {v4}, Lrdb;->a()Lrdc;

    move-result-object v3

    nop

    nop

    move-object v13, v3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    const/4 v10, 0x0

    nop

    goto/16 :goto_26

    nop

    nop

    :goto_2a
    iget v3, v6, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    nop

    nop

    if-ne v3, v10, :cond_22

    nop

    const-string v3, ""

    nop

    nop

    nop

    invoke-virtual {v8, v3}, Lrdg;->a(Ljava/lang/String;)Lrdg;

    move-result-object v8

    nop

    nop

    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_22
    sget-object v3, Lrdj;->a:Lrdj;

    nop

    nop

    iget v4, v6, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    nop

    nop

    nop

    nop

    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected Barcode valueFormat, %d, of non-QR type "

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    new-array v10, v9, [Ljava/lang/Object;

    nop

    nop

    invoke-virtual {v3, v1, v4, v10}, Lrdj;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_23

    nop

    :goto_2b
    iget-object v4, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    array-length v4, v4

    nop

    nop

    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    nop

    if-ne v4, v9, :cond_23

    nop

    nop

    nop

    nop

    nop

    move v4, v2

    nop

    nop

    nop

    goto :goto_2c

    nop

    nop

    :cond_23
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_2c
    const-string v9, "Barcode does not have expected four corner points."

    nop

    nop

    nop

    nop

    invoke-static {v4, v9}, Lrrf;->m(ZLjava/lang/Object;)V

    new-instance v4, Lrdk;

    nop

    nop

    iget-object v9, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    aget-object v9, v9, v11

    nop

    nop

    nop

    nop

    nop

    iget v9, v9, Landroid/graphics/Point;->x:I

    nop

    int-to-float v9, v9

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    aget-object v12, v12, v11

    nop

    nop

    nop

    iget v11, v12, Landroid/graphics/Point;->y:I

    nop

    int-to-float v11, v11

    nop

    nop

    nop

    nop

    iget-object v12, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    aget-object v12, v12, v2

    nop

    nop

    nop

    nop

    nop

    iget v12, v12, Landroid/graphics/Point;->x:I

    nop

    int-to-float v12, v12

    nop

    nop

    iget-object v15, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    aget-object v15, v15, v2

    nop

    nop

    nop

    iget v15, v15, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    int-to-float v15, v15

    nop

    nop

    nop

    iget-object v2, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    const/16 v19, 0x2

    nop

    aget-object v2, v2, v19

    nop

    nop

    nop

    nop

    iget v2, v2, Landroid/graphics/Point;->x:I

    nop

    nop

    int-to-float v2, v2

    nop

    iget-object v0, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    aget-object v0, v0, v19

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    int-to-float v0, v0

    nop

    nop

    nop

    move/from16 v21, v5

    nop

    nop

    nop

    iget-object v5, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    const/16 v22, 0x3

    nop

    nop

    nop

    aget-object v5, v5, v22

    nop

    nop

    nop

    iget v5, v5, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    nop

    int-to-float v5, v5

    nop

    nop

    nop

    nop

    move-object/from16 v23, v14

    nop

    nop

    nop

    nop

    iget-object v14, v6, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    aget-object v14, v14, v22

    nop

    nop

    iget v14, v14, Landroid/graphics/Point;->y:I

    nop

    nop

    int-to-float v14, v14

    nop

    move-object/from16 v24, v10

    nop

    const/16 v10, 0x8

    nop

    nop

    nop

    nop

    nop

    new-array v10, v10, [F

    nop

    nop

    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    aput v9, v10, v16

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    aput v11, v10, v9

    nop

    nop

    nop

    const/4 v9, 0x2

    nop

    nop

    aput v12, v10, v9

    nop

    nop

    nop

    nop

    nop

    aput v15, v10, v22

    nop

    nop

    nop

    const/4 v9, 0x4

    nop

    aput v2, v10, v9

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    aput v0, v10, v2

    nop

    nop

    const/4 v0, 0x6

    nop

    nop

    aput v5, v10, v0

    nop

    nop

    nop

    nop

    const/4 v0, 0x7

    nop

    aput v14, v10, v0

    nop

    invoke-direct {v4, v10}, Lrdk;-><init>([F)V

    invoke-static {v4}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {}, Lrdf;->C()Lrde;

    move-result-object v2

    nop

    iput-object v8, v2, Lrde;->b:Lrdg;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v7}, Lrde;->h(Lrcz;)V

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v4, v2, Lrde;->a:Z

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    iput v5, v2, Lrde;->i:I

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrde;->f()V

    invoke-virtual {v2, v0}, Lrde;->e(Lryb;)V

    sget-object v0, Lrcz;->n:Lrcz;

    nop

    nop

    nop

    if-eq v7, v0, :cond_24

    nop

    nop

    nop

    invoke-static {v6}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, v2, Lrde;->c:Lrss;

    nop

    nop

    :cond_24
    if-eqz v13, :cond_25

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v13}, Lrde;->g(Lrdc;)V

    :cond_25
    if-eqz v17, :cond_26

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v17 .. v17}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    iput-object v0, v2, Lrde;->d:Lrss;

    nop

    nop

    :cond_26
    if-eqz v3, :cond_27

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    iput-object v0, v2, Lrde;->e:Lrss;

    nop

    nop

    :cond_27
    if-eqz v24, :cond_28

    nop

    nop

    nop

    invoke-static/range {v24 .. v24}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    iput-object v0, v2, Lrde;->g:Lrss;

    nop

    nop

    :cond_28
    if-eqz v23, :cond_29

    nop

    nop

    nop

    invoke-static/range {v23 .. v23}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, v2, Lrde;->f:Lrss;

    nop

    nop

    :cond_29
    invoke-virtual {v2}, Lrde;->a()Lrdf;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v2, p2

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v4, v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method
