.class public final Lnxq;
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

    nop

    nop

    :goto_0
    const-string v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lfum;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final e([B)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Lfum;->B(ILandroid/os/Parcel;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 p1, 0x1

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

    :goto_3
    invoke-virtual {p0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
