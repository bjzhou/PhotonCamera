.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static read(Lekx;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 5

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-array v1, v1, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

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

    :goto_9
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:I

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_b
    const/16 v4, 0x8

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

    :goto_c
    if-ltz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_2
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->k:Ljava/lang/String;

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

    :goto_11
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

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

    nop

    :goto_12
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->k:Ljava/lang/String;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    :goto_15
    iput p0, v0, Landroidx/core/graphics/drawable/IconCompat;->g:I

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_16
    const-string v4, "UTF-16"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x3

    nop

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

    :goto_18
    if-eq p0, v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1a
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1c
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

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

    nop

    :goto_1d
    invoke-virtual {p0, v1, v4}, Lekx;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_21
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->k:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_23
    goto/16 :goto_67

    nop

    nop

    :goto_24
    goto/32 :goto_27

    nop

    nop

    :goto_25
    iget-object v3, p0, Lekx;->d:Landroid/os/Parcel;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_26
    const/4 v4, 0x6

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_28
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_29
    array-length p0, p0

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

    :goto_2a
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2b
    goto/32 :goto_35

    nop

    :goto_2c
    check-cast p0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_2d
    goto/16 :goto_67

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v1, v3}, Lekx;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v1, v4}, Lekx;->a(II)I

    move-result v1

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

    :goto_30
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->i:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput v3, v0, Landroidx/core/graphics/drawable/IconCompat;->b:I

    nop

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

    :goto_32
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->g:I

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

    nop

    :goto_33
    invoke-virtual {p0, v2}, Lekx;->s(I)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_34
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:[B

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_38
    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_39
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v3, -0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3b
    const/4 v1, 0x0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_3c
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:[B

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

    nop

    :goto_3d
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_67

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3f
    iget-object v3, v0, Landroidx/core/graphics/drawable/IconCompat;->d:[B

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {p0, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/32 :goto_4f

    nop

    nop

    :goto_41
    iget p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:I

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

    :goto_42
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_43
    invoke-static {p0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_44
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_45
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_46
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->d:[B

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_47
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_67

    nop

    :pswitch_3
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :goto_4a
    goto/32 :goto_3c

    nop

    nop

    :goto_4b
    aget-object p0, p0, v1

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

    :goto_4c
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4d
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4e
    const/4 v4, 0x4

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v1, v4}, Lekx;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:I

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

    :goto_52
    goto/16 :goto_67

    nop

    :pswitch_4
    goto/32 :goto_3d

    nop

    nop

    :goto_53
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->b:I

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string v2, ":"

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_55
    const/4 v4, 0x5

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_56
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, v1, v4}, Lekx;->b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_58
    if-eqz p0, :cond_6

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_5a
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_5b
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5c
    invoke-virtual {p0, v1, v2}, Lekx;->a(II)I

    move-result v1

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

    :goto_5d
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5e
    iget-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->d:[B

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

    :goto_5f
    const v1, 0x19

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_62
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->k:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_63
    const-string v0, "Invalid icon"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_64
    check-cast v1, Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0, v1, v4}, Lekx;->a(II)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_66
    throw p0

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v1, p0, Lekx;->d:Landroid/os/Parcel;

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
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Lekx;)V
    .locals 3

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0, v0}, Lekx;->j(Ljava/lang/String;I)V

    :goto_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:[B

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "UTF-16"

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0, v1}, Lekx;->j(Ljava/lang/String;I)V

    :goto_8
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/String;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_22

    nop

    nop

    :pswitch_1
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x6

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_3f

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0, v1}, Lekx;->h(II)V

    :goto_10
    goto/32 :goto_16

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_17
    const/4 v1, -0x1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_18
    array-length v2, v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v1}, Lekx;->p(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0, v1}, Lekx;->i(Landroid/os/Parcelable;I)V

    :goto_1d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0, v1}, Lekx;->i(Landroid/os/Parcelable;I)V

    :goto_20
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v0, Landroid/os/Parcelable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    check-cast v0, Landroid/os/Parcelable;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

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
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->i:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2b
    iget-object v1, p1, Lekx;->d:Landroid/os/Parcel;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v0, v1}, Lekx;->h(II)V

    :goto_2d
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :goto_2f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:[B

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

    nop

    :goto_31
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    :goto_32
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x12

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_37
    if-ne v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->g:I

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_39
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->d:[B

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_22

    nop

    :pswitch_2
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, p1, Lekx;->d:Landroid/os/Parcel;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_40
    invoke-virtual {p1, v0, v1}, Lekx;->h(II)V

    :goto_41
    goto/32 :goto_38

    nop

    nop

    :goto_42
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_43
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_44
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

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

    :goto_45
    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_46
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_7
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_49
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

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

    :goto_4a
    goto/16 :goto_22

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->e:Landroid/os/Parcelable;

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

    :goto_4c
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->f:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4d
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->b:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_22

    nop

    nop

    :pswitch_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/content/res/ColorStateList;

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

    nop

    :goto_50
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->k:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_51
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_55

    nop

    nop

    :goto_52
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_53
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/16 v0, 0x8

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

    :goto_55
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop
.end method
