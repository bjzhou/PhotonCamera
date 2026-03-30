.class final Lu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;
.implements Lo;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:D

.field private final e:D

.field private final f:[J

.field private final g:I


# direct methods
.method public constructor <init>(IZIZDD[J)V
    .locals 0

    goto/32 :goto_6

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

    nop

    :goto_1
    iput-object p9, p0, Lu;->f:[J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p7, p0, Lu;->e:D

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput p3, p0, Lu;->g:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p2, p0, Lu;->b:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p4, p0, Lu;->c:Z

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iput p1, p0, Lu;->a:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-wide p5, p0, Lu;->d:D

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a(Lq;)Z
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-double p1, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lu;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    if-ne v1, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move p1, v5

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p0, p1, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_6c

    nop

    nop

    :goto_6
    move p1, v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    move v0, p1

    nop

    nop

    :goto_9
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v1, v2, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_b
    move p1, v5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p1, p1, Lq;->b:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_3
    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v1, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_14
    int-to-double v3, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lu;->g:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_18
    long-to-double v6, v6

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean p0, p0, Lu;->b:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_38

    nop

    nop

    :goto_1b
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_7

    nop

    goto/32 :goto_68

    nop

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_53

    nop

    nop

    :goto_1f
    if-eq v0, v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    :goto_20
    move p1, v2

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_21
    if-lez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_5b

    nop

    :goto_23
    goto/32 :goto_4a

    nop

    nop

    :goto_24
    add-int/lit8 v1, v0, -0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    iget-wide v3, p1, Lq;->f:J

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_28
    cmpg-double p1, v3, v0

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

    :goto_29
    const/4 v5, 0x0

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

    :goto_2a
    const v1, 0x11

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    return v5

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3c

    nop

    nop

    :goto_2e
    if-ne v1, v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2f
    cmpl-double v1, v6, v8

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_30
    aget-wide v6, v1, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    cmpl-double p1, v3, v6

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

    nop

    :goto_32
    iget-object v0, p0, Lu;->f:[J

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_33
    aget-wide v6, v1, p1

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

    :goto_34
    const/4 v1, 0x7

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v1, p1, Lq;->b:I

    nop

    :goto_38
    goto/32 :goto_14

    nop

    nop

    :goto_39
    iget-wide v3, p1, Lq;->a:D

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-wide v0, p0, Lu;->d:D

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

    :goto_3b
    add-int/lit8 v0, v0, 0x2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget p1, p0, Lu;->a:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-wide v0, p0, Lu;->e:D

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

    :goto_3e
    if-ne v1, v3, :cond_c

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_5b

    nop

    :goto_40
    goto/32 :goto_66

    nop

    nop

    :goto_41
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_42
    array-length v6, v1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_43
    if-nez p1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    :cond_d
    goto/32 :goto_32

    nop

    nop

    :goto_44
    const/4 v3, 0x3

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_45
    sub-double v6, v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_46
    return v5

    nop

    :goto_47
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    long-to-double v6, v6

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_49
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4a
    iget-wide v3, p1, Lq;->e:J

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4b
    cmpg-double p1, v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4c
    if-gez p1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    double-to-long v6, v3

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

    :goto_4e
    goto/16 :goto_4

    nop

    :goto_4f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-wide v3, p1, Lq;->d:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_f
    goto/32 :goto_6a

    nop

    :goto_52
    iget-boolean v1, p0, Lu;->c:Z

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move p1, v5

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_55
    return v2

    nop

    :goto_56
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    int-to-double v0, p1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_58
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_59
    add-int/lit8 p1, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5a
    long-to-double v3, v3

    nop

    :goto_5b
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_5c
    if-gez p1, :cond_10

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

    :cond_10
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-lt v0, v6, :cond_11

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_19

    nop

    nop

    :goto_60
    rem-double/2addr v3, v0

    nop

    nop

    :goto_61
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v1, p0, Lu;->f:[J

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_63
    const-wide/16 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_64
    long-to-double v6, v6

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-eqz p1, :cond_12

    nop

    goto/32 :goto_5f

    nop

    :cond_12
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget v1, p1, Lq;->c:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-eqz v1, :cond_13

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_13
    :goto_68
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_69
    if-lez p1, :cond_14

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

    :cond_14
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6c
    return v2

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_6e
    const/4 v3, 0x5

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    goto/32 :goto_11

    nop

    nop

    :goto_0
    cmpl-double v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1c

    nop

    nop

    :goto_2
    const-string v0, "v"

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aget-wide v1, v0, v8

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Lu;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v1, p0, Lu;->d:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    move-object v0, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_32

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v0, p0, Lu;->d:D

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Lu;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
    iget-wide v3, p0, Lu;->e:D

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    :goto_11
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_14
    move v8, v7

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_51

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean v0, p0, Lu;->c:Z

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v1, " within "

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "f"

    nop

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

    :goto_1d
    goto/16 :goto_51

    nop

    nop

    :pswitch_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v0, "t"

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

    :goto_21
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_24
    goto/32 :goto_44

    nop

    nop

    :goto_25
    const/4 v5, 0x0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v0, p0, Lu;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_28
    const-string v2, " != "

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    array-length v1, v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto :goto_32

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v8, v8, 0x2

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v0, " % "

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

    :goto_2e
    move-object v0, v6

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

    :goto_2f
    const-string v0, "w"

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_30
    iget v0, p0, Lu;->a:I

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-object v1, v2

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lu;->f:[J

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

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

    :goto_35
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string v1, " = "

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_39
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-boolean v0, p0, Lu;->b:Z

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v1, " not within "

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3c
    const v1, 0x1a

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-wide v2, p0, Lu;->e:D

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

    :goto_3e
    move v5, v7

    nop

    :goto_3f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    long-to-double v1, v1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_f

    nop

    nop

    :goto_45
    if-nez v8, :cond_6

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-lt v8, v1, :cond_7

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_27

    nop

    nop

    :goto_48
    iget-object v0, p0, Lu;->f:[J

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_49
    long-to-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4a
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v0, "i"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_32

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    :goto_50
    const-string v0, "n"

    nop

    :goto_51
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    add-int/lit8 v3, v8, 0x1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static/range {v0 .. v5}, Lx;->b(Ljava/lang/StringBuilder;DDZ)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_54
    const-string v0, "j"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_55
    move v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_56
    goto :goto_51

    nop

    :pswitch_5
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_57
    invoke-static/range {v0 .. v5}, Lx;->b(Ljava/lang/StringBuilder;DDZ)V

    :goto_58
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    aget-wide v3, v0, v3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_32

    nop

    :goto_5c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5d
    iget v0, p0, Lu;->g:I

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop
.end method
