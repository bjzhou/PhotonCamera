.class public final Lfoa;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Map;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v4, v5

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, v0}, Lfob;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_33

    nop

    nop

    :goto_f
    sput-object v0, Lfoa;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

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

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_19
    const/16 v5, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    :goto_1b
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v5, 0x7f

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_1f
    sput-object v0, Lfoa;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v1, Ljava/util/HashMap;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_21
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v2, :cond_2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_24
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_25
    const-string v2, "User-Agent"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    if-eq v4, v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x11

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-le v4, v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/16 v4, 0x3f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v0, "http.agent"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_34
    const/16 v5, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lt v3, v1, :cond_5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lt v4, v5, :cond_6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v2, Lfob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method
