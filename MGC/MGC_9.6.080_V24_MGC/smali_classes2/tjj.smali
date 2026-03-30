.class public abstract Ltjj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Ltjj;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Ltkw;->b:[B

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

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Ltji;-><init>([B)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Ltjj;->b:Ltjj;

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

    :goto_9
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    new-instance v0, Ltji;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Ltjj;->c:I

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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
.end method

.method static l(III)I
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1c

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, " < 0"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    or-int v0, p0, p1

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

    nop

    :goto_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5
    throw p2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a
    or-int/2addr v0, v2

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

    :goto_b
    throw p0

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    :goto_d
    const-string v1, ", "

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, p2, v0}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    const-string v1, " >= "

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_14
    sget-object v0, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->dIlogWFJ:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    if-ltz v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_16
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

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

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

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

    :goto_19
    if-lt p1, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, p0, v0, v1}, La;->bh(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-int v1, p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    sub-int v2, p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    or-int/2addr v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    if-gez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p2, p1, v0, v1}, La;->bh(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string p2, "Beginning index: "

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_25
    const-string v0, "Beginning index larger than ending index: "

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_26
    return v1

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method

.method public static n(Ljava/util/Iterator;I)Ltjj;
    .locals 6

    goto/32 :goto_75

    nop

    nop

    :goto_0
    iget-object v0, v3, Ltme;->e:Ltjj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ltme;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1c

    nop

    nop

    :goto_3
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, v3, Ltme;->f:Ltjj;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v3, v2, Ltme;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_6
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, v3, Ltme;->f:Ltjj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ltjj;->d()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ltjj;->f()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gtz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4f

    nop

    nop

    :goto_d
    sget-object p1, Ltme;->a:[I

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
    const/16 v1, 0x80

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

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ltjj;->d()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_16
    move-object p0, v1

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

    :goto_17
    ushr-int/lit8 v1, p1, 0x1

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_18
    goto/32 :goto_3a

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    if-ge p1, v1, :cond_1

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
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object p0, v2

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Ltjj;

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_21
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lt v4, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2}, Ltjj;->f()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_25
    if-gt v1, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2a

    nop

    nop

    :goto_28
    invoke-direct {p1, v0, p0}, Ltme;-><init>(Ltjj;Ltjj;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_29
    iget-object p1, v3, Ltme;->f:Ltjj;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v3, Ltme;->e:Ltjj;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v4}, Ltjj;->d()I

    move-result v4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Ltjj;->d()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_30
    invoke-static {p1, p0}, Ltme;->g(Ltjj;Ltjj;)Ltjj;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_31
    const v1, 0x9

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Ltjj;->d()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_33
    if-lt p1, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :cond_4
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_34
    sub-int/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int/2addr p1, v1

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
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

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

    :goto_38
    sub-int/2addr p1, v1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_39
    throw p0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_5e

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Ltjj;->f()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3c
    check-cast v0, Ltjj;

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

    :goto_3d
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    :goto_3e
    if-gt v1, v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_6
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Ltjj;->d()I

    move-result v1

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

    nop

    :goto_41
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {p0, v1}, Ltjj;->n(Ljava/util/Iterator;I)Ltjj;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz v0, :cond_7

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

    :cond_7
    goto/32 :goto_3f

    nop

    nop

    :goto_48
    invoke-virtual {v2}, Ltjj;->d()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_49
    const-string v2, "ByteString would be too long: "

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v2}, Ltjj;->d()I

    move-result v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p0, p1}, Ltcw;->x(Ltjj;Ljava/util/ArrayDeque;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_4c
    iget-object v4, v3, Ltme;->f:Ltjj;

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

    :goto_4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_4e
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4f
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_50
    throw p1

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_52
    new-instance p1, Ljava/util/ArrayDeque;

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

    nop

    :goto_53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string v0, "length (%s) must be >= 1"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_55
    new-instance p1, Ltme;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_56
    if-ge p1, v0, :cond_8

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v1, Ltme;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_59
    new-instance p1, Ltme;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v4}, Ltjj;->f()I

    move-result v4

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_1c

    nop

    nop

    :goto_5c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-int v0, v0, v1

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

    nop

    :goto_5e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v2}, Ltjj;->d()I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-eqz p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p0}, Ltjj;->f()I

    move-result v3

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

    :goto_62
    const-string v0, "+"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_63
    move-object p0, p1

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

    :goto_64
    if-nez v3, :cond_a

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

    :cond_a
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_65
    invoke-direct {p1, v0, p0}, Ltme;-><init>(Ltjj;Ltjj;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_66
    move-object v3, v2

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_67
    iget v1, v3, Ltme;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {p1, v2, p0}, Ltme;-><init>(Ltjj;Ltjj;)V

    :goto_69
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    new-instance p1, Ltme;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez p1, :cond_b

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

    :cond_b
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_6c
    check-cast v3, Ltme;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0}, Ltjj;->d()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6e
    const p1, 0x7fffffff

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_39

    nop

    nop

    :goto_70
    if-eq p1, v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_46

    nop

    nop

    :goto_71
    invoke-static {v2, p1}, Ltcw;->x(Ltjj;Ljava/util/ArrayDeque;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_72
    iget-object v0, v3, Ltme;->e:Ltjj;

    nop

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

    nop

    :goto_73
    invoke-static {v1}, Ltme;->c(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_74
    invoke-direct {v1, v0, p0}, Ltme;-><init>(Ltjj;Ltjj;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_75
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {v2, p0}, Ltme;->g(Ltjj;Ltjj;)Ltjj;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_77
    invoke-static {p0, p1}, Ltjj;->n(Ljava/util/Iterator;I)Ltjj;

    move-result-object p0

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

    :goto_78
    invoke-direct {p0, v0, p1}, Ltme;-><init>(Ltjj;Ltjj;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_7a
    check-cast p0, Ltjj;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static o(Ljava/nio/ByteBuffer;)Ltjj;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [B

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

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

    :goto_2
    const/4 v2, 0x0

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

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_4
    invoke-static {v2, v0, v1}, Ltjj;->l(III)I

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Ltji;-><init>([B)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ltji;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_f

    nop

    nop
.end method

.method public static p([B)Ltjj;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v0, 0xc

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

    :goto_3
    invoke-static {p0, v0, v1}, Ltjj;->q([BII)Ltjj;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

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

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    array-length v1, p0

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x11

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method

.method public static q([BII)Ltjj;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ltji;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Ltji;-><init>([B)V

    goto/32 :goto_a

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-array v1, p2, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    array-length v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_10
    invoke-static {p1, v0, v1}, Ltjj;->l(III)I

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method static r(II)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    sub-int v0, p1, v0

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
    add-int/lit8 v0, p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    const-string v2, ", "

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

    nop

    :goto_5
    const-string v1, "Index > length: "

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
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

    :goto_8
    const v0, 0x13

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

    :goto_9
    if-ltz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_f
    or-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x19

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    if-ltz v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_14
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "Index < 0: "

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, p0, v1, v2}, La;->bh(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_19
    goto/32 :goto_b

    nop

    nop

    :goto_1a
    throw p1

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract b(I)B
.end method

.method public abstract d()I
.end method

.method protected abstract e([BIII)V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method protected abstract f()I
.end method

.method public abstract h()Z
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    const v1, 0x15

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

    :goto_3
    invoke-virtual {p0}, Ltjj;->d()I

    move-result v1

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

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v1, v0, v1}, Ltjj;->i(III)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    const v0, 0xf

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

    :goto_c
    iget v0, p0, Ltjj;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_e
    iput v0, p0, Ltjj;->c:I

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    return v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method protected abstract i(III)I
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltjj;->m()Ltjg;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public abstract j(II)Ltjj;
.end method

.method public abstract k(Ltjc;)V
.end method

.method public m()Ltjg;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Ltjd;-><init>(Ltjj;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    new-instance v0, Ltjd;

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

.method public final s()Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    const/4 p0, 0x1

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

    :goto_6
    invoke-virtual {p0}, Ltjj;->d()I

    move-result p0

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
.end method

.method public final t()[B
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v1, v0, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    sget-object p0, Ltkw;->b:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

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
    invoke-virtual {p0, v1, v2, v2, v0}, Ltjj;->e([BIII)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_1

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

    goto/32 :goto_10

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_8
    const v0, 0x10

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

    :goto_9
    const v1, 0x14

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    return-object v1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ltjj;->d()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    if-le v3, v4, :cond_0

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

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ltjj;->d()I

    move-result v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_b
    invoke-static {p0}, Ltcw;->w(Ltjj;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    const v0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v3, v4}, Ltjj;->j(II)Ltjj;

    move-result-object p0

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

    :goto_e
    const-string v3, "..."

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

    :goto_f
    const-string v1, "<ByteString@%s size=%d contents=\"%s\">"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v4, 0x2f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_5

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v4, 0x32

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

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

    :goto_18
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Ltcw;->w(Ltjj;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ltjj;->d()I

    move-result v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x0

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

    :goto_1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final u([BII)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, p2, p3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    invoke-static {p2, v0, v2}, Ltjj;->l(III)I

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ltjj;->d()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    if-gtz p3, :cond_0

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

    nop

    :goto_7
    invoke-virtual {p0, p1, v1, p2, p3}, Ltjj;->e([BIII)V

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    array-length v2, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, p3, v0}, Ltjj;->l(III)I

    goto/32 :goto_0

    nop

    nop
.end method
