.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:I

.field public final b:Landroid/content/Context;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Leel;

.field private g:Ljava/lang/CharSequence;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-static {p1, v0, v1}, Ldsw;->I(Landroid/content/Context;II)I

    move-result v0

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

    :goto_6
    const v1, 0x101008e

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const v0, 0x7f040566

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    const/16 p0, 0x19

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p2, 0x1c

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

    :goto_3
    const/16 p3, 0xc

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

    nop

    :goto_4
    const/16 p3, 0xa

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

    :goto_5
    if-nez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 p2, 0x20

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

    :goto_7
    invoke-static {p1, p2, p3, v0}, Ldsw;->N(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

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

    :goto_9
    invoke-static {p1, p2, p3, v0}, Ldsw;->N(Landroid/content/res/TypedArray;IIZ)Z

    goto/32 :goto_5b

    nop

    nop

    :goto_a
    const/16 p0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b
    if-nez p3, :cond_1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    :goto_c
    const/16 p3, 0xd

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Landroidx/preference/Preference;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Landroidx/preference/Preference;->h:Z

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    const/16 p2, 0xb

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_11
    const/16 p2, 0x1f

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    :goto_13
    iput p2, p0, Landroidx/preference/Preference;->a:I

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

    :goto_14
    invoke-static {p1, p2, p3}, Ldsw;->M(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, p2, p3, v2}, Ldsw;->U(Landroid/content/res/TypedArray;III)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean p3, p0, Landroidx/preference/Preference;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_17
    const/4 p3, 0x5

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

    :goto_18
    invoke-static {p1, p2, p2, p3}, Ldsw;->N(Landroid/content/res/TypedArray;IIZ)Z

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean p3, p0, Landroidx/preference/Preference;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1, p2, v0, v0}, Ldsw;->N(Landroid/content/res/TypedArray;IIZ)Z

    goto/32 :goto_5c

    nop

    nop

    :goto_1b
    const/16 p2, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_51

    nop

    nop

    :goto_1d
    invoke-static {p1, p2, p3, v0}, Ldsw;->N(Landroid/content/res/TypedArray;IIZ)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x17

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1, v1, p2, p3}, Ldsw;->U(Landroid/content/res/TypedArray;III)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x7fffffff

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p3, 0x2

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

    :goto_22
    sget-object v1, Leem;->f:[I

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

    nop

    :goto_23
    const/4 p3, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_24
    const/16 p2, 0x22

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 p2, 0x18

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
    const/16 p3, 0xf

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_27
    iput-object p2, p0, Landroidx/preference/Preference;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

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

    :goto_29
    const/16 p2, 0x23

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1, p2, p3}, Ldsw;->M(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    goto/32 :goto_45

    nop

    nop

    :goto_2b
    invoke-static {p1, p2, p3}, Ldsw;->Q(Landroid/content/res/TypedArray;II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 p3, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1, p2, p2, p3}, Ldsw;->N(Landroid/content/res/TypedArray;IIZ)Z

    goto/32 :goto_1b

    nop

    nop

    :goto_2e
    invoke-static {p1, p2, p3}, Ldsw;->L(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2f
    const v1, 0x11

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/16 p2, 0x1d

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/16 p2, 0x1a

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/16 p3, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_34
    const p3, 0x7f0e0100

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_35
    const/4 p3, 0x7

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_36
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p1, p2, v2, v2}, Ldsw;->U(Landroid/content/res/TypedArray;III)V

    goto/32 :goto_31

    nop

    nop

    :goto_39
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 p2, 0x11

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object p2, p0, Landroidx/preference/Preference;->g:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput-boolean p2, p0, Landroidx/preference/Preference;->h:Z

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {p1, p0, p0, v2}, Ldsw;->N(Landroid/content/res/TypedArray;IIZ)Z

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3e
    const/16 p2, 0x16

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->b(Landroid/content/res/TypedArray;I)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v1, 0x1b

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

    :goto_41
    const/16 p3, 0x9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 p3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_43
    invoke-static {p1, p2, p3, v2}, Ldsw;->N(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_44
    iput-object p2, p0, Landroidx/preference/Preference;->c:Ljava/lang/CharSequence;

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

    :goto_45
    const/4 p2, 0x3

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
    invoke-static {p1, p0, p0, v0}, Ldsw;->N(Landroid/content/res/TypedArray;IIZ)Z

    goto/32 :goto_a

    nop

    nop

    :goto_47
    goto :goto_52

    nop

    :goto_48
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/16 p2, 0x21

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4a
    const/16 p2, 0x17

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/16 p2, 0x15

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4c
    iput-boolean p2, p0, Landroidx/preference/Preference;->e:Z

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

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4e
    invoke-static {p1, p2, p3}, Ldsw;->L(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

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

    :goto_4f
    invoke-static {p1, p2, p3, v0}, Ldsw;->N(Landroid/content/res/TypedArray;IIZ)Z

    :goto_50
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->b(Landroid/content/res/TypedArray;I)V

    :goto_52
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v0, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_55
    iput v0, p0, Landroidx/preference/Preference;->a:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_57
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5a
    invoke-static {p1, p2, p3}, Ldsw;->M(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/16 p2, 0x1e

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/16 p2, 0x13

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/16 p2, 0x10

    nop

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
.end method


# virtual methods
.method protected b(Landroid/content/res/TypedArray;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroidx/preference/Preference;->g:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p0}, Leel;->a(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/preference/Preference;->f:Leel;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method protected cF()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    sub-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    goto/16 :goto_1d

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_a
    iget v1, p1, Landroidx/preference/Preference;->a:I

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

    :goto_b
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Landroidx/preference/Preference;->c:Ljava/lang/CharSequence;

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

    :goto_d
    const/4 v0, 0x1

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    :goto_11
    const v0, 0x1e

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

    nop

    :goto_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    :goto_14
    iget v0, p0, Landroidx/preference/Preference;->a:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    goto :goto_1d

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Landroidx/preference/Preference;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    iget-object v0, p1, Landroidx/preference/Preference;->c:Ljava/lang/CharSequence;

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
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Landroidx/preference/Preference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    :goto_1e
    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    :goto_20
    if-eq p0, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz p0, :cond_4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_10

    nop

    nop

    :goto_23
    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public final d(Leel;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->cF()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroidx/preference/Preference;->f:Leel;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Landroidx/preference/Preference;->h:Z

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
    iput-boolean v0, p0, Landroidx/preference/Preference;->h:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

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
    invoke-virtual {p0}, Landroidx/preference/Preference;->cF()V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

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

    nop

    :goto_3
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    const/16 v3, 0x20

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    if-gtz p0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_15

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroidx/preference/Preference;->c()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Landroidx/preference/Preference;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

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

    :goto_1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    :goto_1f
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_18

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
.end method
