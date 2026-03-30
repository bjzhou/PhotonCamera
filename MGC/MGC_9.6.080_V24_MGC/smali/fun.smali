.class public Lfun;
.super Landroid/os/Binder;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;
.implements Lcom/google/vr/dynamite/client/IObjectWrapper;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p0, p1}, Lfun;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gt p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

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
    return p0

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
    if-nez p4, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xffffff

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p2, p3}, Lfun;->y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lfun;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    return p0

    nop
.end method

.method protected y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method
