.class abstract Lrsb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field final b:Ljava/lang/CharSequence;

.field final c:Z

.field d:I

.field e:I

.field private f:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lrth;Ljava/lang/CharSequence;)V
    .locals 1

    goto/32 :goto_0

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lrsb;->c:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const/4 v0, 0x2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean p1, p1, Lrth;->a:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput-object p2, p0, Lrsb;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const p1, 0x7fffffff

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

    :goto_7
    iput v0, p0, Lrsb;->a:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Lrsb;->d:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iput p1, p0, Lrsb;->e:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(I)I
.end method

.method public final hasNext()Z
    .locals 9

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_0
    const/4 v6, -0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    iput v7, p0, Lrsb;->d:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v0, v3, :cond_0

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

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v0, v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lrsb;->d:I

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_27

    nop

    nop

    :goto_7
    add-int/lit8 v6, v3, -0x1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v6, p0, Lrsb;->d:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v7, p0, Lrsb;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_a
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p0, Lrsb;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lrsb;->a:I

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Lrsb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_f
    iput-object v5, p0, Lrsb;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    :goto_13
    goto/32 :goto_16

    nop

    nop

    :goto_14
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    iget v5, p0, Lrsb;->e:I

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v7, p0, Lrsb;->c:Z

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v0, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5c

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

    :goto_18
    return v2

    nop

    :goto_19
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lrsb;->a:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v3, v6, :cond_3

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

    :cond_3
    goto/32 :goto_52

    nop

    nop

    :goto_1c
    move v7, v6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    iget-object v7, p0, Lrsb;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/2addr v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x2

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

    :goto_20
    if-eq v3, v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-ne v0, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

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

    :goto_22
    iput v5, p0, Lrsb;->e:I

    nop

    nop

    :goto_23
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v5, p0, Lrsb;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_25
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v3, p0, Lrsb;->d:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v7, p0, Lrsb;->d:I

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2b
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v5, p0, Lrsb;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2d
    iput v2, p0, Lrsb;->a:I

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

    :goto_2e
    iget-object v3, p0, Lrsb;->b:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_30
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_6
    goto/32 :goto_4b

    nop

    :goto_31
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_35
    iput v3, p0, Lrsb;->a:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_37
    if-gt v3, v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_38
    if-ne v4, v0, :cond_8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_39
    return v2

    nop

    nop

    :goto_3a
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_23

    nop

    nop

    :goto_3c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_39

    nop

    nop

    :goto_3f
    iput v6, p0, Lrsb;->d:I

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

    nop

    :goto_40
    iput v4, p0, Lrsb;->a:I

    nop

    :goto_41
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_42
    invoke-interface {v5, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_43
    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    :goto_44
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput v6, p0, Lrsb;->d:I

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_48
    throw v5

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4a
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_d

    nop

    nop

    :goto_4d
    iget-object v3, p0, Lrsb;->b:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_4e
    if-lt v0, v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v1, 0x19

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

    :goto_50
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_51
    add-int/lit8 v4, v0, -0x1

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

    :goto_52
    invoke-virtual {p0, v3}, Lrsb;->b(I)I

    move-result v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_53
    if-gt v7, v3, :cond_a

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    add-int/lit8 v8, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_55
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_56
    if-ne v0, v3, :cond_b

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4

    nop

    nop

    :goto_57
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v0, :cond_c

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_5a
    if-eq v7, v0, :cond_d

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_d
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5d
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_5f
    if-eq v5, v2, :cond_e

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_e
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v1, 0x0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v7, :cond_f

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_63
    iget v0, p0, Lrsb;->a:I

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

    :goto_64
    invoke-virtual {p0, v3}, Lrsb;->a(I)I

    move-result v7

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

.method public final next()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrsb;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrsb;->f:Ljava/lang/Object;

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

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v1, p0, Lrsb;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    iput v0, p0, Lrsb;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

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
    new-instance p0, Ljava/util/NoSuchElementException;

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

    :goto_c
    goto/32 :goto_a

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    const/4 v0, 0x2

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

    :goto_13
    return-object v0

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final remove()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method
