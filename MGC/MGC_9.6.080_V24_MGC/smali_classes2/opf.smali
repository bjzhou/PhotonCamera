.class public final Lopf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const-string v1, "MM-dd HH:mm:ss"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "MM-dd HH:mm:ss.SSS"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    new-instance v0, Ljava/text/SimpleDateFormat;

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

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v1, 0x10

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

    nop

    :goto_e
    sput-object v0, Lopf;->a:Ljava/lang/StringBuilder;

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x2

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

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_13
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v1, 0x21

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public static a(JLjava/lang/StringBuilder;)V
    .locals 9

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "d"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3
    div-long v4, p0, v2

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

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_35

    nop

    :goto_5
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p0, "ms"

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_7
    div-long v4, p0, v2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/high16 v5, -0x8000000000000000L

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_a
    move v4, v3

    nop

    :goto_b
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v2, 0x3e8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_e
    cmp-long v2, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_f
    if-gez v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-long/2addr p0, v2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    cmp-long v2, p0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_14
    div-long v7, p0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-wide/32 v2, 0xea60

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_17
    cmp-long v4, p0, v2

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

    :goto_18
    const-string v2, "-"

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_19
    cmp-long v4, p0, v2

    nop

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

    :goto_1a
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v4, "m"

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1c
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1d
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    :goto_1e
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_20
    rem-long/2addr p0, v2

    nop

    :goto_21
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-wide/32 p0, 0x18c5c00

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-long/2addr p0, v2

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-gez v4, :cond_3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_28
    cmp-long v0, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_29
    neg-long p0, p0

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

    :goto_2a
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    :goto_2b
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2c
    if-ne v3, v4, :cond_4

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    cmp-long v2, p0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v4, "s"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    rem-long/2addr p0, v5

    nop

    :goto_33
    goto/32 :goto_2c

    nop

    nop

    :goto_34
    div-long v4, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_47

    nop

    :goto_36
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-gtz v0, :cond_6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    :goto_39
    cmp-long v4, p0, v2

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

    :goto_3a
    if-gez v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    :goto_3b
    const-wide/32 v2, 0x36ee80

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3c
    const-string v4, "h"

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

    :goto_3d
    const-wide p0, 0x7fffffffffffffffL

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string p0, "0s"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-gez v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_14

    nop

    nop

    :goto_42
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_43
    const-wide/32 v5, 0x5265c00

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-ltz v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    :goto_4b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-int/lit8 v3, v3, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_22

    nop

    nop

    nop

    nop
.end method
