.class public Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final synthetic h:I

.field private static final i:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field final c:Ljava/lang/String;

.field public final d:Landroid/util/SparseArray;

.field public e:Z

.field public f:Lttn;

.field public g:Lqxk;

.field private final j:I

.field private final k:Lort;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(ILqxk;)Z
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const-string p2, "RemoteException while registering listener."

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "VrCtl.ServiceBridge"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v0, 0xb

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    :goto_6
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->f:Lttn;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->c:Ljava/lang/String;

    nop

    nop

    nop

    new-instance v1, Lort;

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    invoke-direct {v1, p2, v2}, Lort;-><init>(Lqxk;I)V

    invoke-virtual {v0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p2

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p0, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0, p2}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    nop

    invoke-static {p0}, Lfuo;->e(Landroid/os/Parcel;)Z

    move-result p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    return-void

    nop

    nop

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    const/4 v1, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x15

    nop

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

    :goto_c
    const v1, 0x7

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

    :goto_d
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;I)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->c:Ljava/lang/String;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p3, Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->k:Lort;

    nop

    :try_start_0
    invoke-static {p1}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltst; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->j:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    :goto_c
    new-instance v1, Lqxk;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p3, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p2, Lort;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->a:Landroid/content/Context;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    invoke-direct {p2, p0, p3}, Lort;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p2, v1, Lqxk;->a:I

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

    nop

    :goto_12
    iput-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->b:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string p3, "VrCtl.ServiceBridge"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    new-instance p2, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1, p2, v0, v2}, Lqxk;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lttg;I)V

    goto/32 :goto_27

    nop

    nop

    :goto_1b
    invoke-direct {v0, p3}, Lttg;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p3, 0x3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v0, Lttg;

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

    :goto_22
    const v1, 0x1

    nop

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

    :goto_23
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_28
    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public static final d()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_d
    const-string v1, "This should be running on the main thread."

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->f:Lttn;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "RemoteException while unregistering listeners."

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->f:Lttn;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    if-ge v0, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->f:Lttn;

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->k:Lort;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    nop

    nop

    invoke-static {v3, v2}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v2, 0x9

    nop

    nop

    invoke-virtual {v0, v2, v3}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lfuo;->e(Landroid/os/Parcel;)Z

    move-result v2

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez v2, :cond_2

    nop

    const-string v0, "Failed to unregister remote service listener."

    nop

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const-string v2, "Exception while unregistering remote service listener: "

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_9
    const-string p0, "Service is already unbound."

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->j:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    :goto_16
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v2, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v1, "VrCtl.ServiceBridge"

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

    :goto_1f
    goto/16 :goto_10

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_20
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->c:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x6

    nop

    invoke-virtual {v0, v2, v3}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lfuo;->e(Landroid/os/Parcel;)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/32 :goto_19

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_26
    const v0, 0x20

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->23ce148e54b083367f51e25c7971761em(ILqxk;)Z

    move-result v0

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

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lqxk;->c:Ljava/lang/Object;

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

    :goto_7
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->a()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "VrCtl.ServiceBridge"

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, v0, Lqxk;->a:I

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

    :goto_c
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d:Landroid/util/SparseArray;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Lqxk;->a:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    :goto_14
    invoke-interface {v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->i()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    iget-object p0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->f()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "Failed to register service listener."

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public final c(ILttj;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_12

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

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

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

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v1, p2}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    nop

    nop

    invoke-virtual {p0, p1, v1}, Lfum;->A(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_b

    nop

    :goto_5
    const v1, 0x20

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

    :goto_6
    const-string p0, "Vibration cancelled: service not connected"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    const-string p1, "RemoteException while vibrating the controller."

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "VrCtl.ServiceBridge"

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

    :goto_f
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d()V

    goto/32 :goto_14

    nop

    nop

    :goto_10
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    :goto_14
    iget-object p0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->f:Lttn;

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public controllerHapticsEffect(III)V
    .locals 5

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    iget v2, p2, Ltto;->b:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    or-int/2addr p2, v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p3, Lttq;->d:Ltto;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->b:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    iput p3, p2, Ltto;->d:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p3, Lttq;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d
    iget v4, v3, Ltto;->b:I

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

    :goto_e
    new-instance p3, Lttj;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    check-cast p2, Ltto;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p3, :cond_1

    nop

    goto/32 :goto_2c

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

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

    :goto_15
    iput p2, p3, Lttq;->b:I

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

    :goto_16
    iput p2, v3, Ltto;->c:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x2

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_18
    new-instance v0, Lstv;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_19
    or-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p3}, Lttj;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v3, Ltto;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v2, p2, Ltto;->b:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_1e
    goto/32 :goto_3b

    nop

    nop

    :goto_1f
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Lttq;->a:Lttq;

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

    :goto_21
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p3, p2}, Ltsr;->a(Ltlq;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p2, Ltto;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_2
    goto/32 :goto_38

    nop

    :goto_26
    iget-object p3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_30

    nop

    nop

    :goto_28
    move-object v3, v2

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

    nop

    :goto_29
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2a
    check-cast p2, Lttq;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_2c
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2d
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2f
    iget-object p3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_34
    sget-object v1, Ltto;->a:Ltto;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v0, p0, p1, p3, v3}, Lstv;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;ILttj;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget p2, p3, Lttq;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_37
    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3a
    iput v4, v3, Ltto;->b:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop
