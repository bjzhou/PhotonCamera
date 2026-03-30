.class public final Logn;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Logn;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lofh;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Lofh;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-boolean p5, p0, Logn;->d:Z

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    check-cast p1, Lome;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p6, p0, Logn;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Logn;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-static {p1}, Lomd;->b(Lome;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_9
    new-instance p1, Lomc;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p1, "com.google.android.gms.dynamic.IObjectWrapper"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Logn;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1, p4}, Lomc;-><init>(Landroid/os/IBinder;)V

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean p3, p0, Logn;->c:Z

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

    :goto_12
    invoke-interface {p4, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    iput-boolean p2, p0, Logn;->b:Z

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    instance-of p2, p1, Lome;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    check-cast p1, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const/4 p2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    new-instance p2, Lomd;

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

    :goto_2
    const/4 p2, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2, v1}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    iget-object v1, p0, Logn;->f:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, p2, v1}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p2, v1}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-direct {p2, v1}, Lomd;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p2, 0x3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v1, p0, Logn;->b:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const v1, 0x3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v1, p0, Logn;->d:Z

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

    :goto_12
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_13

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    :goto_16
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p2, p0, Logn;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1, v1, p2}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, v1, p2}, Lolx;->r(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    iget-boolean p0, p0, Logn;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    const/4 p2, 0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    invoke-static {p1, p2, p0}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    iget-boolean v1, p0, Logn;->c:Z

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

    nop

    nop
.end method
