.class public final Lttj;
.super Ltsr;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ltte;-><init>(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ltte;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lttj;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

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

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v1, 0x18

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

    nop

    :goto_c
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltsr;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
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
    invoke-direct {p0, p1}, Ltsr;-><init>(Landroid/os/Parcel;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Ltsr;->a:[B

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lttj;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v0, p1, Lttj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-eq p1, p0, :cond_0

    nop

    nop

    goto/32 :goto_1

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

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Ltsr;->a:[B

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop
.end method
