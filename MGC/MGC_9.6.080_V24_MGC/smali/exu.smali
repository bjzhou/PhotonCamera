.class public final Lexu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:[B

.field public b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_2
    iput-object v0, p0, Lexu;->c:Ljava/lang/String;

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

    :goto_3
    new-array p1, p1, [B

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

    :goto_4
    iput p1, p0, Lexu;->b:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lexu;->a:[B

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    iput-object v1, p0, Lexu;->a:[B

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v2, p0, Lexu;->b:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_5
    iput v0, p0, Lexu;->b:I

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

    :goto_6
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, p0, Lexu;->b:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xd

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x4000

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    new-array v1, v0, [B

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v2, p0, Lexu;->b:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lexu;->c:Ljava/lang/String;

    nop

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

    :goto_11
    invoke-virtual {p0, v2}, Lexu;->d(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    if-gtz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit16 v2, v2, 0x4000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lexu;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    add-int/2addr v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x5

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lexu;->a:[B

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

    :goto_1
    iput-object v0, p0, Lexu;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lexu;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    array-length p1, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const v1, 0x8

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const/4 v2, 0x0

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

    :goto_3
    return-object v0

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const v0, 0x1d

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

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    iget-object v1, p0, Lexu;->a:[B

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget p0, p0, Lexu;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/String;
    .locals 10

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_3
    const-string v0, "UTF-16BE"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_6
    const-string v5, "UTF-32"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_8
    iput-object v1, p0, Lexu;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_9
    if-ge v0, v8, :cond_3

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

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    :goto_a
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v8, 0x4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_c
    and-int/2addr v0, v9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "UTF-8"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    if-eq v0, v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x4

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget-byte v4, v3, v4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_22

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    aget-byte v0, v3, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_41

    nop

    nop

    :goto_16
    iput-object v5, p0, Lexu;->c:Ljava/lang/String;

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

    :goto_17
    goto :goto_22

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lexu;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    const-string v0, "UTF-32BE"

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1b
    and-int/2addr v0, v9

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1c
    aget-byte v0, v3, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq v4, v7, :cond_5

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_5
    :goto_1e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Lexu;->b:I

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

    :goto_20
    aget-byte v0, v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    iput-object v1, p0, Lexu;->c:Ljava/lang/String;

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lexu;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v1, p0, Lexu;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_25
    iput-object v0, p0, Lexu;->c:Ljava/lang/String;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v0, p0, Lexu;->c:Ljava/lang/String;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0xd

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

    nop

    nop

    :goto_2a
    aget-byte v0, v3, v2

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

    :goto_2b
    iget-object v3, p0, Lexu;->a:[B

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2d
    if-nez v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lexu;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2f
    aget-byte v0, v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_30
    goto/16 :goto_22

    nop

    :goto_31
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v4, v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_14

    nop

    nop

    :goto_33
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_36
    if-ge v0, v8, :cond_8

    nop

    goto/32 :goto_5a

    nop

    :cond_8
    goto/32 :goto_2a

    nop

    nop

    :goto_37
    aget-byte v4, v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eq v0, v9, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v9, 0x80

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_b
    goto/32 :goto_3c

    nop

    :goto_3c
    goto/32 :goto_27

    nop

    nop

    :goto_3d
    goto/32 :goto_2e

    nop

    nop

    :goto_3e
    const/16 v9, 0xff

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object v5, p0, Lexu;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Lexu;->c:Ljava/lang/String;

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

    :goto_41
    if-ge v0, v8, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_42
    if-lt v0, v2, :cond_d

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string v0, "UTF-16LE"

    nop

    :goto_46
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-lt v4, v9, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_f
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_48
    const/16 v7, 0xef

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

    nop

    :goto_49
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_22

    nop

    :goto_4c
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v1, "UTF-16"

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

    :goto_4e
    const/16 v6, 0xfe

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4f
    goto/16 :goto_22

    nop

    :goto_50
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_12

    nop

    :goto_52
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_53
    goto :goto_5a

    nop

    nop

    :goto_54
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_55
    and-int/2addr v4, v9

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-string v0, "UTF-32LE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_57
    add-int v0, v0, v1

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

    :goto_58
    goto/32 :goto_3d

    nop

    nop

    :goto_59
    goto/16 :goto_46

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_48

    nop

    nop

    nop
.end method

.method public final c([B)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    array-length v0, p1

    nop

    nop

    nop

    nop

    nop

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
    invoke-virtual {p0, p1, v0}, Lexu;->e([BI)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final d(I)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    add-int p1, v1, v1

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

    :goto_1
    iput-object p1, p0, Lexu;->a:[B

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    array-length v1, v0

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

    :goto_3
    if-gt p1, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_4
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-static {v0, p0, p1, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    const v0, 0xf

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lexu;->a:[B

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    :goto_11
    new-array p1, p1, [B

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

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop
.end method

.method public final e([BI)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lexu;->a:[B

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p1, p0, Lexu;->b:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lexu;->b:I

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

    :goto_5
    iget p1, p0, Lexu;->b:I

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lexu;->d(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_b
    iget v0, p0, Lexu;->b:I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v0, p2

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

    :goto_12
    const/4 v2, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/2addr p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
