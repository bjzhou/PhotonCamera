.class public final Ltsy;
.super Lttb;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lowk;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Lowk;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Ltsy;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lttb;-><init>()V

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

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lttb;->a(Landroid/os/Parcel;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lttb;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ltsy;->c:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput v0, p0, Ltsy;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Lttb;->a(Landroid/os/Parcel;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Ltsy;->b:F

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

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

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

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final describeContents()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget p2, p0, Ltsy;->b:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Ltsy;->c:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p2, p0, Ltsy;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1, p2}, Lttb;->writeToParcel(Landroid/os/Parcel;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
