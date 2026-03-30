.class public final Ldsh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:I

.field f:Ldso;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    iget v5, p0, Ldsh;->e:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, p1, v4}, Ldso;->h(Landroid/content/Context;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    iget v3, p0, Ldsh;->a:F

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

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v4, 0x4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Ldsh;->b:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

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

    nop

    nop

    :goto_8
    iget v3, p0, Ldsh;->e:I

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_9
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Ldsh;->c:F

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v3, v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

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

    :goto_10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_11
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    iput v3, p0, Ldsh;->d:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Ldsh;->a:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    if-eq v3, v4, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v3, p0, Ldsh;->f:Ldso;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    iget v3, p0, Ldsh;->b:F

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_19
    const/4 v4, 0x1

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

    :goto_1a
    const-string v4, "layout"

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

    :goto_1b
    goto/16 :goto_38

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v3, p0, Ldsh;->d:F

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x19

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1f
    iget v4, p0, Ldsh;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    if-nez v3, :cond_2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_24
    sget-object v0, Ldss;->j:[I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_25
    iput v3, p0, Ldsh;->c:F

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_26
    invoke-direct {v3}, Ldso;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lt v2, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput v3, p0, Ldsh;->e:I

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

    :goto_2a
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2c
    iput v0, p0, Ldsh;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2d
    if-eq v3, v4, :cond_4

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

    :cond_4
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

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

    :goto_31
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput v3, p0, Ldsh;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_34
    new-instance v3, Ldso;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_35
    goto :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput v3, p0, Ldsh;->a:F

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_42

    nop

    nop

    :goto_39
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3a
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3b
    goto :goto_38

    nop

    :goto_3c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3f
    iget v4, p0, Ldsh;->e:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput v0, p0, Ldsh;->d:F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_43
    move v2, v1

    nop

    :goto_44
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    :goto_46
    goto :goto_44

    nop

    nop

    :goto_47
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v3, p0, Ldsh;->c:F

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4a
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v4, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4c
    if-eqz v3, :cond_7

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method
