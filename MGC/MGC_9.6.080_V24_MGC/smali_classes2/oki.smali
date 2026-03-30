.class public final Loki;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final a:[Lcom/google/android/gms/common/api/Scope;

.field public static final b:[Logb;


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Ljava/lang/String;

.field public g:Landroid/os/IBinder;

.field public h:[Lcom/google/android/gms/common/api/Scope;

.field public i:Landroid/os/Bundle;

.field public j:Landroid/accounts/Account;

.field public k:[Logb;

.field public l:[Logb;

.field public m:Z

.field public n:I

.field public o:Z

.field public p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lofh;-><init>(I)V

    goto/32 :goto_c

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

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x13

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lofh;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Loki;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    sput-object v0, Loki;->b:[Logb;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    const/4 v0, 0x0

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

    :goto_f
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_11
    sput-object v1, Loki;->a:[Lcom/google/android/gms/common/api/Scope;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-array v0, v0, [Logb;

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Logb;[Logb;ZIZLjava/lang/String;)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of p4, p3, Lokq;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p4, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Loki;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p7, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_3f

    nop

    nop

    :catch_0
    :try_start_0
    const-string p2, "AccountAccessor"

    nop

    const-string p3, "Remote account accessor probably died"

    nop

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    iput p3, p0, Loki;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_8
    iput-object p9, p0, Loki;->k:[Logb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    invoke-interface {p5, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :goto_b
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/32 :goto_21

    nop

    nop

    :goto_10
    new-instance p7, Landroid/os/Bundle;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    iput-object p14, p0, Loki;->p:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    iput p12, p0, Loki;->n:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Loki;->j:Landroid/accounts/Account;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p3, "com.google.android.gms.common.internal.IAccountAccessor"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    iput-boolean p11, p0, Loki;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    iput p1, p0, Loki;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p3, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean p13, p0, Loki;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    if-lt p1, p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1d
    iput p2, p0, Loki;->d:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p8, p0, Loki;->j:Landroid/accounts/Account;

    nop

    nop

    :goto_20
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    move-object p1, p3

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

    nop

    nop

    :goto_22
    iput-object p7, p0, Loki;->i:Landroid/os/Bundle;

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

    nop

    nop

    :goto_23
    iput-object p10, p0, Loki;->l:[Logb;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p3, Lokq;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_27
    iput-object p6, p0, Loki;->h:[Lcom/google/android/gms/common/api/Scope;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_28
    sget-object p10, Loki;->b:[Logb;

    nop

    :goto_29
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2a
    const-string p2, "com.google.android.gms"

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2b
    invoke-direct {p3, p5}, Lokq;-><init>(Landroid/os/IBinder;)V

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2f
    sget-object p9, Loki;->b:[Logb;

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_36

    nop

    nop

    :goto_31
    iput-object p4, p0, Loki;->f:Ljava/lang/String;

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_26

    nop

    nop

    :goto_33
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz p9, :cond_4

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez p5, :cond_5

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz p10, :cond_6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object p6, Loki;->a:[Lcom/google/android/gms/common/api/Scope;

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez p3, :cond_7

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object p5, p0, Loki;->g:Landroid/os/IBinder;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p3, Lokq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p3}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p8

    nop

    nop

    nop

    nop

    invoke-virtual {p3, p2, p8}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p2

    nop

    nop

    sget-object p3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    invoke-static {p2, p3}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    nop

    nop

    nop

    check-cast p3, Landroid/accounts/Account;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_3d
    if-eqz p6, :cond_8

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_31

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Lofh;->a(Loki;Landroid/os/Parcel;I)V

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
