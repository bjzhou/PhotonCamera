.class public final Lrht;
.super Ldxv;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lrht;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    invoke-direct {v0, v1}, Lrfu;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lrfu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

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

    :goto_3
    if-eq p1, p2, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x0

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iput-boolean p2, p0, Lrht;->a:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x1

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

    :goto_8
    invoke-direct {p0, p1, p2}, Ldxv;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    goto/32 :goto_2

    nop

    nop

    :goto_9
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ldxv;-><init>(Landroid/os/Parcelable;)V

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


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lrht;->a:Z

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
    invoke-super {p0, p1, p2}, Ldxv;->writeToParcel(Landroid/os/Parcel;I)V

    goto/32 :goto_1

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
.end method
