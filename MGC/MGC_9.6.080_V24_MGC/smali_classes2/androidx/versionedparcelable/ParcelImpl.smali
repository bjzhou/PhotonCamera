.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Leky;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lekw;

    nop

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
    invoke-direct {v0}, Lekw;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

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

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lekx;->c()Leky;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->a:Leky;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p1}, Lekx;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    new-instance v0, Lekx;

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
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance p2, Lekx;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object p0, p0, Landroidx/versionedparcelable/ParcelImpl;->a:Leky;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p2, p1}, Lekx;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-virtual {p2, p0}, Lekx;->k(Leky;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
