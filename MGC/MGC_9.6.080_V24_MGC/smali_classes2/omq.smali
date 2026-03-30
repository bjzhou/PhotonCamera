.class public final Lomq;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Lomr;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    new-instance v0, Lomr;

    nop

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

    :goto_3
    invoke-direct {v0, v1}, Lomr;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const v0, 0xa

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

    :goto_6
    sput-object v0, Lomq;->CREATOR:Lomr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xa

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object p4, p0, Lomq;->d:Ljava/lang/String;

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

    nop

    :goto_1
    iput-object p3, p0, Lomq;->c:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p1, p0, Lomq;->a:Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lomq;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p6, p0, Lomq;->f:Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lomq;->b:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    return-void

    nop
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    iget-object v1, p0, Lomq;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0, v1}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p2}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0, v1}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v0, v1}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_13

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lomq;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    :goto_c
    iget-object v1, p0, Lomq;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lomq;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result p2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lomq;->e:Ljava/lang/String;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    invoke-static {p1, v0, p0}, Lolx;->o(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, v0, v1}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, v0, v1}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    const/4 v0, 0x7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lomq;->f:Landroid/os/Bundle;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method
