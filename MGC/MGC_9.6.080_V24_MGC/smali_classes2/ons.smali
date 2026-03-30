.class public Lons;
.super Lfun;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.gms.googlehelp.internal.common.IGoogleHelpCallbacks"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public b(Lcom/google/android/gms/googlehelp/GoogleHelp;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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

    nop

    :goto_3
    const/4 p0, 0x1

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    :pswitch_0
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_27

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p0, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_f
    throw p0

    nop

    :pswitch_2
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    goto/32 :goto_3d

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Lons;->b(Lcom/google/android/gms/googlehelp/GoogleHelp;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_e
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_10
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_d
        :pswitch_f
        :pswitch_3
        :pswitch_11
        :pswitch_1
        :pswitch_8
        :pswitch_b
        :pswitch_12
        :pswitch_a
    .end packed-switch

    :goto_15
    check-cast p0, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_10

    nop

    nop

    :goto_17
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    :pswitch_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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

    :goto_1b
    throw p0

    nop

    nop

    :pswitch_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    check-cast p0, Lonl;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    throw p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_30

    nop

    nop

    :goto_2b
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2e
    throw p0

    nop

    nop

    :pswitch_9
    goto/32 :goto_48

    nop

    nop

    :goto_2f
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_30
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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

    :goto_31
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_13

    nop

    nop

    :goto_32
    sget-object p1, Lcom/google/android/gms/googlehelp/GoogleHelp;->CREATOR:Landroid/os/Parcelable$Creator;

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

    :goto_33
    check-cast p1, Lcom/google/android/gms/googlehelp/GoogleHelp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_34
    return p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_36
    sget-object p0, Lonl;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    goto/32 :goto_4a

    nop

    nop

    :goto_38
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_45

    nop

    nop

    :goto_3a
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3d
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3f
    throw p0

    nop

    nop

    :pswitch_c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_40
    throw p0

    nop

    nop

    :pswitch_d
    goto/32 :goto_47

    nop

    nop

    :goto_41
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_42
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    throw p0

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_e

    nop

    nop

    :goto_44
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_45
    throw p0

    nop

    nop

    :pswitch_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_47
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_48
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_28

    nop

    nop

    :goto_4b
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_1f

    nop

    nop

    :goto_4c
    throw p0

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_4f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method
