.class public Ldxv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final c:Ldxv;


# instance fields
.field public final d:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_10

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

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x4

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

    :goto_8
    sput-object v0, Ldxv;->c:Ldxv;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ldxu;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    sput-object v0, Ldxv;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lkt;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xe

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

    :goto_f
    new-instance v0, Lkt;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ldxu;

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ldxv;->d:Landroid/os/Parcelable;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldxv;->d:Landroid/os/Parcelable;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p1, Ldxv;->c:Ldxv;

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ldxv;->d:Landroid/os/Parcelable;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const-string p1, "superState must not be null"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ldxv;->c:Ldxv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    goto/32 :goto_2

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
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldxv;->d:Landroid/os/Parcelable;

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

    nop
.end method
