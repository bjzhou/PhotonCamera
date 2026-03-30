.class public final Lbxz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lucv;


# static fields
.field public static final a:Lbxz;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    goto/32 :goto_f

    nop

    nop

    :goto_0
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct/range {v0 .. v6}, Lbxz;-><init>(JJI[I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v7, Lbxz;->a:Lbxz;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    move-object v0, v7

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    new-instance v7, Lbxz;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    const-wide/16 v3, 0x0

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

    :goto_f
    const v0, 0x10

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method private constructor <init>(JJI[I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p1, p0, Lbxz;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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
    iput p5, p0, Lbxz;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-wide p3, p0, Lbxz;->c:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p6, p0, Lbxz;->e:[I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lbxz;)Lbxz;
    .locals 13

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v9, p1, Lbxz;->b:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const-wide/16 v2, 0x1

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

    :goto_2
    move v0, v1

    nop

    nop

    :goto_3
    goto/32 :goto_56

    nop

    nop

    :goto_4
    cmp-long p0, v9, v4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5
    not-long p0, p0

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

    :goto_6
    move v2, v1

    nop

    nop

    :goto_7
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_8
    move-object v8, p0

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

    :goto_9
    and-long/2addr v9, v11

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_a
    iget-wide v2, p1, Lbxz;->c:J

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

    nop

    nop

    :goto_b
    iget-wide p0, p1, Lbxz;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    shl-long v11, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_43

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_11
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    iget v6, p0, Lbxz;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_13
    invoke-virtual {v8, p0}, Lbxz;->b(I)Lbxz;

    move-result-object v8

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v0, p0, Lbxz;->b:J

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_16
    if-lt v2, v3, :cond_0

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

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    iget-object v0, p1, Lbxz;->e:[I

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

    :goto_19
    goto/16 :goto_7

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p1, Lbxz;->e:[I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v3}, Lbxz;->b(I)Lbxz;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    iget-wide v4, p0, Lbxz;->c:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    add-int/2addr p0, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x18

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

    :goto_22
    if-nez v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v0, p1, Lbxz;->d:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_24
    and-long/2addr v2, v0

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

    nop

    :goto_25
    return-object v8

    nop

    nop

    :goto_26
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_27
    iget v7, p1, Lbxz;->d:I

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_2
    :goto_29
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    and-long/2addr v7, v9

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v6, 0x40

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_2c
    return-object v0

    nop

    nop

    :goto_2d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v7}, Lbxz;->b(I)Lbxz;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_30
    iget-wide v2, p1, Lbxz;->b:J

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

    :goto_31
    cmp-long v0, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_32
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-wide v9, p1, Lbxz;->b:J

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

    :goto_34
    if-lt v1, v6, :cond_3

    nop

    goto/32 :goto_43

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_35
    cmp-long p0, v9, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_36
    not-long v2, v2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_37
    aget v3, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_39
    new-instance v8, Lbxz;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3a
    cmp-long v7, v7, v4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v0, p1, Lbxz;->d:I

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

    :goto_3c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    :goto_3f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_40
    if-eq v0, v7, :cond_5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_41
    array-length v3, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_42
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_44
    if-eq v0, v6, :cond_6

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

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct/range {v1 .. v7}, Lbxz;-><init>(JJI[I)V

    goto/32 :goto_d

    nop

    nop

    :goto_49
    add-int/lit8 p0, v1, 0x40

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

    :goto_4a
    iget-wide v7, p1, Lbxz;->c:J

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4d
    add-int/2addr v7, v0

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

    :goto_4e
    shl-long v9, v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4f
    if-eq p1, v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_50
    sget-object v0, Lbxz;->a:Lbxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_51
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_52
    and-long/2addr v4, p0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eq p0, v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2c

    nop

    nop

    :goto_54
    iget-object v7, p0, Lbxz;->e:[I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move-object v1, v8

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-lt v0, v6, :cond_b

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final b(I)Lbxz;
    .locals 11

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v7, p0, Lbxz;->c:J

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1
    const/16 v6, 0x40

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    move-object v6, p0

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

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lbxz;->e:[I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    and-long/2addr v3, v6

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

    :goto_7
    iget-wide v6, p0, Lbxz;->b:J

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lt v0, v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_9
    move-object v0, p1

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
    and-long v1, v6, v0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lt p1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p1}, Lbya;->a([II)I

    move-result p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_48

    nop

    :goto_f
    if-ge v0, v6, :cond_3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    if-gez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v10, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    new-instance p0, Lbxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_13
    shl-long/2addr v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_14
    not-long v3, v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    iget-object p0, p0, Lbxz;->e:[I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    move-object v0, p1

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

    :goto_17
    const/4 p1, 0x0

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

    :goto_18
    cmp-long p1, v8, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_19
    invoke-direct/range {v4 .. v10}, Lbxz;-><init>(JJI[I)V

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    and-long v8, v6, v3

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1d
    if-gez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    :goto_1e
    add-int/lit8 v2, p1, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v6, 0x80

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

    :goto_20
    iget-wide v3, p0, Lbxz;->c:J

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_21
    and-long v8, v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_22
    const-wide/16 v3, 0x1

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

    :goto_23
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    if-ltz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_7
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v0, v0, -0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    array-length v1, v0

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

    :goto_29
    not-long v0, v3

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

    :goto_2a
    iget v9, p0, Lbxz;->d:I

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
    iget v5, p0, Lbxz;->d:I

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

    nop

    :goto_2c
    invoke-static {v0, v3, p1, v2, v1}, Lrkm;->bg([I[IIII)V

    :goto_2d
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2e
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object p1

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_31
    sub-int v0, p1, v5

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

    nop

    :goto_32
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_8
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_33
    iget-wide v1, p0, Lbxz;->b:J

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_34
    return-object p1

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-wide v5, p0, Lbxz;->b:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p1, :cond_9

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_38
    new-instance p1, Lbxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_39
    iget-wide v6, p0, Lbxz;->c:J

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-gtz p1, :cond_a

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct/range {v0 .. v6}, Lbxz;-><init>(JJI[I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lbxz;->e:[I

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

    :goto_3e
    invoke-static {v0, v3, v4, v4, p1}, Lrkm;->bg([I[IIII)V

    :goto_3f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_41
    add-int/lit8 v2, v1, -0x1

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

    :goto_42
    new-instance p1, Lbxz;

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

    :goto_43
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

    :goto_44
    if-lt v0, v6, :cond_b

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object v6, p0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_47
    cmp-long p1, v8, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_4

    nop

    :goto_49
    goto/32 :goto_2b

    nop

    nop

    :goto_4a
    move-object v10, v3

    nop

    nop

    :goto_4b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct/range {v0 .. v6}, Lbxz;-><init>(JJI[I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4d
    move-object v4, p0

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

    :goto_4e
    if-eqz v2, :cond_c

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_17

    nop

    nop

    :goto_4f
    new-array v3, v2, [I

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_50
    shl-long/2addr v3, v0

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
.end method

.method public final c(Lbxz;)Lbxz;
    .locals 13

    goto/32 :goto_75

    nop

    nop

    :goto_0
    iget v7, p0, Lbxz;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p0, v3, 0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_0
    :goto_3
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_4
    and-long/2addr v9, v11

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    if-lt v0, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    :goto_6
    move-object v8, p1

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

    :goto_7
    iget-wide v9, p0, Lbxz;->b:J

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_8
    and-long/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 p1, v3, 0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p0, Lbxz;->c:J

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

    :goto_c
    if-eq v0, v6, :cond_2

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

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_6f

    nop

    :goto_e
    if-nez p1, :cond_4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    :goto_f
    cmp-long v0, v7, v5

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

    :goto_10
    or-long/2addr v2, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide p0, p1, Lbxz;->c:J

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

    nop

    :goto_12
    add-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_14
    aget v8, v0, v7

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

    :goto_15
    if-nez v7, :cond_6

    nop

    nop

    goto/32 :goto_79

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_7
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_17
    const/16 v4, 0x40

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_18
    invoke-virtual {v8, p1}, Lbxz;->d(I)Lbxz;

    move-result-object v8

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_34

    nop

    nop

    :goto_1b
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lbxz;->e:[I

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_1e
    iget v0, p1, Lbxz;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_1f
    cmp-long p0, v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v7, :cond_8

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    cmp-long p0, v9, v5

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_22
    iget-wide v9, p1, Lbxz;->b:J

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_23
    iget-wide v7, p0, Lbxz;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_24
    and-long/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_25
    return-object v8

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_27
    iget-wide v7, p0, Lbxz;->b:J

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

    :goto_28
    iget-wide v9, p1, Lbxz;->b:J

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_29
    add-int/lit8 v0, v0, 0x1

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

    :goto_2a
    invoke-virtual {p0, v7}, Lbxz;->d(I)Lbxz;

    move-result-object p0

    nop

    nop

    :goto_2b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v1, v8

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

    :goto_2d
    or-long v4, v0, p0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2e
    add-int/2addr v7, v0

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    and-long/2addr v7, v9

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-object p1

    nop

    nop

    :goto_31
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p1, Lbxz;->e:[I

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_33
    move v7, v3

    nop

    nop

    :goto_34
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_77

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lt v7, v8, :cond_9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_39
    move-object v8, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3a
    goto/32 :goto_70

    nop

    :goto_3b
    invoke-direct/range {v1 .. v7}, Lbxz;-><init>(JJI[I)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-wide v7, p1, Lbxz;->c:J

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

    nop

    :goto_3d
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v8, Lbxz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_3f
    iget v0, p1, Lbxz;->d:I

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    cmp-long p1, v9, v5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_41
    if-eq p1, v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_62

    nop

    :goto_45
    goto/32 :goto_1c

    nop

    nop

    :goto_46
    iget-wide v0, p0, Lbxz;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_47
    return-object p0

    nop

    :goto_48
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_49
    cmp-long v0, v7, v5

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_4a
    shl-long v11, v1, v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move v0, v3

    nop

    nop

    :goto_4c
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez p0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_c
    :goto_4e
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_4f
    const/4 v3, 0x0

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

    :goto_50
    if-eq p0, v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_d
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_51
    iget v7, p1, Lbxz;->d:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-lt v3, v4, :cond_e

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_53
    add-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0, v8}, Lbxz;->d(I)Lbxz;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_55
    if-lt v0, v4, :cond_f

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_56
    add-int/2addr v7, v0

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

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_58
    goto/16 :goto_4c

    nop

    nop

    :goto_59
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5a
    const-wide/16 v1, 0x1

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

    nop

    :goto_5b
    shl-long v11, v1, v3

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

    :goto_5c
    array-length v8, v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5e
    cmp-long v7, v7, v5

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

    :goto_5f
    invoke-virtual {v8, p0}, Lbxz;->d(I)Lbxz;

    move-result-object v8

    nop

    nop

    :goto_60
    goto/32 :goto_a

    nop

    nop

    :goto_61
    goto/16 :goto_4e

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_63
    iget-object v7, p0, Lbxz;->e:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_64
    shl-long v9, v1, v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v0, :cond_10

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_4b

    nop

    nop

    :goto_66
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_67
    iget v6, p0, Lbxz;->d:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-wide v7, p0, Lbxz;->c:J

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

    :goto_69
    if-eq v0, v7, :cond_11

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget v0, p0, Lbxz;->d:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6c
    if-lt v3, v4, :cond_12

    nop

    goto/32 :goto_62

    nop

    :cond_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6d
    sget-object v0, Lbxz;->a:Lbxz;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_6e
    shl-long v9, v1, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_26

    nop

    :goto_70
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    cmp-long v7, v7, v5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_72
    cmp-long v0, v7, v5

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

    :goto_73
    iget-object v0, p1, Lbxz;->e:[I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_75
    const v0, 0xc

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_76
    move v0, v3

    nop

    :goto_77
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {p1, v7}, Lbxz;->d(I)Lbxz;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-wide v2, p1, Lbxz;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7b
    if-nez p0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    :cond_13
    goto/32 :goto_1

    nop

    nop

    :goto_7c
    iget-wide v7, p1, Lbxz;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(I)Lbxz;
    .locals 19

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v12, v5, v3, v4}, Lrkm;->bg([I[IIII)V

    goto/32 :goto_e

    nop

    nop

    :goto_1
    move-object v6, v9

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2, v1}, Lbya;->a([II)I

    move-result v3

    nop

    nop

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

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_4
    if-ge v2, v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_98

    nop

    nop

    :goto_5
    return-object v7

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v8, Lbxz;

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x18

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_1
    goto/32 :goto_46

    nop

    :goto_a
    and-long v9, v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    or-long/2addr v1, v3

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    :cond_2
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_d
    if-eqz v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput v1, v12, v3

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_f
    move-object v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_10
    move-object v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_11
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v0, v8

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_13
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v5, :cond_4

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_66

    nop

    nop

    :goto_18
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_19
    const-wide/16 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct/range {v6 .. v12}, Lbxz;-><init>(JJI[I)V

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct/range {v0 .. v6}, Lbxz;-><init>(JJI[I)V

    goto/32 :goto_6a

    nop

    nop

    :goto_1d
    cmp-long v10, v12, v7

    nop

    nop

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

    :goto_1e
    aget v7, v11, v10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v5, v0, Lbxz;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_20
    move-wide v12, v11

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_22
    shl-long v10, v3, v7

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_23
    const-wide/16 v17, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_24
    iget-object v6, v0, Lbxz;->e:[I

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v11, v0, Lbxz;->e:[I

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-lt v7, v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    :goto_27
    sub-int v2, v1, v5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_28
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_6
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_2b
    move-wide v14, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_2c
    mul-int/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2d
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct/range {v0 .. v6}, Lbxz;-><init>(JJI[I)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    and-long/2addr v10, v14

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

    :goto_31
    iget-wide v13, v0, Lbxz;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, v0, Lbxz;->e:[I

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v11, v0, Lbxz;->d:I

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_36
    move/from16 v16, v2

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_37
    if-eqz v6, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v3, v1}, Lbxz;->d(I)Lbxz;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_39
    move-object/from16 v17, v0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_3a
    add-int v8, v7, v2

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_3b
    invoke-direct/range {v0 .. v6}, Lbxz;-><init>(JJI[I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v2, v2, -0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-wide v2, v0, Lbxz;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v10, :cond_8

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_8
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-wide v1, v6

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_40
    new-instance v9, Lbxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_41
    if-eqz v2, :cond_9

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_42
    cmp-long v6, v9, v7

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_43
    add-int/lit8 v2, v2, 0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_44
    if-nez v11, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_45
    div-int/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_46
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v8, :cond_b

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

    nop

    :cond_b
    goto/32 :goto_3a

    nop

    nop

    :goto_49
    iget-wide v6, v0, Lbxz;->c:J

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

    :goto_4a
    iget-wide v3, v0, Lbxz;->c:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4b
    const/16 v9, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_4e
    move-object v6, v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4f
    return-object v9

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_51
    add-int/lit8 v5, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_52
    move-object v0, v9

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_53
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_54
    add-int/lit8 v6, v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_55
    aput v5, v0, v10

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto :goto_5a

    nop

    :goto_57
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_58
    move-wide v14, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_59
    goto/16 :goto_21

    nop

    nop

    :goto_5a
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v9, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v8, v0, Lbxz;->e:[I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v10, 0x0

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_60
    move-object v11, v3

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_61
    invoke-virtual/range {p0 .. p1}, Lbxz;->e(I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    add-int/lit8 v5, v4, 0x1

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_64
    new-array v12, v5, [I

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    cmp-long v6, v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    add-int/lit8 v5, v3, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v0, v0, Lbxz;->e:[I

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    return-object v8

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_6d
    move-wide v12, v7

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_6e
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_73
    if-eqz v9, :cond_d

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_74
    array-length v7, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_75
    move-object/from16 v0, p0

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_76
    const v1, 0x3

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-lt v2, v6, :cond_e

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_79
    const-wide/16 v7, 0x0

    nop

    :goto_7a
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7b
    new-instance v7, Lbxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7c
    shl-long v1, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_7d
    move-wide v14, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7e
    or-long/2addr v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_7f
    iget v2, v0, Lbxz;->d:I

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_80
    if-lt v10, v7, :cond_f

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_81
    if-ltz v3, :cond_10

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_10
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_82
    goto/16 :goto_16

    nop

    :goto_83
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_84
    invoke-static {v2, v12, v5, v5, v3}, Lrkm;->bg([I[IIII)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_86
    cmp-long v11, v14, v7

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_87
    new-instance v0, Lbxz;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_88
    shl-long v1, v3, v2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_89
    iget-wide v6, v0, Lbxz;->b:J

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_8a
    move v2, v5

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

    :goto_8b
    const-wide/16 v7, 0x0

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

    :goto_8c
    new-array v0, v0, [I

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_8d
    neg-int v3, v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8e
    move-wide v3, v6

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

    :goto_8f
    if-ge v2, v9, :cond_11

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_90
    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_91
    invoke-direct/range {v11 .. v17}, Lbxz;-><init>(JJI[I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_93
    filled-new-array/range {p1 .. p1}, [I

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_94
    iget-wide v3, v0, Lbxz;->c:J

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

    :goto_95
    iget-wide v3, v0, Lbxz;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_96
    iget-wide v7, v0, Lbxz;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_97
    if-nez v11, :cond_12

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :cond_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-lt v2, v9, :cond_13

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_99
    new-instance v3, Lbxz;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_9a
    if-lt v2, v5, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_14
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    and-long v9, v3, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_9c
    iget-wide v11, v0, Lbxz;->b:J

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

    :goto_9d
    check-cast v5, Ljava/lang/Number;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_5f

    nop

    nop

    :goto_a0
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_a1
    move v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_a3
    array-length v4, v2

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-wide v9, v0, Lbxz;->c:J

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_a5
    move-wide v1, v2

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    cmp-long v8, v10, v17

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const/16 v6, 0x40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop
.end method

.method public final e(I)Z
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, -0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    shl-long/2addr v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide p0, p0, Lbxz;->c:J

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_6
    if-gtz v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v0, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_8
    iget v0, p0, Lbxz;->d:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2e

    nop

    :goto_a
    iget-object p0, p0, Lbxz;->e:[I

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

    :goto_b
    cmp-long p0, p0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    sub-int v0, p1, v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    shl-long/2addr v3, v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_e
    and-long/2addr p0, v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    cmp-long p0, p0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-gez p0, :cond_3

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

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_11
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    if-lt v0, v5, :cond_4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_16
    invoke-static {p0, p1}, Lbya;->a([II)I

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

    :goto_17
    if-nez p0, :cond_6

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    :goto_18
    const/16 v5, 0x40

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

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    return v7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    :goto_1c
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    return v7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    :goto_20
    const/4 v6, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_21
    return v6

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v5, 0x80

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

    :goto_24
    return v6

    nop

    nop

    :goto_25
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_26
    return v6

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_29
    and-long/2addr p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    if-ge v0, v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return v7

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    iget-wide p0, p0, Lbxz;->b:J

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_30
    if-gez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7

    nop

    nop

    :goto_31
    const-wide/16 v3, 0x1

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, v1}, Lbxy;-><init>(Lbxz;Ltzy;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lbxy;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Lueb;->a()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-direct {p0, v0, v1}, Ldwf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

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

    :goto_b
    new-instance p0, Ldwf;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v7, ", "

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    check-cast v6, Ljava/lang/Character;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_7
    check-cast v2, Ljava/lang/Number;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p0, 0x5d

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_c
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_d
    instance-of v7, v6, Ljava/lang/Character;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_12
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_42

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    :goto_16
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_12

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v6, Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    const-string v2, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_24
    const/4 v4, 0x0

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

    :goto_25
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

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

    nop

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_2a

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

    nop

    :goto_2e
    const-string v1, " ["

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_31
    if-lt v4, v3, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v6, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_34
    const v1, 0x14

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

    :goto_35
    if-gt v5, v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_37
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p0, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_39
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3c
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_40
    instance-of v7, v6, Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_41
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_31

    nop

    nop

    :goto_43
    add-int/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_44
    goto/32 :goto_23

    nop

    nop

    :goto_45
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    :goto_46
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

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

    :goto_47
    return-object p0

    nop

    nop

    :goto_48
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v7, :cond_6

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
