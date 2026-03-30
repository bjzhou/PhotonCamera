.class public final Lnu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Landroid/content/IntentSender;

.field public final b:Landroid/content/Intent;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    new-instance v0, Lak;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Lak;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0xa

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
    sput-object v0, Lnu;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V
    .locals 0

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lnu;->b:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnu;->a:Landroid/content/IntentSender;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput p4, p0, Lnu;->d:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput p3, p0, Lnu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnu;->b:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnu;->a:Landroid/content/IntentSender;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p2, p0, Lnu;->c:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lnu;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
