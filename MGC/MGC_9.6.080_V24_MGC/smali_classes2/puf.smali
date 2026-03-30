.class public final Lpuf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const v1, 0x18

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

    :goto_4
    invoke-virtual {v0}, Lexp;->printStackTrace()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const-string v2, "Could not register pano namespace!"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const-string v1, "XmpUtil"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_1

    nop

    :goto_e
    :try_start_0
    sget-object v0, Lexs;->a:Lts;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    nop

    nop

    nop

    const-string v2, "GPano"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Lts;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static a(Ljava/util/List;[B)I
    .locals 5

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    if-eq v1, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

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

    :goto_6
    invoke-static {v1, v3, v0, v3}, Lpuf;->s([BI[BI)I

    move-result v1

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

    nop

    :goto_7
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    :goto_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v0, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    :goto_b
    const/4 p0, -0x1

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

    :goto_c
    new-array v0, v0, [B

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

    :goto_d
    return v3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

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

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v1, Lpud;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_9

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, v3, v0, v1}, Lpuf;->s([BI[BI)I

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v0, v0, 0x1d

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

    :goto_17
    invoke-interface {p0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    const-string p0, "XmpUtil"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    check-cast v1, Lpud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1a
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1d
    const-string p1, "The standard XMP section cannot have a size larger than 65502 bytes."

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

    :goto_1e
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-le v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x1

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v4, 0xe1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    check-cast v0, Lpud;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_27
    invoke-static {v0}, Lpuf;->u([B)Lpud;

    move-result-object p1

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

    :goto_28
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2b
    goto :goto_31

    nop

    :goto_2c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

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

    :goto_30
    move v0, v3

    nop

    :goto_31
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, v2}, Lpuf;->j(Lpud;Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_33
    const v1, 0xffde

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    array-length v0, p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_35
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_6
    goto/32 :goto_28

    nop

    :goto_36
    iget v1, v1, Lpud;->d:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_38
    iget v0, v0, Lpud;->d:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public static b(Lexq;Lexq;)Lexq;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/16 :goto_10

    nop

    :catch_0
    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const v0, 0xc

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x10

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    invoke-interface {p1}, Lexq;->f()Leyc;

    move-result-object p1

    nop

    nop

    nop

    nop

    :cond_3
    :goto_10
    invoke-virtual {p1}, Leyc;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lexz;

    nop

    nop

    iget-object v1, v0, Lexz;->b:Ljava/lang/String;

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lexz;->a:Ljava/lang/String;

    nop

    nop

    iget-object v3, v0, Lexz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lexz;->a()Leyr;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v2, v1, v3, v0}, Lexq;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Leyr;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(Ljava/lang/String;)Lrss;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    sget-object v0, Lexs;->a:Lts;

    nop

    nop

    invoke-static {p0}, Leyf;->a(Ljava/lang/Object;)Lexq;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "String was not a serialized XMPMeta."

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

    :goto_5
    invoke-static {p0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

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

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_7

    nop

    nop

    :goto_7
    const-string p0, "XmpUtil"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lrsa;->a:Lrsa;

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
.end method

.method public static d([BLexq;)Lrsu;
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lpub;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-direct {p1, v0, p0}, Lrsu;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v1, Lexq;

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    :goto_a
    new-instance v0, Leye;

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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lrsu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p0}, Lpub;-><init>([B)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Lexq;

    nop

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_1a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    :goto_16
    if-nez p0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lexs;->a:Lts;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0}, Leye;-><init>()V

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    const v0, 0x10

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1, p1}, Lpuf;->b(Lexq;Lexq;)Lexq;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p1, Lrsu;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0}, Lpuf;->v(Lpue;)Lrsu;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_20
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop
.end method

.method public static e(Ljava/io/InputStream;)Lrsu;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0}, Lpuf;->v(Lpue;)Lrsu;

    move-result-object p0

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

    nop

    nop

    :goto_2
    new-instance v0, Lpuc;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lpuc;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static f(Lexq;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    :try_start_0
    invoke-interface {p0}, Lexq;->j()Leyt;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    check-cast p0, Leyd;

    nop

    nop

    nop

    iget-object p0, p0, Leyd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :catch_0
    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static g(Lexq;)Ljava/nio/ByteBuffer;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lpuf;->x(Lexq;)[B

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static h(Lpue;ZZ)Ljava/util/List;
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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
    const v1, 0x1f

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
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :cond_0
    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Lpue;->a()I

    move-result v1

    nop

    const/16 v2, 0xff

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpue;->a()I

    move-result v1

    nop

    nop

    nop

    const/16 v3, 0xd8

    nop

    nop

    nop

    if-ne v1, v3, :cond_0

    nop

    :cond_2
    :goto_e
    invoke-interface {p0}, Lpue;->a()I

    move-result v1

    nop

    nop

    nop

    const/4 v3, -0x1

    nop

    nop

    if-eq v1, v3, :cond_0

    nop

    nop

    nop

    if-ne v1, v2, :cond_0

    nop

    :cond_3
    invoke-interface {p0}, Lpue;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const/16 v4, 0xda

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpue;->d()Lpud;

    move-result-object p0

    nop

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_5
    invoke-interface {p0}, Lpue;->a()I

    move-result v4

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpue;->a()I

    move-result v5

    nop

    if-eq v4, v3, :cond_0

    nop

    nop

    nop

    nop

    if-eq v5, v3, :cond_0

    nop

    nop

    shl-int/lit8 v3, v4, 0x8

    nop

    nop

    nop

    nop

    or-int/2addr v3, v5

    nop

    nop

    nop

    add-int/lit8 v3, v3, -0x2

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_7

    nop

    nop

    nop

    const/16 v4, 0xe1

    nop

    nop

    nop

    nop

    if-ne v1, v4, :cond_6

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_6
    invoke-interface {p0, v3}, Lpue;->c(I)V

    goto/16 :goto_e

    nop

    nop

    :cond_7
    :goto_f
    invoke-interface {p0, v3, v1}, Lpue;->b(II)Lpud;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v3, "http://ns.adobe.com/xmp/extension/\u0000"

    nop

    nop

    invoke-static {v1, v3}, Lpuf;->j(Lpud;Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_8

    nop

    nop

    nop

    if-nez p2, :cond_2

    nop

    nop

    nop

    :cond_8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static i(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/16 v0, 0xff

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    const v0, 0x18

    nop

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

    :goto_2
    and-int/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    iget v2, v1, Lpud;->d:I

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, v1, Lpud;->c:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_c
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v3, 0xda

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

    :goto_12
    goto/32 :goto_6

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

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

    nop

    :goto_16
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Lpud;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v2, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    iget-object v2, v1, Lpud;->a:[B

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    check-cast v1, Lpud;

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

    :goto_1f
    invoke-virtual {v1}, Lpud;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    shr-int/lit8 v2, v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    iget v2, v1, Lpud;->d:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    iget v3, v1, Lpud;->b:I

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

    :goto_24
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v1, 0xd8

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop
.end method

.method public static j(Lpud;Ljava/lang/String;)Z
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    new-array v1, v1, [B

    nop

    nop

    nop

    iget-object v2, p0, Lpud;->a:[B

    nop

    iget p0, p0, Lpud;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, p0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v2, "UTF-8"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    if-lt v2, v1, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Lpud;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

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
    const v1, 0x1a

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

    :goto_b
    const/4 p0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    if-nez p0, :cond_3

    nop

    goto/32 :goto_12

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    return p0

    nop

    :catch_0
    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const-string v0, ".rgbz"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    const-string v0, ".jpg"

    nop

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

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, ".jpeg"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

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

    :goto_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_5

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

    nop

    :goto_d
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

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

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

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
.end method

.method public static l(Lexq;)[B
    .locals 0

    :try_start_0
    invoke-static {p0}, Lpuf;->x(Lexq;)[B

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static m(Lexq;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lpuf;->f(Lexq;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    invoke-static {p0, p1}, Lpuf;->q(Lexq;Ljava/lang/String;)V

    return-void

    nop

    nop

    nop

    :cond_0
    new-instance v0, Leyr;

    nop

    invoke-direct {v0}, Leyr;-><init>()V

    invoke-interface {p0, p1, v0}, Lexq;->k(Ljava/lang/String;Leyr;)V
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

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

    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "XmpUtil"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lexp;->getMessage()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "Failed to append or overwrite special type id "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    return-void

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

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static n([B)Lexq;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Leye;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-static {v0}, Lpuf;->z(Lpue;)Lexq;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lpub;-><init>([B)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lpub;

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

    :goto_6
    invoke-direct {p0}, Leye;-><init>()V

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    sget-object p0, Lexs;->a:Lts;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static o(Ljava/io/InputStream;)Lexq;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lpuc;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_2

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

    nop

    :goto_2
    invoke-static {v0}, Lpuf;->z(Lpue;)Lexq;

    move-result-object p0

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

    :goto_3
    new-instance v0, Lpuc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static p([BLjava/io/OutputStream;Lexq;Lexq;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lpub;-><init>([B)V

    goto/32 :goto_2

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
    invoke-static {v0, p1, p2, p3}, Lpuf;->r(Lpue;Ljava/io/OutputStream;Lexq;Lexq;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lpub;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static q(Lexq;Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    :goto_4
    :try_start_0
    sget-object v0, Lexs;->a:Lts;

    nop

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    nop

    nop

    nop

    nop

    const-string v2, "GCamera"

    nop

    invoke-virtual {v0, v1, v2}, Lts;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "SpecialTypeID"

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Leyr;

    nop

    nop

    nop

    const/16 v2, 0x200

    nop

    nop

    nop

    invoke-direct {v1, v2}, Leyr;-><init>(I)V

    new-instance v2, Leyr;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Leyr;-><init>()V

    invoke-interface {p0, v0, v1, p1, v2}, Lexq;->g(Ljava/lang/String;Leyr;Ljava/lang/String;Leyr;)V
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const-string p1, "XmpUtil"

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lexp;->getMessage()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x18

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x12

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "exception while appending special type id "

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public static r(Lpue;Ljava/io/OutputStream;Lexq;Lexq;)V
    .locals 11

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    invoke-static {v8}, Lpuf;->y(I)[B

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2
    array-length v3, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    div-int/2addr v3, v6

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p3}, Lpuf;->l(Lexq;)[B

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    sub-int v6, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, p2}, Lpua;-><init>(I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_7
    const-string v4, "http://ns.adobe.com/xmp/extension/\u0000"

    nop

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

    :goto_8
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v1}, Lpuf;->a(Ljava/util/List;[B)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p2}, Lpuf;->l(Lexq;)[B

    move-result-object v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    :goto_10
    move v7, v6

    nop

    nop

    :goto_11
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr v7, v8

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_13
    if-eqz p2, :cond_1

    nop

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
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v7, v9, v10}, Lpuf;->s([BI[BI)I

    move-result v8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gez p3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p2}, Lexq;->i()V

    :goto_1a
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_27

    nop

    nop

    :goto_1c
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v8, p2, v9, v10}, Lpuf;->s([BI[BI)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v8, v0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/2addr v10, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    if-lt v6, v3, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    :goto_21
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    :goto_22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr v9, v4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0, p3, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_26
    :try_start_0
    invoke-static {p1, p0}, Lpuf;->i(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    :goto_27
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_28
    add-int/2addr v10, v8

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3b

    nop

    :goto_2a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p0, p2, p2}, Lpuf;->h(Lpue;ZZ)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2e
    const/4 v0, 0x0

    nop

    :goto_2f
    goto/32 :goto_d

    nop

    nop

    :goto_30
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v9}, Lpuf;->u([B)Lpud;

    move-result-object v8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    :goto_33
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_36
    sub-int v9, v8, v7

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v8, p2, v9, v10}, Lpuf;->s([BI[BI)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_39
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez p3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v7}, Lpuf;->y(I)[B

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v0}, Lpuf;->w([B)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move v6, p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v1, Lpua;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_44
    const v0, 0x4

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_45
    new-array v9, v9, [B

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v5, 0xffb2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v4, v4, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v0}, Lpuf;->w([B)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    :try_start_1
    const-string v2, "http://ns.adobe.com/xmp/note/"

    nop

    const-string v3, "HasExtendedXMP"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v2, v3, v1}, Lexq;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lexp; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v10, p2, v9, p2}, Lpuf;->s([BI[BI)I

    move-result v10

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_4b
    invoke-static {p0, v1}, Lrgw;->ah(Ljava/lang/Iterable;Lrsv;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez p3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private static s([BI[BI)I
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    array-length v1, p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sub-int/2addr v1, p3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    array-length v0, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-int/2addr v0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

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

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-static {p0, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    goto/32 :goto_b

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

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method private static t(Ljava/util/List;)Lexq;
    .locals 6

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, v0, Lpud;->c:I

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    new-array v2, p0, [B

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    const/16 v3, 0x3f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    add-int/2addr v2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Lpud;->a:[B

    nop

    nop

    nop

    goto/32 :goto_2d

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

    :goto_d
    iget v3, v0, Lpud;->b:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_f
    if-eq v4, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 p0, p0, -0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    iget v2, v0, Lpud;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    const v0, 0x12

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_1

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lpud;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_17
    invoke-static {v0, v2}, Lpuf;->j(Lpud;Ljava/lang/String;)Z

    move-result v2

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

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    aget-byte v4, v3, v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v5, 0x3e

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1d
    iget-object v3, v0, Lpud;->a:[B

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 p0, p0, -0x1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    :goto_22
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-gtz p0, :cond_5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object v1

    nop

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_29
    invoke-static {v0, v3, v2, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    sget-object p0, Lexs;->a:Lts;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Leyf;->a(Ljava/lang/Object;)Lexq;

    move-result-object p0

    nop

    nop
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_21

    nop

    nop

    :goto_2a
    add-int/lit8 v3, v3, 0x1d

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget p0, v0, Lpud;->c:I

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v4, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2e
    aget-byte v2, v3, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

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
.end method

.method private static u([B)Lpud;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

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

    :goto_1
    const/16 v2, 0xe1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p0, v2, v3, v0}, Lpud;-><init>([BIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

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

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    new-instance v1, Lpud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    array-length v0, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xd

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method

.method private static v(Lpue;)Lrsu;
    .locals 12

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    :try_start_0
    invoke-interface {v0, v3, v4}, Lexq;->a(Ljava/lang/String;Ljava/lang/String;)Leyt;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Leyd;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Leyd;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_47

    nop

    nop

    :goto_2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4e

    nop

    nop

    :goto_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, v3, v4}, Lexq;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_6
    check-cast v9, Ljava/lang/Integer;

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

    :goto_7
    add-int/2addr v7, v11

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    move v7, v1

    nop

    :goto_9
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v3, v4, v5}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    new-instance v4, Ljava/util/ArrayList;

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

    :goto_d
    const v0, 0x6

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v8, :cond_0

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_10
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_11
    new-instance v6, Ljava/util/ArrayList;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, v0, v1}, Lpuf;->h(Lpue;ZZ)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v8, Ljava/lang/Integer;

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

    :goto_18
    invoke-static {p0}, Lpuf;->t(Ljava/util/List;)Lexq;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object v2

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Lrsu;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v7, v8, p0, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1d
    iget v9, v8, Lpud;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1e
    new-array p0, v7, [B

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1f
    if-eqz v7, :cond_2

    nop

    goto/32 :goto_3f

    nop

    nop

    :catch_0
    :cond_2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_3
    goto/32 :goto_5a

    nop

    :goto_21
    if-nez v9, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_23
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, v0, v2}, Lrsu;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_29
    move v3, v1

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v8, Lpud;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v5, "\u0000"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_3a

    nop

    nop

    :goto_2e
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p0, Lrsu;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v10, v10, 0x7

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

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

    :goto_32
    goto :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    :try_start_1
    sget-object v1, Lexs;->a:Lts;

    nop

    invoke-static {p0}, Leyf;->a(Ljava/lang/Object;)Lexq;

    move-result-object p0

    nop

    nop
    :try_end_1
    .catch Lexp; {:try_start_1 .. :try_end_1} :catch_0

    :goto_34
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_35
    add-int/2addr v3, v9

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v5, :cond_5

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object v1

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3c
    const-string v4, "HasExtendedXMP"

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

    :goto_3d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3e
    goto :goto_34

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sub-int v11, v9, v10

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_43
    invoke-static {v8, v3}, Lpuf;->j(Lpud;Ljava/lang/String;)Z

    move-result v9

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

    :goto_44
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_45
    move-object p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_46
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v4, "http://ns.adobe.com/xmp/extension/\u0000"

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
    invoke-virtual {p0}, Lexp;->printStackTrace()V

    goto/32 :goto_19

    nop

    nop

    :goto_49
    invoke-direct {v1, v0, p0}, Lrsu;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int/2addr v10, v9

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4b
    iget v11, v8, Lpud;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return-object v2

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_4d
    if-lt v1, v7, :cond_7

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance v5, Ljava/util/ArrayList;

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

    nop

    :goto_4f
    sub-int/2addr v9, v8

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v7, v7, Lpud;->a:[B

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    add-int/2addr v9, v11

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

    nop

    :goto_55
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_1f

    nop

    nop

    :goto_57
    check-cast v7, Lpud;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_58
    const-string v3, "http://ns.adobe.com/xmp/note/"

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_13

    nop

    nop
.end method

.method private static w([B)Ljava/lang/String;
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v2, Ljava/util/Formatter;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_9
    invoke-static {v1}, Lrrf;->g(C)Z

    move-result v2

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

    :goto_a
    aput-char v1, p0, v3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_35

    nop

    nop

    :goto_c
    add-int v2, v1, v1

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

    :goto_d
    invoke-static {v1}, Lrrf;->g(C)Z

    move-result v1

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

    :goto_e
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    invoke-direct {v2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1a

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

    :goto_11
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_2a

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    const-string p0, ""

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    :goto_19
    if-lt v3, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_1a
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_38

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    xor-int/lit8 v1, v1, 0x20

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1f
    aget-byte v5, p0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    goto :goto_1c

    nop

    :goto_22
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_28

    nop

    nop

    :goto_25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    :goto_27
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v3, v0, :cond_4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_29
    move v4, v3

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_36

    nop

    nop

    :goto_2b
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2c
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1

    nop

    nop

    :goto_2e
    :try_start_0
    const-string v0, "MD5"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2f
    aget-char v1, p0, v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v6, "%02x"

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, v6, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_34
    array-length v1, p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_36
    if-lt v4, v1, :cond_5

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    :goto_38
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-char v1, v1

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method private static x(Lexq;)[B
    .locals 23

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :catch_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v9, v1, v10}, Leyp;->f(IZ)V

    goto/32 :goto_16

    nop

    nop

    :goto_2
    new-instance v12, Ljava/io/ByteArrayOutputStream;

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

    nop

    :goto_3
    invoke-direct {v0, v1, v2}, Lexp;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_0
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_7
    sget-object v2, Lexs;->a:Lts;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8
    const-string v3, "rdf"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-static {v8, v15, v9}, Leyk;->g(ILjava/io/OutputStreamWriter;Leys;)V

    invoke-virtual {v15, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object v0, v11

    nop

    nop

    nop

    nop

    nop

    move-object v13, v1

    nop

    nop

    nop

    move-object v1, v14

    nop

    nop

    move-object v10, v2

    nop

    nop

    move-object v2, v15

    nop

    nop

    nop

    nop

    move-object v8, v3

    nop

    nop

    nop

    nop

    move-object v3, v9

    nop

    move-object/from16 v17, v12

    nop

    nop

    move v12, v4

    nop

    nop

    move v4, v7

    nop

    nop

    move-object/from16 v18, v5

    nop

    move v5, v6

    nop

    nop

    invoke-static/range {v0 .. v5}, Leyk;->c(Leye;Lexv;Ljava/io/OutputStreamWriter;Leys;II)V

    new-instance v5, Ljava/util/HashSet;

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, Leye;->a:Leyh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Leyh;->h()Ljava/util/Iterator;

    move-result-object v8

    nop

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Leyh;

    nop

    nop

    nop

    move-object v1, v5

    nop

    nop

    nop

    move-object v2, v11

    nop

    nop

    move-object v3, v14

    nop

    nop

    nop

    nop

    move-object v4, v15

    nop

    nop

    nop

    nop

    move-object v13, v5

    nop

    move-object v5, v9

    nop

    nop

    move/from16 v19, v6

    nop

    nop

    move v6, v7

    nop

    nop

    nop

    nop

    nop

    move/from16 v20, v7

    nop

    nop

    nop

    nop

    move/from16 v7, v19

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Leyk;->e(Leyh;Ljava/util/Set;Leye;Lexv;Ljava/io/OutputStreamWriter;Leys;II)V

    move-object v5, v13

    nop

    nop

    nop

    move/from16 v6, v19

    nop

    nop

    move/from16 v7, v20

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_2
    move/from16 v19, v6

    nop

    nop

    nop

    move/from16 v20, v7

    nop

    iget-object v0, v11, Leye;->a:Leyh;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Leyh;->h()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x1

    nop

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Leyh;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x3

    nop

    move-object v2, v11

    nop

    nop

    move-object v3, v14

    nop

    nop

    move-object v4, v15

    nop

    nop

    nop

    move-object v5, v9

    nop

    nop

    nop

    nop

    move/from16 v6, v20

    nop

    nop

    nop

    move/from16 v7, v19

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Leyk;->d(Leyh;ILeye;Lexv;Ljava/io/OutputStreamWriter;Leys;II)Z

    move-result v0

    nop

    nop

    nop

    and-int/2addr v13, v0

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    :cond_3
    if-nez v13, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v12}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    iget-object v0, v11, Leye;->a:Leyh;

    nop

    nop

    nop

    invoke-virtual {v0}, Leyh;->h()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    if-eqz v0, :cond_4

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Leyh;

    nop

    const/4 v1, 0x3

    nop

    move-object v2, v11

    nop

    nop

    nop

    move-object v3, v14

    nop

    nop

    nop

    move-object v4, v15

    nop

    nop

    nop

    move-object v5, v9

    nop

    nop

    move/from16 v6, v20

    nop

    nop

    nop

    nop

    nop

    move/from16 v7, v19

    nop

    nop

    invoke-static/range {v0 .. v7}, Leyk;->a(Leyh;ILeye;Lexv;Ljava/io/OutputStreamWriter;Leys;II)V

    goto :goto_c

    nop

    nop

    nop

    :cond_4
    const/4 v0, 0x2

    nop

    invoke-static {v0, v15, v9}, Leyk;->g(ILjava/io/OutputStreamWriter;Leys;)V

    move-object/from16 v7, v18

    nop

    nop

    invoke-virtual {v15, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    goto/16 :goto_10

    nop

    :cond_5
    invoke-virtual {v15, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    goto/16 :goto_10

    nop

    :goto_d
    move-object v10, v2

    nop

    nop

    move-object v8, v3

    nop

    move/from16 v19, v6

    nop

    nop

    move/from16 v20, v7

    nop

    nop

    move-object/from16 v17, v12

    nop

    nop

    nop

    nop

    move-object v6, v1

    nop

    nop

    move v12, v4

    nop

    nop

    nop

    nop

    nop

    move-object v7, v5

    nop

    iget-object v0, v11, Leye;->a:Leyh;

    nop

    nop

    nop

    invoke-virtual {v0}, Leyh;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-lez v0, :cond_8

    nop

    nop

    nop

    iget-object v0, v11, Leye;->a:Leyh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Leyh;->h()Ljava/util/Iterator;

    move-result-object v10

    nop

    nop

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    move-object/from16 v18, v0

    nop

    nop

    nop

    check-cast v18, Leyh;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    invoke-static {v5, v15, v9}, Leyk;->g(ILjava/io/OutputStreamWriter;Leys;)V

    invoke-virtual {v15, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object v0, v11

    nop

    nop

    nop

    nop

    nop

    move-object v1, v14

    nop

    move-object v2, v15

    nop

    nop

    move-object v3, v9

    nop

    nop

    nop

    nop

    nop

    move/from16 v4, v20

    nop

    nop

    nop

    move/from16 v16, v5

    nop

    nop

    nop

    nop

    nop

    move/from16 v5, v19

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Leyk;->c(Leye;Lexv;Ljava/io/OutputStreamWriter;Leys;II)V

    new-instance v1, Ljava/util/HashSet;

    nop

    nop

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    nop

    move-object v2, v11

    nop

    nop

    nop

    nop

    nop

    move-object v3, v14

    nop

    nop

    nop

    nop

    move-object v4, v15

    nop

    nop

    move-object v5, v9

    nop

    move-object/from16 v21, v6

    nop

    move/from16 v6, v20

    nop

    nop

    nop

    nop

    move-object/from16 v22, v7

    nop

    nop

    nop

    nop

    move/from16 v7, v19

    nop

    nop

    nop

    invoke-static/range {v0 .. v7}, Leyk;->e(Leyh;Ljava/util/Set;Leye;Lexv;Ljava/io/OutputStreamWriter;Leys;II)V

    invoke-virtual {v15, v12}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    invoke-virtual/range {v18 .. v18}, Leyh;->h()Ljava/util/Iterator;

    move-result-object v18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Leyh;

    nop

    const/4 v1, 0x0

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    move-object v3, v11

    nop

    nop

    move-object v4, v14

    nop

    nop

    move-object v5, v15

    nop

    move-object v6, v9

    nop

    move/from16 v7, v20

    nop

    nop

    nop

    move/from16 v12, v16

    nop

    move-object/from16 v16, v8

    nop

    move/from16 v8, v19

    nop

    nop

    invoke-static/range {v0 .. v8}, Leyk;->b(Leyh;ZILeye;Lexv;Ljava/io/OutputStreamWriter;Leys;II)V

    move-object/from16 v8, v16

    nop

    nop

    nop

    nop

    nop

    move/from16 v16, v12

    nop

    nop

    nop

    nop

    nop

    const/16 v12, 0x3e

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_6
    move/from16 v12, v16

    nop

    nop

    nop

    nop

    move-object/from16 v16, v8

    nop

    nop

    nop

    nop

    invoke-static {v12, v15, v9}, Leyk;->g(ILjava/io/OutputStreamWriter;Leys;)V

    move-object/from16 v0, v22

    nop

    invoke-virtual {v15, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    move-object v7, v0

    nop

    nop

    nop

    nop

    move-object/from16 v8, v16

    nop

    nop

    move-object/from16 v6, v21

    nop

    const/16 v12, 0x3e

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_10
    const/4 v0, 0x1

    nop

    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_8
    const/4 v12, 0x2

    nop

    invoke-static {v12, v15, v9}, Leyk;->g(ILjava/io/OutputStreamWriter;Leys;)V

    invoke-virtual {v15, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object v0, v11

    nop

    move-object v1, v14

    nop

    nop

    nop

    move-object v2, v15

    nop

    nop

    nop

    move-object v3, v9

    nop

    nop

    nop

    nop

    move/from16 v4, v20

    nop

    nop

    nop

    nop

    move/from16 v5, v19

    nop

    nop

    nop

    invoke-static/range {v0 .. v5}, Leyk;->c(Leye;Lexv;Ljava/io/OutputStreamWriter;Leys;II)V

    invoke-virtual {v15, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    goto :goto_10

    nop

    nop

    :goto_11
    invoke-static {v0, v15, v9}, Leyk;->g(ILjava/io/OutputStreamWriter;Leys;)V

    const-string v0, "</rdf:RDF>"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v15, v9}, Leyk;->g(ILjava/io/OutputStreamWriter;Leys;)V

    const-string v0, "</x:xmpmeta>"

    nop

    nop

    nop

    invoke-virtual {v15, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    const-string v0, ""

    nop

    invoke-virtual {v9}, Leys;->k()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    const-string v1, "<?xpacket end=\""

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {v9}, Leys;->l()Z

    move-result v1

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    if-eq v2, v1, :cond_9

    nop

    nop

    nop

    const/16 v1, 0x77

    nop

    goto :goto_12

    nop

    nop

    :cond_9
    const/16 v1, 0x72

    nop

    nop

    nop

    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    const-string v1, "\"?>"

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :cond_a
    invoke-virtual {v15}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    invoke-virtual {v9}, Leys;->i()Z

    move-result v2

    nop

    if-eqz v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    iget v2, v14, Lexv;->a:I

    nop

    nop

    nop

    nop

    mul-int v1, v1, v20

    nop

    nop

    nop

    nop

    add-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    move/from16 v13, v19

    nop

    nop

    nop

    nop

    if-gt v2, v13, :cond_b

    nop

    sub-int v6, v13, v2

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_b
    new-instance v0, Lexp;

    nop

    nop

    nop

    nop

    const-string v1, "Can\'t fit into specified packet size"

    nop

    nop

    nop

    const/16 v2, 0x6b

    nop

    nop

    invoke-direct {v0, v1, v2}, Lexp;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_c
    move/from16 v13, v19

    nop

    move v6, v13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    div-int v6, v6, v20

    nop

    nop

    iget-object v1, v9, Leys;->c:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    nop

    if-lt v6, v1, :cond_e

    nop

    sub-int/2addr v6, v1

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v2, 0x64

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v1, 0x64

    nop

    nop

    nop

    nop

    nop

    if-lt v6, v3, :cond_d

    nop

    nop

    nop

    invoke-static {v2, v15}, Leyk;->f(ILjava/io/OutputStreamWriter;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    sub-int/2addr v6, v3

    nop

    nop

    nop

    goto :goto_14

    nop

    :cond_d
    invoke-static {v6, v15}, Leyk;->f(ILjava/io/OutputStreamWriter;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    goto :goto_15

    nop

    nop

    nop

    nop

    :cond_e
    invoke-static {v6, v15}, Leyk;->f(ILjava/io/OutputStreamWriter;)V

    :goto_15
    invoke-virtual {v15, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v14}, Lexv;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_31

    nop

    nop

    :goto_16
    const/16 v2, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    const v1, 0x1c

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v14, Lexv;

    nop

    invoke-direct {v14, v12}, Lexv;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/io/OutputStreamWriter;

    nop

    nop

    invoke-virtual {v9}, Leys;->b()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-direct {v0, v14, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget v0, v9, Leys;->b:I

    nop

    nop

    new-instance v15, Ljava/io/OutputStreamWriter;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Leys;->b()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-direct {v15, v14, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v9}, Leys;->c()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Leys;->d()Z

    move-result v3

    nop

    nop

    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    if-eq v10, v2, :cond_f

    nop

    nop

    nop

    nop

    move v7, v10

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_f
    move v7, v8

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v9}, Leys;->i()Z

    move-result v2

    nop

    const/16 v3, 0x67

    nop

    if-eqz v2, :cond_13

    nop

    nop

    nop

    invoke-virtual {v9}, Leys;->k()Z

    move-result v2

    nop

    nop

    nop

    invoke-virtual {v9}, Leys;->j()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v2, v4

    nop

    nop

    if-nez v2, :cond_12

    nop

    nop

    nop

    iget v2, v9, Leys;->b:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v4, v7, -0x1

    nop

    nop

    nop

    nop

    nop

    and-int/2addr v2, v4

    nop

    nop

    nop

    if-nez v2, :cond_11

    nop

    nop

    nop

    :cond_10
    :goto_1b
    move v6, v0

    nop

    nop

    nop

    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_11
    new-instance v0, Lexp;

    nop

    nop

    nop

    const-string v1, "Exact size must be a multiple of the Unicode element"

    nop

    nop

    nop

    invoke-direct {v0, v1, v3}, Lexp;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_12
    new-instance v0, Lexp;

    nop

    nop

    nop

    const-string v1, "Inconsistent options for exact size serialize"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1, v3}, Lexp;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    :cond_13
    invoke-virtual {v9}, Leys;->l()Z

    move-result v2

    nop

    if-eqz v2, :cond_15

    nop

    nop

    nop

    invoke-virtual {v9}, Leys;->k()Z

    move-result v0

    nop

    nop

    invoke-virtual {v9}, Leys;->j()Z

    move-result v2

    nop

    nop

    nop

    or-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_14

    nop

    :goto_1c
    move v6, v13

    nop

    nop

    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :cond_14
    new-instance v0, Lexp;

    nop

    nop

    nop

    const-string v1, "Inconsistent options for read-only packet"

    nop

    nop

    nop

    invoke-direct {v0, v1, v3}, Lexp;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_15
    invoke-virtual {v9}, Leys;->k()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_17

    nop

    nop

    nop

    invoke-virtual {v9}, Leys;->j()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_16

    nop

    nop

    goto :goto_1c

    nop

    nop

    nop

    :cond_16
    new-instance v0, Lexp;

    nop

    const-string v1, "Inconsistent options for non-packet serialize"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1, v3}, Lexp;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    nop

    :cond_17
    if-nez v0, :cond_18

    nop

    mul-int/lit16 v0, v7, 0x800

    nop

    nop

    :cond_18
    invoke-virtual {v9}, Leys;->j()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_10

    nop

    nop

    const-string v2, "http://ns.adobe.com/xap/1.0/"

    nop

    const-string v3, "Thumbnails"

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v2, v3}, Leye;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_10

    nop

    nop

    nop

    mul-int/lit16 v2, v7, 0x2710

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v9}, Leys;->k()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_19

    nop

    invoke-static {v13, v15, v9}, Leyk;->g(ILjava/io/OutputStreamWriter;Leys;)V

    const-string v0, "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>"

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    :cond_19
    invoke-static {v13, v15, v9}, Leyk;->g(ILjava/io/OutputStreamWriter;Leys;)V

    const-string v0, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\""

    nop

    nop

    nop

    invoke-virtual {v15, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {}, Lexs;->a()V

    const-string v0, "Adobe XMP Core 5.1.0-jc003"

    nop

    invoke-virtual {v15, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "\">"

    nop

    invoke-virtual {v15, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    invoke-static {v10, v15, v9}, Leyk;->g(ILjava/io/OutputStreamWriter;Leys;)V

    const-string v0, "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v15, v9}, Leyk;->h(Ljava/io/OutputStreamWriter;Leys;)V

    invoke-virtual {v9, v1}, Leyp;->h(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1e
    const/16 v0, 0x1000

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

    nop

    :goto_1f
    if-lez v0, :cond_1a

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_1a
    goto/32 :goto_32

    nop

    :goto_20
    invoke-virtual {v9, v0}, Leyp;->h(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_21
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_22
    const-string v13, "<rdf:Description rdf:about="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_23
    invoke-direct {v12, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v9, v2, v10}, Leyp;->f(IZ)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v2, v0, Leye;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_29

    nop

    nop

    :goto_27
    check-cast v11, Leye;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_28
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v11, Leye;->a:Leyh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v1, 0x40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2c
    throw v0

    nop

    nop

    :goto_2d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v0, 0x800

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2f
    throw v0

    nop

    nop

    :goto_30
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_34
    const-string v1, "The serializing service works onlywith the XMPMeta implementation of this library"

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v2, "/>"

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string v5, "</rdf:Description>"

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_37
    new-instance v9, Leys;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_39
    const/16 v4, 0x3e

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3a
    invoke-direct {v9}, Leys;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v1, "xml"

    nop

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

    :goto_3c
    new-instance v0, Lexp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v1, "Error writing to the OutputStream"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget v0, Leyk;->b:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Leyh;->s()V

    :goto_41
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_43
    move-object v11, v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method

.method private static y(I)[B
    .locals 5

    goto/32 :goto_14

    nop

    nop

    :goto_0
    shr-int/lit8 v1, p0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    aput-byte p0, v3, v0

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

    nop

    nop

    :goto_2
    int-to-byte v1, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    shr-int/lit8 v2, p0, 0x8

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

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-byte v0, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    return-object v3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    aput-byte v0, v3, v4

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

    :goto_d
    int-to-byte p0, p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    shr-int/lit8 v0, p0, 0x18

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    :goto_12
    aput-byte v2, v3, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    const v0, 0x1a

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
    aput-byte v1, v3, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    new-array v3, v3, [B

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_18
    const/4 v3, 0x4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-byte v2, v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method private static z(Lpue;)Lexq;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lexp;->printStackTrace()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

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

    nop

    :catch_0
    move-exception p0

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_7
    invoke-interface {p0, v0, v1}, Lexq;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Lpuf;->t(Ljava/util/List;)Lexq;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const v1, 0x1d

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

    :goto_d
    const-string v0, "http://ns.adobe.com/xmp/note/"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

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

    :goto_f
    goto :goto_15

    nop

    nop

    nop

    :goto_10
    :try_start_0
    invoke-interface {p0, v0, v1}, Lexq;->a(Ljava/lang/String;Ljava/lang/String;)Leyt;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Leyd;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Leyd;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    nop
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    :goto_11
    const-string v1, "HasExtendedXMP"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-static {p0, v0, v0}, Lpuf;->h(Lpue;ZZ)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    if-eqz v2, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x0

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop
.end method