.end method

.method public createAndConnectController(ILcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;I)Z
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget p2, p3, Lqxk;->a:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->23ce148e54b083367f51e25c7971761em(ILqxk;)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move p1, v1

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x8

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    iget p2, p3, Lqxk;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    new-instance p3, Lqxk;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p3}, Lttg;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    const-string p1, "VrCtl.ServiceBridge"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p3, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    if-eqz p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    invoke-direct {p3, p2, v0, p1}, Lqxk;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lttg;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    :goto_14
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_a

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_a

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p3, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d:Landroid/util/SparseArray;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p3, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->f:Lttn;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_20
    return v1

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p2, :cond_4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string p2, "Failed to connect controller 0."

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v0, Lttg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "VrCtl.ServiceBridge"

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1
    instance-of v1, v0, Lttn;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_3
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-ge p2, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->f:Lttn;

    nop

    nop

    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->k:Lort;

    nop

    nop

    invoke-virtual {p2}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v1, v0}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v0, 0x8

    nop

    invoke-virtual {p2, v0, v1}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p2

    nop

    nop

    nop

    invoke-static {p2}, Lfuo;->e(Landroid/os/Parcel;)Z

    move-result v0

    nop

    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    const-string p2, "Failed to register remote service listener."

    nop

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    nop

    iget-object p2, p2, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->g(I)V

    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

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

    :catch_0
    move-exception p2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "Failed to call initialize() on controller service (RemoteException)."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p2, "FAILED_CLIENT_OBSOLETE"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v0, p2, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    :goto_a
    move-object p2, v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1e

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_e
    iget-object p1, p1, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_f
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "initialize() returned error: "

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p2, :cond_3

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

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->a()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_32

    nop

    nop

    :goto_16
    invoke-interface {p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->f()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :catch_1
    move-exception p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_45

    nop

    nop

    :goto_1d
    const-string p2, "[UNKNOWN CONTROLLER INIT RESULT: "

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->f:Lttn;

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p2}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v0

    nop

    const/16 v1, 0x19

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    nop

    invoke-virtual {p2, v1, v0}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p2

    nop

    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    move-object p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0, p2, v1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    goto :goto_2f

    nop

    :goto_26
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_2f

    nop

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    :goto_2a
    const-string v1, "]"

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2b
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string p2, "SUCCESS"

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_2f

    nop

    :goto_31
    goto/32 :goto_4f

    nop

    nop

    :goto_32
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerService"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_33
    new-instance v0, Lttn;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->b()V

    goto/32 :goto_17

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0, p2}, Lttn;-><init>(Landroid/os/IBinder;)V

    goto/32 :goto_a

    nop

    nop

    :goto_37
    if-ne v0, v1, :cond_7

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_38
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_b

    nop

    nop

    :goto_3a
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3b
    check-cast p2, Lttn;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3d
    const-string v0, "Exception while registering remote service listener: "

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->g(I)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_40
    goto/32 :goto_23

    nop

    nop

    :goto_41
    const v0, 0x18

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_43
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-ne v0, p2, :cond_9

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_45
    const-string p2, "FAILED_NOT_AUTHORIZED"

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 p2, 0x3

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

    :goto_47
    return-void

    nop

    nop

    :goto_48
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v0, 0x15

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p1, p1, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4c
    const/4 p2, 0x2

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->e:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4f
    const-string p2, "FAILED_UNSUPPORTED"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_51
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->j:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->g:Lqxk;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->e()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->f:Lttn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->d()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

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

    nop

    :goto_5
    iget-object p0, p0, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop
.end method

.method public requestBind()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lttk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lttk;

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

    :goto_b
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->b:Landroid/os/Handler;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public requestUnbind()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

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

    nop

    :goto_7
    invoke-direct {v0, p0, v1}, Lqxb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->b:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lqxb;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x14

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public vibrateController(IIII)V
    .locals 5

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object p2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    if-eqz p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iput v4, v3, Lttp;->b:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p2, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

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

    :goto_c
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p2, p3, Lttq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p3, Lttj;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    check-cast v3, Lttp;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v3, v2, Lttp;->b:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput p4, p2, Lttp;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v4, v3, Lttp;->b:I

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_18
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput p2, p3, Lttq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p2, Lttp;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1d
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v3, v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3b

    nop

    :goto_20
    or-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p3}, Lttj;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p3, p2}, Ltsr;->a(Ltlq;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_26
    iput p3, p2, Lttp;->b:I

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

    :goto_27
    iput p3, v2, Lttp;->d:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v2, Lttp;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2c
    invoke-direct {p4, p0, p1, p3, v0}, Lstv;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;ILttj;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Lttp;->a:Lttp;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p2, Lttq;

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

    :goto_2f
    iget v3, v2, Lttp;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_31
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_32
    check-cast p2, Lttp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_33
    iget-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->b:Landroid/os/Handler;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_34
    iput-object p2, p3, Lttq;->c:Lttp;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput p2, v3, Lttp;->c:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object p2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_37
    or-int/lit8 p3, p3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result p2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3d
    check-cast p3, Lttq;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3e
    or-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p3, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_41
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p3, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_43
    sget-object v0, Lttq;->a:Lttq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_44
    new-instance p4, Lstv;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_45
    iget p3, p2, Lttp;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_46
    or-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
