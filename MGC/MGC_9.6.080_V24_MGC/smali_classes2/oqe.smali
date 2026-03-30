.class public final Loqe;
.super Lolk;
.source "PG"

# interfaces
.implements Lohn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field public b:I

.field public c:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Lomr;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

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

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Loqe;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    const/16 v1, 0x9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lomr;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x12

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x2

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
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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
    goto/32 :goto_2

    nop

    :goto_a
    const/4 v1, 0x0

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

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    invoke-direct {p0, v2, v0, v1}, Loqe;-><init>(IILandroid/content/Intent;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput p1, p0, Loqe;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Loqe;->c:Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_3

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
    iput p2, p0, Loqe;->b:I

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
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/Status;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Loqe;->b:I

    nop

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
    sget-object p0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    sget-object p0, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iget v2, p0, Loqe;->a:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-static {p1, v1, p0, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, v1, v2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    iget v2, p0, Loqe;->b:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, v1, v2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_10
    iget-object p0, p0, Loqe;->c:Landroid/content/Intent;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x2

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
.end method
