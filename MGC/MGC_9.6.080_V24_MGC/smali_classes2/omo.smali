.class public final Lomo;
.super Lfum;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoader"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lfum;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final e()I
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    invoke-virtual {p0, v0, v1}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

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

    :goto_9
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const v0, 0x12

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    nop
.end method
