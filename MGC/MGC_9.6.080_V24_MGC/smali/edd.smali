.class public final Ledd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ledo;->g(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ledo;->g(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-static {v0}, Ledo;->g(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ledo;->g(I)V

    goto/32 :goto_7

    nop

    nop

    :goto_7
    const/4 v0, 0x1

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
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ledo;->g(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x5

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

    :goto_b
    invoke-static {v0}, Ledo;->g(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(III[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Ledd;->d:[B

    nop

    nop

    goto/32 :goto_2

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

    :goto_3
    iput p1, p0, Ledd;->a:I

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
    iput p2, p0, Ledd;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Ledd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    if-eq v2, v3, :cond_0

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iget v3, p1, Ledd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    goto/16 :goto_23

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ledd;->d:[B

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    iget v3, p1, Ledd;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_e
    if-ne v2, v3, :cond_3

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_4

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

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    if-eq p0, p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    iget v2, p0, Ledd;->a:I

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

    :goto_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    if-eq v2, v3, :cond_6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x16

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

    :goto_17
    return v1

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

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

    nop

    :goto_1a
    check-cast p1, Ledd;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v2, p0, Ledd;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    iget-object p1, p1, Ledd;->d:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    iget v2, p0, Ledd;->b:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    iget v3, p1, Ledd;->a:I

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

    nop

    :goto_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    if-eq v2, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

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

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Ledd;->d:[B

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Ledd;->c:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    add-int/2addr v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_a
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_b
    const v1, 0x10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit16 v0, v0, 0x20f

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

    :goto_d
    iget v0, p0, Ledd;->a:I

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

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    iput v0, p0, Ledd;->f:I

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    iget v1, p0, Ledd;->b:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_1a
    add-int/lit8 v0, v0, -0x1

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

    :goto_1b
    iget v0, p0, Ledd;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
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

    :goto_1d
    add-int/2addr v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, ", NA, NA)"

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_a
    const-string v1, "Gamma 2.2"

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

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_c
    const-string v1, "ST2084 PQ"

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "BT601"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x1

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_f
    const-string v1, "Undefined color transfer "

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

    nop

    :goto_10
    if-ne v6, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_1
    goto/32 :goto_54

    nop

    nop

    :goto_11
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_46

    nop

    nop

    :goto_13
    const v0, 0x12

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_14
    const/4 v3, -0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v6, "Undefined color range "

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_18
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_19
    iget v6, p0, Ledd;->c:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1a
    if-ne v6, v3, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1b
    const-string v1, "Linear"

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

    :goto_1c
    const-string v1, "HLG"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    goto/16 :goto_47

    nop

    :goto_20
    goto/32 :goto_67

    nop

    nop

    :goto_21
    const-string v5, "Full range"

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x7

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_23
    if-ne v6, v1, :cond_4

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    :goto_24
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    :goto_29
    iget v0, p0, Ledd;->a:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2a
    if-ne v5, v3, :cond_5

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_31

    nop

    nop

    :goto_2d
    invoke-static {v5, v6}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

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

    :goto_2e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2f

    nop

    nop

    :goto_32
    goto/16 :goto_53

    nop

    :goto_33
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-ne v0, v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_6
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_35
    if-ne v6, v3, :cond_7

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_7
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_36
    const/4 v2, 0x2

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

    nop

    nop

    :goto_37
    if-ne v5, v4, :cond_8

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v0, v5}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_39
    if-ne v0, v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_9
    goto/32 :goto_3c

    nop

    nop

    :goto_3a
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v5, "Undefined color space "

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

    :goto_3d
    const-string v1, "sRGB"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3e
    goto :goto_44

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    :goto_41
    goto :goto_47

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-string v5, "Unset color range"

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_19

    nop

    nop

    :goto_45
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_46
    const-string v0, "Unset color space"

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string v0, "BT709"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_49
    goto :goto_53

    nop

    nop

    :goto_4a
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v2, "ColorInfo("

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4d
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4e
    iget v5, p0, Ledd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-ne v5, v2, :cond_a

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_51
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_52
    const-string v1, "Unset color transfer"

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-ne v6, v1, :cond_b

    nop

    goto/32 :goto_5d

    nop

    nop

    :cond_b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_56
    const/16 v3, 0xa

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v6, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object p0, p0, Ledd;->d:[B

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-lez v0, :cond_c

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2e

    nop

    :goto_5c
    goto :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5e
    if-ne v0, v3, :cond_d

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v5, "Limited range"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-ne v6, v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_e
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_53

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const-string v1, "SDR SMPTE 170M"

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_66
    if-ne v6, v4, :cond_f

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const-string v0, "BT2020"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_68
    const-string v0, ", "

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method
