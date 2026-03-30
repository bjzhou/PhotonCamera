.class public final Lpfu;
.super Lpfz;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final f:[B

.field private static final g:[B


# instance fields
.field private final h:Lpfl;

.field private final i:Lcom/google/android/libraries/camera/exif/ExifInterface;

.field private j:S

.field private k:S

.field private l:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lpfu;->f:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    new-array v0, v0, [B

    nop

    fill-array-data v0, :array_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x6

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
    new-array v0, v0, [B

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lpfu;->g:[B

    nop

    nop

    goto/32 :goto_5

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

    :array_0
    .array-data 1
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x49t
        0x43t
        0x43t
        0x5ft
        0x50t
        0x52t
        0x4ft
        0x46t
        0x49t
        0x4ct
        0x45t
        0x0t
    .end array-data

    :goto_6
    const/16 v0, 0xc

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
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;Lpfl;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpfu;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lpfj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lpfu;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, v0}, Lpfz;-><init>(Ljava/io/OutputStream;Lpfj;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lpfj;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lpfu;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

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

    :goto_7
    iput-object p3, p0, Lpfu;->h:Lpfl;

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

    :goto_8
    return-void

    nop

    nop

    :goto_9
    iput-short p1, p0, Lpfu;->j:S

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-short p1, p0, Lpfu;->k:S

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method private static k(IS)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

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

    :goto_2
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_7
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "Negative section length: section length read was 0x%02X%02X"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    shr-int/lit8 p0, p1, 0x8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    if-gez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_c
    throw v0

    nop

    :goto_d
    and-int/lit16 p1, p1, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method private static l(Lpft;Lpfx;)V
    .locals 5

    goto/32 :goto_26

    nop

    nop

    :goto_0
    aget-object v2, v2, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6
    goto/32 :goto_37

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput-byte v1, v0, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2}, Lpft;->c(S)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v3}, Lpfx;->write([B)V

    :goto_b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v3, 0xa

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x1

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

    :goto_f
    invoke-virtual {p1, v2}, Lpfx;->b(S)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_12
    iget p0, p0, Lpft;->d:I

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_13
    iget v2, p0, Lpft;->d:I

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

    :goto_14
    if-eq v2, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v3}, Lpfx;->a(I)V

    goto/32 :goto_4e

    nop

    nop

    :goto_16
    goto/16 :goto_4

    nop

    :goto_17
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v2, [Lpch;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0}, Lpfx;->write([B)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-wide v3, v2, Lpch;->a:J

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq v0, v4, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    iget-short v0, p0, Lpft;->b:S

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    if-ne v2, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v0, v4, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v2, v2, -0x1

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

    :goto_25
    const-string v0, "Cannot get BYTE value from "

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_26
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_27
    long-to-int v2, v2

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    nop

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_4

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    :goto_2c
    iget-object p0, p0, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2d
    if-lt v1, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v1}, Lpft;->b(I)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_31
    const-string v0, "Cannot get RATIONAL value from "

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    long-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_a

    nop

    nop

    :goto_35
    new-array v3, v2, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :goto_37
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    long-to-int v2, v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_39
    array-length v2, v0

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

    :goto_3a
    throw p1

    nop

    nop

    :goto_3b
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, v0}, Lpfx;->write([B)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3d
    if-gtz v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, v1}, Lpft;->b(I)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3f
    if-lt v1, v0, :cond_7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_40
    iget-short v2, p0, Lpft;->b:S

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

    :goto_41
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p1, v2}, Lpfx;->a(I)V

    goto/32 :goto_1c

    nop

    nop

    :goto_43
    invoke-virtual {p1, v1}, Lpfx;->write(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v2, p0, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_46
    const/4 v4, 0x7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_48
    iget v0, p0, Lpft;->d:I

    nop

    nop

    :goto_49
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget v0, p0, Lpft;->d:I

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4c
    iget v0, p0, Lpft;->d:I

    nop

    nop

    :goto_4d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-wide v2, v2, Lpch;->b:J

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4f
    invoke-static {v0}, Lpft;->c(S)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_50
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_51
    if-eq v2, p0, :cond_8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_52
    int-to-short v2, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const v1, 0x16

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_58
    iget-object v0, p0, Lpft;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-lt v1, v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1, v2}, Lpfx;->a(I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_4b

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    long-to-int v3, v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final m(Lpfw;I)I
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    :goto_2
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/16 :goto_13

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v0, v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Lpft;->a()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    if-lt v0, v1, :cond_0

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

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-int/lit8 v0, v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lpfw;->d()[Lpft;

    move-result-object p0

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

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_d
    array-length v1, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    add-int/2addr p1, v2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    iput p1, v2, Lpft;->g:I

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

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    :goto_17
    if-gt v3, v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    :goto_18
    aget-object v2, p0, v0

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

    :goto_19
    const/4 v4, 0x4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Lpft;->a()I

    move-result v2

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

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lpfw;->a()I

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

    :goto_1d
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private static final n(Lpfw;Lpfx;)V
    .locals 7

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v5, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Lpfx;->a(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v2, v2, 0x1

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

    :goto_3
    invoke-virtual {p1, v6}, Lpfx;->b(S)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    goto/32 :goto_23

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget v4, v5, Lpft;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v2}, Lpfx;->write(I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v5, p1}, Lpfu;->l(Lpft;Lpfx;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v4}, Lpfx;->a(I)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Lpft;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-gt v6, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    aget-object v5, v0, v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    aget-object v1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v1, p1}, Lpfu;->l(Lpft;Lpfx;)V

    :goto_17
    goto/32 :goto_2

    nop

    nop

    :goto_18
    invoke-virtual {v5}, Lpft;->a()I

    move-result v5

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_19
    goto/16 :goto_3a

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3b

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1c
    if-lt v5, v4, :cond_2

    nop

    nop

    goto/32 :goto_1a

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

    nop

    :goto_1d
    move v3, v2

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    array-length p0, v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v6, v5, Lpft;->d:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lt v3, v1, :cond_3

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

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lpfw;->d()[Lpft;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_24
    if-gt v3, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    :goto_25
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x10

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_27
    iget-short v6, v5, Lpft;->a:S

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_28
    goto :goto_20

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v5}, Lpft;->a()I

    move-result v6

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

    nop

    :goto_2b
    if-nez v1, :cond_5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v6}, Lpfx;->a(I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    :goto_2e
    int-to-short v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2f
    invoke-virtual {p1, v2}, Lpfx;->b(S)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sub-int/2addr v4, v5

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v6}, Lpfx;->b(S)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lt v2, p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_33
    array-length v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_34
    iget p0, p0, Lpfw;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_b

    nop

    nop

    :goto_39
    move v5, v2

    nop

    :goto_3a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3c
    iget-short v6, v5, Lpft;->b:S

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

    nop

    :goto_3d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(I)I
    .locals 17

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_2
    add-int/lit8 v3, v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    :goto_3
    iget-object v2, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_7
    invoke-virtual {v0, v6}, Lpfz;->b(I)S

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    :goto_a
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v11, v3}, Lpfw;-><init>(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v1, v10, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v10}, Lpft;->a()I

    move-result v11

    nop

    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_270

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v11, v2}, Lpfl;->b(I)Lpfw;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_290

    nop

    nop

    nop

    nop

    :goto_10
    new-array v3, v4, [B

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Lpfz;->i(I)V

    goto/32 :goto_1dd

    nop

    nop

    :goto_12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a5

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v11}, Lpfl;->g()Z

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v11, v0, Lpfu;->h:Lpfl;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v3}, Lpfz;->b(I)S

    move-result v1

    nop

    goto/32 :goto_1ef

    nop

    nop

    :goto_16
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v4, Lpft;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    :goto_19
    iget-object v15, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v4}, Lpfz;->h(S)V

    goto/32 :goto_27c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, v0, Lpfu;->l:I

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v11, v3}, Lpfl;->b(I)Lpfw;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    :goto_1f
    iget-object v4, v1, Lpfl;->d:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_20
    new-instance v0, Ljava/io/IOException;

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_21
    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_2

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18e

    nop

    :goto_24
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_292

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_231

    nop

    nop

    nop

    :goto_25
    iget-object v13, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v11, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :cond_4
    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    throw v0

    nop

    nop

    :goto_29
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v10, :cond_5

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

    :cond_5
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    :goto_2c
    iget-short v1, v0, Lpfu;->j:S

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_2d
    const/4 v7, 0x0

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :goto_2e
    iput v1, v0, Lpfz;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v10, v11}, Lpfw;->b(S)Lpft;

    move-result-object v10

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v11, v13}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lpft;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aput-wide v12, v5, v11

    nop

    nop

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

    :goto_34
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_263

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v7, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v10, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    :goto_3a
    invoke-super/range {p0 .. p0}, Lpfz;->d()V

    goto/32 :goto_29d

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v10}, Lpft;->a()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v1}, Lpfz;->h(S)V

    goto/32 :goto_83

    nop

    nop

    :goto_3d
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v5}, Lpfz;->b(I)S

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23a

    nop

    nop

    :goto_40
    iget-object v11, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_41
    iget v1, v0, Lpfu;->l:I

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_42
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v10, v7}, Lpfw;->c(S)V

    :goto_44
    goto/32 :goto_1eb

    nop

    nop

    :goto_45
    if-ne v1, v3, :cond_6

    nop

    nop

    goto/32 :goto_108

    nop

    :cond_6
    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v10, v11}, Lpfw;->e(Lpft;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v10, v0, Lpfu;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_232

    nop

    nop

    :goto_48
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_243

    nop

    nop

    nop

    :goto_49
    iget v2, v1, Lpfj;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4a
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4b
    const-string v1, "Exif header is too large (>65535), even after pruning non-essential tags!"

    nop

    nop

    goto/32 :goto_212

    nop

    nop

    :goto_4c
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_216

    nop

    :cond_7
    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, v0, Lpfu;->h:Lpfl;

    nop

    nop

    goto/32 :goto_222

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v0, Ljava/io/IOException;

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    int-to-char v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_51
    const-string v15, "Removed thumbnail with size "

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    :goto_52
    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    :goto_54
    if-le v3, v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :cond_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_55
    array-length v12, v12

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_15f

    nop

    :goto_57
    goto/32 :goto_24e

    nop

    nop

    :goto_58
    iget-object v12, v0, Lpfu;->h:Lpfl;

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v10, :cond_9

    nop

    goto/32 :goto_28f

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b6

    nop

    nop

    :goto_5a
    invoke-virtual {v14, v15}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lpft;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_44

    nop

    :goto_5c
    goto/32 :goto_2ac

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0, v1}, Lpfz;->h(S)V

    goto/32 :goto_23e

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v5, v0}, Lpfx;->write([B)V

    goto/32 :goto_77

    nop

    nop

    :goto_5f
    invoke-virtual {v1, v4}, Lpfl;->j(Lpft;)V

    goto/32 :goto_19d

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v12}, Lpfl;->a()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_61
    sget v12, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_224

    nop

    nop

    nop

    :goto_63
    if-nez v13, :cond_a

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_64
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_102

    nop

    nop

    nop

    :goto_66
    if-nez v10, :cond_b

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :cond_b
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_68
    new-instance v15, Lpft;

    nop

    nop

    nop

    nop

    goto/32 :goto_287

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v14, v0, Lpfu;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    :goto_6a
    if-nez v11, :cond_c

    nop

    nop

    goto/32 :goto_26c

    nop

    :cond_c
    goto/32 :goto_22c

    nop

    nop

    :goto_6b
    array-length v15, v15

    nop

    nop

    nop

    goto/32 :goto_26f

    nop

    nop

    nop

    :goto_6c
    move v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_6d
    add-int/lit8 v1, v1, -0x4

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v10, v4}, Lpfl;->b(I)Lpfw;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    :goto_6f
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_70
    return v6

    nop

    nop

    :goto_71
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_284

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v10, v13}, Lpfw;->e(Lpft;)V

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_225

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_216

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_79
    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e1

    nop

    nop

    :goto_7a
    move-object/from16 v8, v16

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_17c

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_260

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v2, v0, Lpfu;->h:Lpfl;

    nop

    nop

    goto/32 :goto_277

    nop

    nop

    nop

    :goto_7e
    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    nop

    nop

    nop

    nop

    goto/32 :goto_219

    nop

    nop

    nop

    nop

    :goto_7f
    if-lt v6, v2, :cond_d

    nop

    goto/32 :goto_292

    nop

    :cond_d
    goto/32 :goto_282

    nop

    nop

    :goto_80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_266

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-nez v2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    :cond_e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v11, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a0

    nop

    nop

    :goto_83
    iget-short v1, v0, Lpfu;->k:S

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_84
    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    new-instance v11, Lpfw;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_86
    invoke-static {v10, v7}, Lpfu;->m(Lpfw;I)I

    move-result v5

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static {v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_88
    throw v0

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_269

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    move v2, v6

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    aput-wide v7, v11, v12

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_8e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28e

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v8, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/32 :goto_188

    nop

    nop

    nop

    :goto_90
    invoke-super/range {p0 .. p0}, Lpfz;->d()V

    goto/32 :goto_124

    nop

    nop

    nop

    :goto_91
    goto :goto_8c

    nop

    nop

    :goto_92
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_93
    invoke-static {v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_94
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    :goto_95
    if-ne v11, v14, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :cond_f
    goto/32 :goto_241

    nop

    nop

    :goto_96
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iput v2, v1, Lpfj;->b:I

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_98
    invoke-virtual {v10, v6}, Lpfl;->b(I)Lpfw;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_99
    iget-object v5, v0, Lpfu;->h:Lpfl;

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static {v2, v5}, Lpfu;->n(Lpfw;Lpfx;)V

    :goto_9b
    goto/32 :goto_29c

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v10, v12}, Lpfw;->b(S)Lpft;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_267

    nop

    nop

    :goto_9e
    const-string v4, " of size "

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-eqz v11, :cond_10

    nop

    goto/32 :goto_7c

    nop

    nop

    :cond_10
    goto/32 :goto_294

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-static {v3, v5}, Lpfu;->n(Lpfw;Lpfx;)V

    goto/32 :goto_194

    nop

    nop

    nop

    :goto_a2
    iget-boolean v1, v0, Lpfu;->m:Z

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_a3
    const/16 v10, -0x27

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

    :goto_a4
    if-eq v7, v8, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_a5
    const/4 v14, 0x0

    nop

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

    :goto_a6
    new-instance v5, Lpfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    :goto_a7
    return v6

    nop

    nop

    :goto_a8
    goto/32 :goto_122

    nop

    nop

    nop

    :goto_a9
    if-nez v11, :cond_12

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v14, v11, v15}, Lpfl;->h(SI)Z

    move-result v11

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-short v11, v10, Lpft;->a:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    :goto_ad
    invoke-virtual {v13, v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lpft;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_ae
    invoke-static {v1, v2}, Lpfu;->k(IS)V

    goto/32 :goto_160

    nop

    nop

    :goto_af
    if-ne v1, v4, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_28b

    nop

    :cond_13
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v10, v11}, Lpfl;->b(I)Lpfw;

    move-result-object v10

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    if-ne v1, v5, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_238

    nop

    nop

    :cond_14
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-static {v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-static {v11, v7}, Lpfu;->m(Lpfw;I)I

    move-result v7

    nop

    :goto_b5
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_b6
    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const/16 v4, -0x1f

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

    :goto_b8
    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v11, v10}, Lpfl;->d(Lpfw;)V

    :goto_ba
    goto/32 :goto_21b

    nop

    nop

    nop

    :goto_bb
    move v5, v6

    nop

    :goto_bc
    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v10, v7}, Lpfw;->c(S)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v10, v5}, Lpfl;->b(I)Lpfw;

    move-result-object v10

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v1, v12, v13}, Lpfl;->h(SI)Z

    goto/32 :goto_2a4

    nop

    nop

    nop

    :goto_c0
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    const/16 v9, 0x8

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    sget-object v4, Lpfu;->f:[B

    nop

    nop

    goto/32 :goto_289

    nop

    nop

    :goto_c3
    move-object v10, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    :goto_c4
    goto/16 :goto_bc

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v10}, Lpft;->a()I

    move-result v4

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v10, v5}, Lpft;->k([J)Z

    :goto_c8
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_c9
    iput-short v1, v0, Lpfu;->k:S

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_ca
    if-eqz v10, :cond_15

    nop

    nop

    nop

    goto/32 :goto_2a1

    nop

    nop

    :cond_15
    goto/32 :goto_1c0

    nop

    nop

    nop

    :goto_cb
    and-int/lit16 v7, v1, -0x100

    nop

    nop

    nop

    nop

    goto/32 :goto_2a7

    nop

    nop

    nop

    :goto_cc
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_27b

    nop

    nop

    :goto_cd
    const-string v4, "Removed tag "

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iput v1, v0, Lpfu;->l:I

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-direct {v10, v5}, Lpfw;-><init>(I)V

    goto/32 :goto_288

    nop

    nop

    :goto_d0
    iget-object v10, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v0, v1}, Lpfz;->h(S)V

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_d2
    if-nez v5, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :cond_16
    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v10, v13}, Lpfw;->e(Lpft;)V

    goto/32 :goto_1e4

    nop

    nop

    :goto_d4
    aput-object v14, v11, v15

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

    :goto_d5
    invoke-static {v10, v7}, Lpfu;->m(Lpfw;I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_d7
    move-object/from16 v16, v8

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v11, v0, Lpfu;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v2, v3}, Lpfl;->b(I)Lpfw;

    move-result-object v2

    nop

    goto/32 :goto_293

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iput v7, v5, Lpfw;->c:I

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-static {v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    throw v0

    nop

    nop

    nop

    :goto_dd
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_de
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_df
    goto/32 :goto_12e

    nop

    nop

    :goto_e0
    invoke-virtual {v5, v9}, Lpfx;->a(I)V

    goto/32 :goto_29e

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-static {v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object v5, v5, Lpfl;->b:[B

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    :goto_e5
    if-nez v11, :cond_17

    nop

    goto/32 :goto_dd

    nop

    nop

    :cond_17
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_e6
    iget v15, v10, Lpft;->e:I

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    const/4 v5, 0x5

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v5}, Lpfl;->a()I

    move-result v5

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_e9
    const v11, 0xffff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_ea
    if-nez v2, :cond_18

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_24b

    nop

    nop

    nop

    nop

    :goto_eb
    throw v0

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_ed
    if-eq v1, v8, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    :cond_19
    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_88

    nop

    nop

    :goto_ef
    iget-object v11, v0, Lpfu;->h:Lpfl;

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v10, v11}, Lpfw;->e(Lpft;)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-static {v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_f2
    move v7, v5

    nop

    nop

    nop

    :goto_f3
    goto/32 :goto_253

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_203

    nop

    nop

    :goto_f5
    iget-object v4, v1, Lpfl;->d:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    goto/16 :goto_c8

    nop

    nop

    nop

    nop

    :goto_f7
    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    :goto_f8
    return v6

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    iget-object v13, v0, Lpfu;->h:Lpfl;

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-static {v4, v5}, Lpfu;->n(Lpfw;Lpfx;)V

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    add-int/lit8 v1, v1, -0x2

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v13, v11}, Lpfl;->d(Lpfw;)V

    :goto_fe
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v11}, Lpfl;->a()I

    move-result v11

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_100
    if-nez v14, :cond_1a

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_1a
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v0, v2}, Lpfz;->g([B)V

    goto/32 :goto_22e

    nop

    nop

    :goto_102
    if-eq v1, v8, :cond_1b

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_104
    iput v1, v0, Lpfu;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    :goto_105
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_106
    const/16 v2, 0x12a

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_107
    return v4

    nop

    nop

    :goto_108
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_109
    new-instance v10, Lpfw;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {v0, v4}, Lpfz;->h(S)V

    :goto_10b
    goto/32 :goto_21a

    nop

    nop

    nop

    :goto_10c
    iget-object v11, v0, Lpfu;->h:Lpfl;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {v10, v11}, Lpfw;->c(S)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_25d

    nop

    nop

    :goto_10f
    if-le v7, v11, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_110
    if-nez v13, :cond_1d

    nop

    nop

    goto/32 :goto_264

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_129

    nop

    nop

    nop

    :goto_111
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    if-nez v7, :cond_1e

    nop

    goto/32 :goto_df

    nop

    :cond_1e
    goto/32 :goto_218

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    iget-object v13, v0, Lpfu;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_114
    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_115
    if-eqz v10, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_23d

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_116
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    if-lt v5, v10, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_118
    iget-object v10, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    :goto_119
    goto/16 :goto_1b7

    nop

    nop

    :goto_11a
    goto/32 :goto_279

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v13, v4}, Lpfl;->b(I)Lpfw;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v11, v10}, Lpfw;->e(Lpft;)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    const/4 v3, 0x2

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    const/4 v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-static {v12}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_120
    if-nez v11, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :cond_21
    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v10, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_122
    invoke-super {v0, v4, v2}, Lpfz;->c(II)V

    goto/32 :goto_90

    nop

    nop

    :goto_123
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_124
    iget-object v1, v0, Lpfz;->b:Lpfj;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_221

    nop

    nop

    :goto_126
    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    :goto_127
    aget-byte v2, v3, v1

    nop

    nop

    goto/32 :goto_276

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-direct/range {v10 .. v15}, Lpft;-><init>(SSIIZ)V

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_129
    iget-object v13, v0, Lpfu;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_285

    nop

    nop

    nop

    nop

    :goto_12a
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-static {v5, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_242

    nop

    nop

    :goto_12c
    check-cast v11, Lpft;

    nop

    goto/32 :goto_1d8

    nop

    nop

    :goto_12d
    invoke-static {v1}, Lpuq;->bH(S)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    new-instance v5, Lvl;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_12f
    const/16 v4, 0x4949

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_130
    invoke-static {v5, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    iget-object v11, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23c

    nop

    nop

    nop

    :goto_132
    invoke-static {v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v11

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    :goto_133
    invoke-virtual {v10, v7}, Lpfw;->c(S)V

    goto/32 :goto_52

    nop

    nop

    :goto_134
    invoke-virtual {v5}, Lpfl;->f()Z

    move-result v5

    nop

    goto/32 :goto_23b

    nop

    nop

    :goto_135
    invoke-virtual {v10, v5}, Lpfw;->b(S)Lpft;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_136
    if-lt v1, v5, :cond_22

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v0, v1}, Lpfz;->j(I)V

    :goto_138
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_139
    invoke-static {v1, v2}, Lpfu;->k(IS)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13a
    iget-object v10, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_271

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    add-int/lit8 v1, v1, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_13d
    if-nez v10, :cond_23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    :cond_23
    goto/32 :goto_298

    nop

    nop

    nop

    nop

    :goto_13e
    invoke-static {v1, v3}, Lpfu;->k(IS)V

    goto/32 :goto_2a3

    nop

    nop

    nop

    nop

    :goto_13f
    iget-short v1, v0, Lpfu;->k:S

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_140
    invoke-virtual {v10, v7}, Lpft;->g(I)Z

    goto/32 :goto_251

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    sget-object v2, Lpfu;->g:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_142
    iget-short v1, v0, Lpfu;->k:S

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_143
    move-object v5, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    :goto_144
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    :goto_145
    iget v1, v0, Lpfu;->l:I

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    invoke-virtual {v11}, Lpfl;->f()Z

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v1}, Lpfl;->c()Ljava/util/List;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_246

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    invoke-static {v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_149
    const-string v2, "ICC profile does not fit in one marker segment!"

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :goto_14a
    goto/16 :goto_264

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    goto/32 :goto_195

    nop

    nop

    nop

    :goto_14c
    int-to-char v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26a

    nop

    nop

    :goto_14d
    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    iget-object v12, v12, Lpfl;->b:[B

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v0, v1}, Lpfz;->h(S)V

    goto/32 :goto_1d7

    nop

    nop

    nop

    :goto_151
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1fe

    nop

    nop

    nop

    :goto_152
    invoke-static {v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_153
    const/16 v7, -0x1f

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    :goto_154
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_220

    nop

    nop

    nop

    nop

    :goto_155
    const/16 v4, 0x4d4d

    nop

    goto/32 :goto_295

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    new-array v11, v11, [J

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    :goto_157
    invoke-virtual {v0, v2}, Lpfz;->h(S)V

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    iget-object v1, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    nop

    nop

    nop

    :goto_159
    invoke-virtual {v0, v5}, Lpfz;->b(I)S

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    if-lt v2, v3, :cond_24

    nop

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_15c
    array-length v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_15d
    if-eqz v5, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_15e
    move v11, v6

    nop

    nop

    :goto_15f
    goto/32 :goto_1af

    nop

    nop

    nop

    :goto_160
    iget v1, v0, Lpfu;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27a

    nop

    nop

    :goto_161
    int-to-char v1, v1

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_162
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_163
    if-eq v4, v5, :cond_26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_155

    nop

    nop

    :goto_164
    iget-short v12, v11, Lpft;->a:S

    nop

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    :goto_165
    if-eqz v10, :cond_27

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_109

    nop

    nop

    :goto_166
    goto/16 :goto_10b

    nop

    :goto_167
    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_168
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    invoke-virtual {v0, v1}, Lpfz;->h(S)V

    goto/32 :goto_1a4

    nop

    nop

    :goto_16a
    sget v13, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    :goto_16b
    iget v5, v1, Lpfj;->c:I

    nop

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

    nop

    :goto_16c
    add-int/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    :goto_16d
    if-gt v7, v11, :cond_28

    nop

    goto/32 :goto_c5

    nop

    :cond_28
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    iget-object v15, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    goto/32 :goto_245

    nop

    nop

    nop

    nop

    :goto_16f
    iget-object v11, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    iput-short v1, v0, Lpfu;->j:S

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    :goto_172
    sget v13, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_173
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    nop

    :goto_174
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_175
    iput v1, v0, Lpfu;->l:I

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    nop

    nop

    :goto_176
    const/16 v8, -0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_177
    goto/16 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_178
    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    :goto_179
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17a
    iget-object v14, v0, Lpfu;->h:Lpfl;

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    sub-int/2addr v7, v4

    nop

    nop

    :goto_17c
    goto/32 :goto_144

    nop

    nop

    :goto_17d
    iget-object v4, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a8

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-virtual {v10}, Lpft;->a()I

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_28c

    nop

    nop

    :goto_17f
    int-to-long v7, v15

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_180
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15c

    nop

    nop

    :goto_181
    invoke-virtual {v7}, Lpfl;->f()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_182
    new-array v5, v5, [J

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    :goto_183
    iget-object v5, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_184
    invoke-virtual {v0, v1}, Lpfz;->h(S)V

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    :goto_185
    invoke-direct {v10, v5}, Lpfw;-><init>(I)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_186
    if-ne v11, v14, :cond_29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_187
    invoke-virtual {v11, v12}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lpft;

    move-result-object v11

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_188
    iget-object v5, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    nop

    :goto_189
    invoke-virtual {v13, v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lpft;

    move-result-object v13

    nop

    nop

    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_140

    nop

    nop

    :goto_18b
    if-ne v1, v2, :cond_2a

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_291

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    invoke-virtual {v0, v1}, Lpfz;->h(S)V

    goto/32 :goto_142

    nop

    nop

    :goto_18e
    goto/32 :goto_5

    nop

    :goto_18f
    goto/32 :goto_1ec

    nop

    nop

    nop

    :goto_190
    invoke-virtual {v5, v3}, Lpfx;->write([B)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_191
    invoke-direct {v5, v7}, Lvl;-><init>(I)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_192
    if-nez v11, :cond_2b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_254

    nop

    nop

    nop

    nop

    nop

    :goto_193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    :goto_194
    iget-object v3, v0, Lpfu;->h:Lpfl;

    nop

    nop

    goto/32 :goto_2a9

    nop

    nop

    nop

    :goto_195
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    goto/32 :goto_265

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_196
    invoke-static {v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v7

    nop

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    :goto_197
    if-eqz v11, :cond_2c

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    :cond_2c
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_198
    if-lt v1, v4, :cond_2d

    nop

    nop

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_127

    nop

    nop

    :goto_199
    iget-object v3, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    :goto_19a
    invoke-virtual {v10, v13}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lpft;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26e

    nop

    nop

    nop

    :goto_19b
    move v2, v6

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    goto/32 :goto_286

    nop

    nop

    :goto_19d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_19e
    if-lt v11, v12, :cond_2e

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_2e
    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    :goto_1a0
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_262

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    invoke-static {v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v11

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_1a2
    new-instance v10, Lpfw;

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    :goto_1a3
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto/32 :goto_272

    nop

    nop

    nop

    nop

    :goto_1a4
    invoke-virtual {v0, v3}, Lpfz;->g([B)V

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    int-to-long v12, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1a6
    move-object/from16 v16, v8

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_1a7
    invoke-virtual {v15}, Lpfl;->a()I

    move-result v15

    nop

    nop

    nop

    nop

    goto/32 :goto_28d

    nop

    nop

    nop

    nop

    :goto_1a8
    if-nez v10, :cond_2f

    nop

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_47

    nop

    nop

    :goto_1a9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_fb

    nop

    nop

    :goto_1aa
    throw v0

    nop

    :goto_1ab
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    invoke-virtual {v10, v7}, Lpfw;->c(S)V

    goto/32 :goto_200

    nop

    nop

    nop

    :goto_1ae
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_1af
    iget-object v12, v0, Lpfu;->h:Lpfl;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_1b0
    return v4

    nop

    nop

    :goto_1b1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b2
    if-ne v11, v14, :cond_30

    nop

    goto/32 :goto_17c

    nop

    :cond_30
    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :goto_1b3
    if-nez v2, :cond_31

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_9a

    nop

    nop

    :goto_1b4
    invoke-virtual {v10, v11}, Lpfw;->c(S)V

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_1b6
    move v12, v6

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    goto/32 :goto_19

    nop

    nop

    :goto_1b8
    if-eqz v12, :cond_32

    nop

    nop

    nop

    nop

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_226

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    invoke-virtual {v2}, Lpfl;->f()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_1bb
    goto/16 :goto_44

    nop

    :goto_1bc
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1bd
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    :goto_1be
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b5

    nop

    nop

    :goto_1bf
    and-int/lit16 v1, v1, 0xff

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_1c0
    new-instance v10, Lpfw;

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    iget-object v12, v0, Lpfu;->h:Lpfl;

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_1c2
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    :goto_1c3
    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    invoke-virtual {v0, v2}, Lpfz;->h(S)V

    :goto_1c5
    goto/32 :goto_106

    nop

    nop

    :goto_1c6
    invoke-static {v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    :goto_1c7
    const/16 v7, -0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c8
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    iget-object v7, v5, Lpfx;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    :goto_1ca
    invoke-virtual {v0, v1}, Lpfz;->i(I)V

    goto/32 :goto_a7

    nop

    nop

    :goto_1cb
    const-string v12, "No definition for crucial exif tag: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    :goto_1cc
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1cd
    invoke-virtual {v2, v3}, Lpfl;->b(I)Lpfw;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_268

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ce
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_1cf
    throw v0

    nop

    nop

    nop

    :goto_1d0
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_1d1
    iget-short v1, v0, Lpfu;->j:S

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d2
    invoke-static {v5, v9}, Lpfu;->m(Lpfw;I)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_281

    nop

    nop

    :goto_1d3
    invoke-virtual {v0, v1}, Lpfz;->j(I)V

    goto/32 :goto_28a

    nop

    nop

    :goto_1d4
    if-lt v2, v0, :cond_33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_214

    nop

    nop

    nop

    :goto_1d5
    sget v12, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_1d7
    iget v1, v0, Lpfu;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    iget-object v12, v11, Lpft;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    int-to-short v2, v2

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    sget v15, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1db
    invoke-virtual {v1}, Lpfj;->a()I

    move-result v3

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    nop

    :goto_1dc
    invoke-virtual {v0, v2}, Lpfz;->h(S)V

    goto/32 :goto_18c

    nop

    nop

    :goto_1dd
    goto/16 :goto_138

    nop

    nop

    nop

    :goto_1de
    goto/32 :goto_1c

    nop

    nop

    :goto_1df
    iget-short v11, v10, Lpft;->a:S

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_1e0
    invoke-virtual {v11, v13}, Lcom/google/android/libraries/camera/exif/ExifInterface;->j(I)Lpft;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_1e1
    invoke-virtual {v0, v4}, Lpfz;->h(S)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    invoke-virtual {v10, v14}, Lpfw;->e(Lpft;)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e5
    add-int/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    :goto_1e7
    invoke-direct {v10, v6}, Lpfw;-><init>(I)V

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e8
    const-string v12, "CAM_ExifTransFSM"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    :goto_1e9
    iput-boolean v6, v0, Lpfu;->m:Z

    nop

    nop

    nop

    :goto_1ea
    goto/32 :goto_237

    nop

    nop

    nop

    :goto_1eb
    iget-object v7, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    :goto_1ec
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    :goto_1ed
    move v1, v6

    nop

    nop

    nop

    :goto_1ee
    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :goto_1ef
    iput-short v1, v0, Lpfu;->k:S

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1f0
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_1f1
    iget-object v5, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    goto/32 :goto_261

    nop

    nop

    nop

    :goto_1f2
    iget-short v1, v0, Lpfu;->j:S

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    :goto_1f3
    invoke-virtual {v7}, Lpfl;->c()Ljava/util/List;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_227

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f5
    shr-int/2addr v1, v9

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    :goto_1f6
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_80

    nop

    nop

    :goto_1f7
    move v15, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    invoke-virtual {v3}, Lpfl;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f9
    iget v1, v0, Lpfu;->l:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1fa
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fb
    aget-byte v5, v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_280

    nop

    nop

    nop

    :goto_1fc
    if-ne v11, v14, :cond_34

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_1c3

    nop

    nop

    nop

    :goto_1fd
    check-cast v10, Lpft;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_1fe
    array-length v13, v7

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    iget-object v11, v11, Lpfl;->a:[Lpfw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :goto_200
    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_201
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_202
    invoke-virtual {v11}, Lpfl;->e()V

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    :goto_203
    iget-short v0, v0, Lpfu;->j:S

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_204
    invoke-virtual {v10, v3}, Lpfl;->b(I)Lpfw;

    move-result-object v10

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    :goto_205
    iget-short v3, v0, Lpfu;->j:S

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_206
    iget v13, v11, Lpft;->e:I

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_207
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_273

    nop

    nop

    :goto_208
    if-eqz v12, :cond_35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_209
    iget-short v2, v0, Lpfu;->j:S

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_20a
    iget-object v5, v1, Lpfj;->a:[B

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_20b
    const/16 v8, -0x28

    nop

    nop

    nop

    nop

    goto/32 :goto_29f

    nop

    nop

    nop

    nop

    :goto_20c
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_20d
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    :goto_20e
    if-nez v10, :cond_36

    nop

    nop

    goto/32 :goto_d6

    nop

    :cond_36
    goto/32 :goto_258

    nop

    nop

    nop

    nop

    :goto_20f
    const-string v13, " as Exif data exceeds max size 65535!"

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_210
    invoke-virtual {v11, v12}, Lpft;->g(I)Z

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_211
    move/from16 v1, p1

    nop

    goto/32 :goto_25f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_212
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_213
    invoke-virtual {v3, v2}, Lpfl;->i(I)[B

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_214
    move-object/from16 v3, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_215
    goto/16 :goto_19c

    nop

    nop

    :goto_216
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_217
    invoke-virtual {v10, v7}, Lpfw;->c(S)V

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_218
    iget-object v7, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_219
    invoke-static {v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v7

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_21a
    iget-object v4, v0, Lpfz;->c:Ljava/io/OutputStream;

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_21b
    iget-object v11, v0, Lpfu;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_21c
    goto/16 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    :goto_21d
    goto/32 :goto_145

    nop

    nop

    nop

    :goto_21e
    sub-int/2addr v7, v10

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_21f
    const/4 v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_220
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    :goto_221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_222
    iget-object v0, v0, Lpfl;->b:[B

    nop

    nop

    goto/32 :goto_27f

    nop

    nop

    nop

    :goto_223
    if-nez v1, :cond_37

    nop

    goto/32 :goto_1d0

    nop

    :cond_37
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_224
    throw v0

    nop

    nop

    nop

    :goto_225
    goto/32 :goto_121

    nop

    nop

    :goto_226
    iget-short v12, v11, Lpft;->a:S

    nop

    nop

    nop

    goto/32 :goto_25a

    nop

    nop

    :goto_227
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_22d

    nop

    nop

    nop

    :goto_228
    iget-short v2, v0, Lpfu;->j:S

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_229
    invoke-virtual {v14, v11}, Lpft;->k([J)Z

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_22b
    iget v2, v1, Lpfj;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    :goto_22c
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22d
    iget-object v7, v0, Lpfu;->h:Lpfl;

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_22e
    const/16 v2, 0x101

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22f
    invoke-virtual {v10, v7}, Lpft;->g(I)Z

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_230
    iget-object v2, v0, Lpfz;->c:Ljava/io/OutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    :goto_231
    sget-object v1, Ltxk;->a:[C

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_232
    sget v13, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_233
    invoke-virtual {v12, v11}, Lpfl;->i(I)[B

    move-result-object v12

    nop

    nop

    goto/32 :goto_29b

    nop

    nop

    nop

    nop

    :goto_234
    invoke-static {v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    :goto_235
    iput v1, v0, Lpfu;->l:I

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_236
    invoke-direct {v5, v4}, Lpfx;-><init>(Ljava/io/OutputStream;)V

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_237
    invoke-virtual {v0, v1}, Lpfz;->h(S)V

    :goto_238
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_239
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    nop

    :goto_23a
    iput-short v1, v0, Lpfu;->k:S

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :goto_23b
    if-nez v5, :cond_38

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :cond_38
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_23c
    invoke-virtual {v11, v10}, Lpfl;->d(Lpfw;)V

    :goto_23d
    goto/32 :goto_27e

    nop

    nop

    nop

    :goto_23e
    iget-short v1, v0, Lpfu;->j:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23f
    invoke-virtual {v10, v7}, Lpfw;->c(S)V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_240
    invoke-virtual {v5, v4}, Lpfx;->b(S)V

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_241
    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_242
    invoke-virtual {v0, v8}, Lpfz;->h(S)V

    goto/32 :goto_2ab

    nop

    nop

    :goto_243
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_244
    int-to-short v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    :goto_245
    invoke-virtual {v15, v12}, Lpfl;->i(I)[B

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_246
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    :goto_247
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_248
    add-int/2addr v7, v12

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    :goto_249
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_255

    nop

    nop

    nop

    :goto_24a
    invoke-virtual {v1, v2, v3}, Lpfj;->c(Ljava/io/OutputStream;I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_24b
    if-ne v1, v7, :cond_39

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_297

    nop

    nop

    :cond_39
    goto/32 :goto_296

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24c
    new-instance v14, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_24d
    if-nez v13, :cond_3a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a6

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24e
    if-nez v10, :cond_3b

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_2aa

    nop

    nop

    nop

    nop

    :goto_24f
    invoke-virtual {v5, v10}, Lpfw;->b(S)Lpft;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    :goto_250
    invoke-static {v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    :goto_251
    iget-object v10, v0, Lpfu;->h:Lpfl;

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    :goto_252
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_253
    iget-object v5, v0, Lpfu;->h:Lpfl;

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_254
    invoke-virtual {v10, v11}, Lpfw;->e(Lpft;)V

    goto/32 :goto_14

    nop

    nop

    :goto_255
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_256
    iget-object v2, v0, Lpfu;->h:Lpfl;

    nop

    goto/32 :goto_1b9

    nop

    nop

    :goto_257
    invoke-virtual {v5, v6}, Lpfl;->b(I)Lpfw;

    move-result-object v5

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_258
    sget v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_259
    iget-object v2, v0, Lpfu;->h:Lpfl;

    nop

    goto/32 :goto_1c2

    nop

    nop

    :goto_25a
    invoke-static {v12}, Lcom/google/android/libraries/camera/exif/ExifInterface;->t(S)Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    nop

    :goto_25b
    if-nez v1, :cond_3c

    nop

    goto/32 :goto_1ab

    nop

    nop

    :cond_3c
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_25c
    invoke-virtual {v10, v2}, Lpfl;->b(I)Lpfw;

    move-result-object v10

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25d
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    :goto_25e
    if-nez v11, :cond_3d

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :cond_3d
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_25f
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_260
    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    nop

    :goto_261
    invoke-virtual {v5}, Lpfl;->g()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_262
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_162

    nop

    nop

    nop

    :goto_263
    throw v0

    nop

    nop

    :goto_264
    goto/32 :goto_118

    nop

    nop

    :goto_265
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

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

    :goto_266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_267
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    :goto_268
    if-nez v2, :cond_3e

    nop

    nop

    nop

    goto/32 :goto_275

    nop

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_274

    nop

    nop

    nop

    nop

    nop

    :goto_269
    if-ne v11, v14, :cond_3f

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :cond_3f
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_26a
    add-int/lit8 v1, v1, -0x2

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    :goto_26b
    goto/16 :goto_247

    nop

    nop

    nop

    nop

    :goto_26c
    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_26d
    invoke-virtual {v5, v11}, Lpfw;->b(S)Lpft;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26e
    if-nez v10, :cond_40

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_26f
    move-object/from16 v16, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :goto_270
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d6

    nop

    nop

    nop

    :goto_271
    invoke-virtual {v11, v7}, Lpft;->g(I)Z

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_272
    const/16 v4, 0x2a

    nop

    nop

    nop

    nop

    goto/32 :goto_240

    nop

    nop

    nop

    :goto_273
    const-string v1, "Unexpected section marker: %02X%02X"

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_274
    invoke-static {v2, v5}, Lpfu;->n(Lpfw;Lpfx;)V

    :goto_275
    goto/32 :goto_256

    nop

    nop

    nop

    nop

    nop

    :goto_276
    sget-object v5, Lpfu;->f:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_277
    invoke-virtual {v2}, Lpfl;->g()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_278
    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_279
    move-object/from16 v16, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    nop

    :goto_27a
    invoke-virtual {v0, v1}, Lpfz;->i(I)V

    goto/32 :goto_283

    nop

    nop

    nop

    nop

    nop

    :goto_27b
    const-string v1, "Byte queue is too short"

    nop

    goto/32 :goto_27d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27c
    add-int/2addr v7, v9

    nop

    nop

    goto/32 :goto_244

    nop

    nop

    :goto_27d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_27e
    iget-object v11, v0, Lpfu;->i:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_280
    if-ne v2, v5, :cond_41

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_1f2

    nop

    nop

    :goto_281
    sget v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    nop

    nop

    nop

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_282
    aget-char v2, v1, v6

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    :goto_283
    return v6

    nop

    nop

    nop

    nop

    nop

    :goto_284
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_285
    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_286
    iget-object v3, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    :goto_287
    iget-object v7, v7, Lpfl;->b:[B

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_288
    iget-object v11, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_289
    invoke-virtual {v0, v4}, Lpfz;->g([B)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28a
    return v6

    nop

    nop

    nop

    nop

    :goto_28b
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_28c
    new-instance v15, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_28d
    if-lt v12, v15, :cond_42

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :cond_42
    goto/32 :goto_16e

    nop

    nop

    nop

    :goto_28e
    invoke-virtual {v5, v7}, Lpft;->g(I)Z

    :goto_28f
    goto/32 :goto_99

    nop

    nop

    :goto_290
    if-nez v11, :cond_43

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :cond_43
    goto/32 :goto_1d5

    nop

    nop

    nop

    :goto_291
    goto/16 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    :goto_292
    goto/32 :goto_1d1

    nop

    nop

    :goto_293
    if-nez v2, :cond_44

    nop

    nop

    goto/32 :goto_29a

    nop

    nop

    :cond_44
    goto/32 :goto_299

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_294
    iget-object v11, v0, Lpfu;->h:Lpfl;

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_295
    invoke-virtual {v0, v4}, Lpfz;->h(S)V

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_296
    goto/16 :goto_65

    nop

    nop

    nop

    :goto_297
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_298
    invoke-static {v10, v7}, Lpfu;->m(Lpfw;I)I

    move-result v7

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_299
    invoke-static {v2, v5}, Lpfu;->n(Lpfw;Lpfx;)V

    :goto_29a
    goto/32 :goto_259

    nop

    nop

    nop

    nop

    nop

    :goto_29b
    array-length v12, v12

    nop

    nop

    goto/32 :goto_248

    nop

    nop

    nop

    nop

    nop

    :goto_29c
    iget-object v2, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    goto/32 :goto_252

    nop

    nop

    :goto_29d
    iget-object v1, v0, Lpfz;->b:Lpfj;

    nop

    nop

    nop

    nop

    goto/32 :goto_230

    nop

    nop

    :goto_29e
    iget-object v4, v0, Lpfu;->h:Lpfl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a2

    nop

    nop

    nop

    nop

    :goto_29f
    if-ne v1, v8, :cond_45

    nop

    nop

    nop

    goto/32 :goto_284

    nop

    nop

    nop

    nop

    nop

    :cond_45
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_2a0
    invoke-virtual {v11, v10}, Lpfl;->d(Lpfw;)V

    :goto_2a1
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_2a2
    invoke-virtual {v4, v6}, Lpfl;->b(I)Lpfw;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a3
    iget v1, v0, Lpfu;->l:I

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    :goto_2a4
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_26b

    nop

    nop

    :goto_2a5
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2a6
    goto/32 :goto_42

    nop

    nop

    :goto_2a7
    const/16 v8, -0x100

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_2a8
    invoke-virtual {v4, v3}, Lpfl;->b(I)Lpfw;

    move-result-object v3

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a9
    invoke-virtual {v3, v2}, Lpfl;->b(I)Lpfw;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    :goto_2aa
    sget v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_2ab
    const/16 v2, 0x264

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_2ac
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    nop

    nop
.end method
