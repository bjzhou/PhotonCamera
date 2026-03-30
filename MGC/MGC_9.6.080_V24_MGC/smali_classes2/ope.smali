.class public final Lope;
.super Lolk;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Lopd;

.field public final c:Landroid/app/PendingIntent;

.field public final d:Ljava/lang/String;

.field private final e:Look;

.field private final f:Loos;

.field private final g:Looh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    sput-object v0, Lope;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-direct {v0, v1}, Lolf;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    const/16 v1, 0x14

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x20

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lolf;

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public constructor <init>(ILopd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-interface {p3, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of p2, p1, Loos;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    if-nez p4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p2, Look;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    instance-of v0, p2, Look;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    :goto_d
    iput-object p2, p0, Lope;->b:Lopd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lope;->f:Loos;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p3, :cond_1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object p2, p1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    new-instance p2, Looi;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p4, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    iput-object p7, p0, Lope;->d:Ljava/lang/String;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    iput p1, p0, Lope;->a:I

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

    :goto_16
    new-instance p2, Looh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_17
    const-string p2, "com.google.android.gms.location.ILocationListener"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    instance-of p3, p2, Looh;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    iput-object p2, p0, Lope;->e:Look;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p2, p0, Lope;->g:Looh;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1b
    move-object p2, p1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p1, 0x0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p1, Looq;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

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

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    const-string p2, "com.google.android.gms.location.ILocationCallback"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p2, p3}, Looi;-><init>(Landroid/os/IBinder;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p3, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    nop

    :goto_26
    if-nez p2, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p1, Loos;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_28
    if-nez v0, :cond_4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    :goto_29
    goto/16 :goto_11

    nop

    :goto_2a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p2, p4}, Looh;-><init>(Landroid/os/IBinder;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_2c
    invoke-direct {p1, p6}, Looq;-><init>(Landroid/os/IBinder;)V

    :goto_2d
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    iput-object p5, p0, Lope;->c:Landroid/app/PendingIntent;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2f
    check-cast p2, Looh;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    sget-object p1, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->OixMcnUCfroOYk:Ljava/lang/String;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    if-eqz p2, :cond_0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p2, 0x6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_7
    invoke-static {p1, v3, v1}, Lolx;->r(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_1b

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2a

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1}, Look;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v1, v3, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lope;->e:Look;

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

    :goto_10
    invoke-static {p1, p2, p0}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    move-object v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, v1, p2}, Lolx;->r(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Lope;->c:Landroid/app/PendingIntent;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p2, v2}, Lolx;->r(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    goto/32 :goto_28

    nop

    nop

    :goto_15
    move-object p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1, v1, v2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_19
    const v0, 0x1f

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

    :goto_1a
    iget-object p2, p2, Lfum;->a:Landroid/os/IBinder;

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    :goto_1f
    invoke-interface {p2}, Loos;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    nop

    :goto_20
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    if-eqz p2, :cond_3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_b

    nop

    :goto_24
    invoke-static {p1, v1, v2, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p2, p0, Lope;->g:Looh;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    iget-object v2, p0, Lope;->b:Lopd;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lope;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 p2, 0x8

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_d

    nop

    :goto_2d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p2, p0, Lope;->f:Loos;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2f
    iget v2, p0, Lope;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_30
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_31
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
