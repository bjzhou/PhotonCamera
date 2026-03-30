.class public final Lois;
.super Lfun;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lpic;


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

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.gms.common.api.internal.IStatusCallback"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Lpic;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p2, p0, Lois;->b:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const-string p1, "com.google.android.gms.common.api.internal.IStatusCallback"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p1, p0, Lois;->a:Ljava/lang/Object;

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
.end method


# virtual methods
.method protected final y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p3, 0x1

    nop

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
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    return p3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-static {p1, p0, p2}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-object p2, p0, Lois;->b:Lpic;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

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

    :goto_8
    iget-object p0, p0, Lois;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_6

    nop

    nop

    :goto_b
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    if-eq p1, p3, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop
.end method
