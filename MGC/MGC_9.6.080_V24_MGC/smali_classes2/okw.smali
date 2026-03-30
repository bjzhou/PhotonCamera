.class public final Lokw;
.super Lfum;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    goto/32 :goto_1

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

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

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
    invoke-direct {p0, p1, v0}, Lfum;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final e(Logn;)Logo;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    check-cast p1, Logo;

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
    const/4 p1, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    sget-object p1, Logo;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, p1}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, v0}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p1

    nop

    nop

    nop

    nop
.end method

.method public final f()Z
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lfuo;->e(Landroid/os/Parcel;)Z

    move-result v0

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    const/4 v0, 0x7

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

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    const v0, 0x6

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0, v1}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

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

    :goto_c
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    const v1, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
