.class public Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltav;


# static fields
.field public static final a:Lsdb;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    sput-object v0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const-string v0, "com.google.googlex.gcam.creativecamera.allin.jni.AllInNativeImpl"

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

    :goto_4
    sput-object v0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->a:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->init()V

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    if-nez p0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v0, p0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->b:J

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

    :goto_13
    const v0, 0x1d

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a([B)Ltbf;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Unable to parse response."

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const-string v2, "AllInNativeProcessor"

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    const v0, 0x15

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    :goto_6
    :try_start_0
    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v1, Ltbf;->a:Ltbf;

    nop

    nop

    nop

    array-length v2, p0

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    invoke-static {v1, p0, v3, v2, v0}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object p0

    nop

    nop

    invoke-static {p0}, Ltkg;->E(Ltkg;)V

    check-cast p0, Ltbf;

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0x15ab

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, p0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    sget-object v0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v1, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lscz;

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

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    :goto_16
    const v1, 0x1e

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

    :goto_17
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    sget-object p0, Ltbf;->a:Ltbf;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static native init()V
.end method


# virtual methods
.method public native createImpl([B)[B
.end method

.method public native delete(J)[B
.end method

.method public native endSessionImpl(JI)[B
.end method

.method public native getPersonFiguresImpl(JIJ[B)[B
.end method

.method public native mergeSecondImageImpl(JIJJ[B[BZLjava/lang/Runnable;)[B
.end method

.method public native processFirstFullResImageImpl(JIJJLjava/lang/Runnable;)[B
.end method

.method public native startSessionImpl(JI)[B
.end method
