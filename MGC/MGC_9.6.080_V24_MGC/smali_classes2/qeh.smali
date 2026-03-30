.class public final Lqeh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lqek;

.field public final c:I

.field public final synthetic d:Lqat;


# direct methods
.method public constructor <init>(Lqat;Lqek;)V
    .locals 9

    goto/32 :goto_26

    nop

    nop

    :goto_0
    const/16 v3, 0x8

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1
    if-le v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v6, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    new-array v5, v4, [B

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const-string v0, "We don\'t support >2GB boxes (since we\'re using ByteBuffers)."

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_6
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    long-to-int v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Lqeh;->c:I

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

    :goto_a
    iget-object v0, p1, Lqat;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_d
    iput-object p1, p0, Lqeh;->d:Lqat;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_e
    move v6, v1

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    :goto_10
    iget v3, p2, Lqek;->b:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_12
    iget-object v7, p1, Lqat;->a:Ljava/lang/Object;

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

    :goto_13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput-byte v7, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_15
    iget-object p1, p1, Lqat;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6a

    nop

    :goto_17
    iput-object v6, p0, Lqeh;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-static {v3}, Lrrf;->x(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    const-string v5, "Box size too small"

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1a
    move v4, v2

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, p0, Lqeh;->c:I

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1e
    iget p1, p2, Lqek;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move v4, v2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v3

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_23
    add-int/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_24
    new-instance p1, Lqek;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_25
    iget v0, p2, Lqek;->a:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_26
    const v0, 0xb

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_27
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_28
    if-ne v0, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_3
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 p1, 0x10

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1, p1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v7, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput p1, p0, Lqeh;->c:I

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int/2addr v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_31
    if-ltz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v8, p2, Lqek;->a:I

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

    :goto_33
    invoke-static {v4}, Lrrf;->x(Z)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_35
    move v4, v1

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v3, v2

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_38
    iget v1, p2, Lqek;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_39
    iget p2, p2, Lqek;->a:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3a
    invoke-static {v4, v5}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3e
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v3, "Signalled box length %d does not fit length of %d"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_40
    iput-object p1, p0, Lqeh;->b:Lqek;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {p1, p2, v0}, Lqek;-><init>(II)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_f

    nop

    :goto_45
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_47
    const-wide/32 v5, 0x7fffffff

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v0, Ljava/nio/ByteBuffer;

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

    :goto_49
    new-instance v6, Ljava/lang/String;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4a
    move p1, v2

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_4b
    if-gtz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int/2addr p2, v1

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-ge v0, v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-eq v5, v4, :cond_7

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_69

    nop

    :goto_50
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_36

    nop

    nop

    :goto_52
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    cmp-long p1, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_58
    goto :goto_5d

    nop

    :goto_59
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto :goto_66

    nop

    nop

    :goto_5b
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_5c
    iput v3, p0, Lqeh;->c:I

    nop

    nop

    :goto_5d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5e
    if-eq v0, v2, :cond_8

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

    :cond_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    nop

    :goto_60
    add-int/2addr v8, v6

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

    :goto_61
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_65
    move v3, v1

    nop

    :goto_66
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_67
    sub-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_68
    move p1, v1

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_42

    nop

    :goto_6b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method
