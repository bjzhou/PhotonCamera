.class public final Loio;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field public static final b:Lcom/google/android/gms/common/api/Status;

.field public static final c:Ljava/lang/Object;

.field public static d:Loio;


# instance fields
.field public e:J

.field public f:Z

.field public final g:Landroid/content/Context;

.field public final h:Logd;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Ljava/util/Map;

.field public l:Loii;

.field public final m:Ljava/util/Set;

.field public final n:Landroid/os/Handler;

.field public volatile o:Z

.field public final p:Lpqm;

.field private q:Loli;

.field private final r:Ljava/util/Set;

.field private s:Lolq;


# direct methods
.method private final 33b3102b6558811a7b7629a1e8e59bd2m()Lolq;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

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

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Loio;->s:Lolq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {v2, v0, v1}, Lolq;-><init>(Landroid/content/Context;Lolj;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Loio;->s:Lolq;

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

    :goto_a
    iput-object v2, p0, Loio;->s:Lolq;

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    sget-object v1, Lolj;->b:Lolj;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    iget-object v0, p0, Loio;->g:Landroid/content/Context;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v2, Lolq;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

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

    :cond_0
    :goto_2
    goto/32 :goto_15

    nop

    nop

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
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Loio;->q:Loli;

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

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

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v0}, Lolq;->a(Loli;)V

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    const v0, 0x15

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, v0, Loli;->a:I

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

    :goto_11
    if-lez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Loio;->g()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Loio;->q:Loli;

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

    nop

    nop

    :goto_14
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Loio;->33b3102b6558811a7b7629a1e8e59bd2m()Lolq;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Lohe;)Loil;
    .locals 6

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    check-cast v0, Loil;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, p1}, Loil;-><init>(Loio;Lohe;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    invoke-static {v4, v0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Loil;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_d
    const/4 v2, 0x0

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v4, v0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Loio;->r:Ljava/util/Set;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v4, 0x2d9

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    :goto_1d
    const/16 v4, 0x2d8

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1e
    iget-object v1, p1, Lohe;->e:Lohw;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Loio;->a:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const/4 v1, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    sput-object v0, Loio;->b:Lcom/google/android/gms/common/api/Status;

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_d
    const-string v2, "Sign-out occurred while this API call was in progress."

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

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v2, "The user must be signed in to make this API call."

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    sput-object v0, Loio;->c:Ljava/lang/Object;

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

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    :goto_15
    new-instance v0, Ljava/lang/Object;

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

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Logd;)V
    .locals 5

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p2, p3}, Lpqm;-><init>(Loge;)V

    goto/32 :goto_31

    nop

    nop

    :goto_2
    new-instance p2, Lpqm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput-object v1, p0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    iput-object v1, p0, Loio;->l:Loii;

    nop

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

    nop

    :goto_9
    if-eqz p2, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p2, "android.hardware.type.automotive"

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    :goto_c
    const/4 p0, 0x6

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

    :goto_d
    invoke-direct {v1, p2, p0}, Loof;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_f
    iput-object v1, p0, Loio;->r:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v2, p0, Loio;->o:Z

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Loio;->o:Z

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sput-object p1, Lolu;->b:Ljava/lang/Boolean;

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    sget-object p1, Lolu;->b:Ljava/lang/Boolean;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v4, 0x3f400000    # 0.75f

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1, v3, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    goto/32 :goto_29

    nop

    nop

    :goto_19
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v1, p0, Loio;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Loof;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    iput-object p3, p0, Loio;->h:Logd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    const-wide/16 v0, 0x2710

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v1}, Lww;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v1, Lww;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_24
    iput-object p1, p0, Loio;->g:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v1, p0, Loio;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_29
    iput-object v1, p0, Loio;->k:Ljava/util/Map;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2b
    new-instance v1, Lww;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v1, p0, Loio;->m:Ljava/util/Set;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

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

    :goto_2f
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-boolean v0, p0, Loio;->f:Z

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

    :goto_31
    iput-object p2, p0, Loio;->p:Lpqm;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_32
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-wide v0, p0, Loio;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v1}, Lww;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_37
    sget-object p2, Lolu;->b:Ljava/lang/Boolean;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

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

    nop

    :goto_39
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1d

    nop

    nop
.end method

.method public static a(Lohw;Lofz;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    goto/32 :goto_15

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :goto_6
    iget-object v1, p1, Lofz;->d:Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const-string p0, " is not available on this device. Connection failed with: "

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    const/16 v2, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    invoke-direct {v0, v2, p0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lofz;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lohw;->a()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    const-string v3, "API: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    const v0, 0x6

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

    :goto_16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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
.end method

.method public static c(Landroid/content/Context;)Loio;
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Loio;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto :goto_6

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_6
    sget-object p0, Loio;->d:Loio;

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const v1, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    :try_start_2
    sget-object v1, Loio;->d:Loio;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    sget-object v1, Lokl;->a:Ljava/lang/Object;

    nop

    monitor-enter v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v2, Lokl;->b:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    new-instance v2, Landroid/os/HandlerThread;

    nop

    nop

    const-string v3, "GoogleApiHandler"

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0x9

    nop

    nop

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lokl;->b:Landroid/os/HandlerThread;

    nop

    nop

    sget-object v2, Lokl;->b:Landroid/os/HandlerThread;

    nop

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    sget-object v2, Lokl;->b:Landroid/os/HandlerThread;

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_a
    :try_start_4
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Loio;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    sget-object v3, Logd;->a:Logd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v1, v3}, Loio;-><init>(Landroid/content/Context;Landroid/os/Looper;Logd;)V

    sput-object v2, Loio;->d:Loio;

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final b(Lohw;)Loil;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    check-cast p0, Loil;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final d(Lofz;I)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const/4 v0, 0x5

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
    invoke-virtual {p0, p1, p2}, Loio;->h(Lofz;I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_8
    const v1, 0x15

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Loio;->n:Landroid/os/Handler;

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

    :goto_4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final f(Loii;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    goto/32 :goto_7

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

    nop

    nop

    :goto_4
    const v1, 0x1b

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

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Loio;->l:Loii;

    nop

    nop

    if-eq v1, p1, :cond_0

    nop

    nop

    iput-object p1, p0, Loio;->l:Loii;

    nop

    nop

    nop

    iget-object v1, p0, Loio;->m:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_0
    iget-object p0, p0, Loio;->m:Ljava/util/Set;

    nop

    nop

    iget-object p1, p1, Loii;->e:Lww;

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Loio;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
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
.end method

.method final g()Z
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x20

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    return v1

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xc1fa340

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_20

    nop

    :goto_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Lolg;->a:Lolh;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lpqm;->i(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v0, v0, Lolh;->b:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

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

    :goto_10
    return p0

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

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

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

    :goto_19
    if-ne p0, v0, :cond_4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean v0, p0, Loio;->f:Z

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

    :goto_1b
    invoke-static {}, Lolg;->a()Lolg;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    :goto_1e
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    :goto_1f
    return v1

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Loio;->p:Lpqm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method final h(Lofz;I)Z
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, p2, v2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object p2

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

    :goto_1
    invoke-virtual {p0, v0, p1, p2}, Logd;->d(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

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

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    iget-object p0, p0, Loio;->h:Logd;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lolx;->an(Landroid/content/Context;)Z

    move-result v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_f
    iget v1, p1, Lofz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, p2, v1}, Lolx;->ak(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

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

    :goto_11
    iget-object v0, p0, Loio;->g:Landroid/content/Context;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    const/high16 v1, 0xa000000

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

    :goto_13
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

    nop

    nop

    nop

    :goto_14
    const v1, 0xd

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_16
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lofz;->a()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0, v1, v3}, Loge;->h(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_3

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    return v2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

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

    :goto_20
    iget-object v1, p1, Lofz;->d:Landroid/app/PendingIntent;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    iget p1, p1, Lofz;->c:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Loio;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lojb;

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    :goto_2
    invoke-virtual {v3, p0}, Lohp;->b(Loil;)[Logb;

    move-result-object v3

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

    nop

    :goto_3
    goto/16 :goto_180

    nop

    nop

    :goto_4
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean p1, p0, Loil;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    :goto_6
    new-instance p1, Ljava/lang/Exception;

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Loil;->n()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_8
    if-gez v4, :cond_0

    nop

    goto/32 :goto_ca

    nop

    nop

    :cond_0
    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p1, Lohy;->a:Lohy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    :goto_a
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d2

    nop

    nop

    :goto_d
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p1, Lohy;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_162

    nop

    nop

    :goto_10
    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lohv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Loio;->3fd9578e124c68aa49885b22b61b4ec8m()V

    :goto_13
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Loio;->g:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Loio;->r:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    :goto_16
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    :goto_18
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_39

    nop

    nop

    :goto_1a
    monitor-enter v0

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_20
    invoke-interface {p0, p1}, Logz;->j(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_162

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_183

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lwu;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    :goto_23
    if-eqz v4, :cond_3

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_3
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    :cond_4
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_26
    check-cast p1, Loim;

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_162

    nop

    nop

    :pswitch_0
    goto/32 :goto_df

    nop

    nop

    nop

    :goto_28
    sget v0, Logr;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Loil;->h:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v3, v2, Loil;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Loio;->q:Loli;

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_2e
    iget v1, p1, Lojb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p1, Lojb;->a:Loky;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_30
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :goto_31
    new-instance v1, Loli;

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p1, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p1, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_162

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_66

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_37
    if-eqz v1, :cond_6

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, v3, Loil;->d:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_162

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_3a
    instance-of p1, p1, Landroid/app/Application;

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v1, v2, v0}, Loli;-><init>(ILjava/util/List;)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p0, p1}, Logz;->j(Ljava/lang/String;)V

    goto/32 :goto_64

    nop

    nop

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/16 v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_e2

    nop

    :cond_7
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_162

    nop

    nop

    :goto_44
    goto/32 :goto_159

    nop

    nop

    :goto_45
    iget-object p1, p1, Loio;->g:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_162

    nop

    nop

    :pswitch_2
    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p0, p0, Loio;->k:Ljava/util/Map;

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_4a
    if-nez v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast p0, Lohv;

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_162

    nop

    :cond_9
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Loil;->g()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_162

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_79

    nop

    nop

    :goto_50
    iget-object v0, p1, Loim;->a:Lohw;

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    :goto_51
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :cond_a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :cond_b
    goto/32 :goto_1d4

    nop

    nop

    nop

    :goto_54
    check-cast v2, Lohw;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v4, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, v0, Loli;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_57
    sget-object p1, Lohy;->a:Lohy;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object p1, p0, Loil;->l:Lnar;

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v4, v4, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    new-instance p0, Lofz;

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    :goto_5f
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p1, Lohw;

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_61
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v3, v3, Loil;->b:Logz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-eq p1, v0, :cond_d

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6a

    nop

    nop

    :goto_64
    goto/16 :goto_162

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v5, :cond_e

    nop

    goto/32 :goto_130

    nop

    nop

    :cond_e
    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object p0, p1, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_68
    if-nez v5, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    :cond_f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_69
    check-cast v2, Lohv;

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_6a
    const-string p1, "Connection timed out waiting for Google Play services update to complete."

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    throw p0

    nop

    nop

    :pswitch_5
    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6d
    const-wide/32 v2, 0x493e0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Loio;->q:Loli;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6f
    check-cast p1, Lohx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_70
    check-cast p0, Loil;

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_72
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_74
    sget-object v1, Lohy;->a:Lohy;

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p1, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :try_start_3
    sget-object p1, Lohy;->a:Lohy;

    nop

    nop

    nop

    nop

    iput-boolean v7, p1, Lohy;->e:Z

    nop

    :goto_75
    monitor-exit v0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_57

    nop

    nop

    :goto_76
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_77
    const/16 v4, 0x11

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object p0, p0, Loio;->k:Ljava/util/Map;

    nop

    goto/32 :goto_15e

    nop

    nop

    :goto_7a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    :goto_7b
    invoke-static {p1}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_153

    nop

    nop

    nop

    :goto_7c
    aget-object v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_7d
    new-array v2, v7, [Loky;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object p1, p0, Loil;->b:Logz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-direct {v0, p1}, Lwv;-><init>(Lww;)V

    :goto_80
    goto/32 :goto_be

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p0, v0}, Loil;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v0, p1, Loim;->a:Lohw;

    nop

    goto/32 :goto_197

    nop

    nop

    :goto_83
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_84
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_162

    nop

    nop

    :goto_86
    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    :goto_88
    check-cast p1, Lohe;

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget v2, p1, Lojb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v5, p0}, Loil;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_12f

    nop

    nop

    :goto_8b
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    :goto_8d
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    :goto_8e
    invoke-direct {p0, v0}, Loio;->51550bab6b6440a4fd45f825c221b363m(Lohe;)Loil;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_91
    invoke-virtual {v5, p0}, Loil;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1cd

    nop

    nop

    :goto_93
    iget-object p1, p0, Loil;->b:Logz;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_94
    const/16 v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_95
    if-eqz p1, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object p0, p0, Loil;->b:Logz;

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_97
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_98
    sget-object p1, Loio;->a:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_99
    invoke-virtual {v0}, Loil;->p()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    :goto_9a
    if-eq p0, v1, :cond_11

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v0, p0, Loil;->a:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_9c
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    instance-of v3, v2, Lohp;

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-direct {p0, v4, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_9f
    return v6

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_a0
    check-cast p1, Landroid/app/Application;

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_31

    nop

    nop

    :goto_a2
    if-ne p0, v1, :cond_12

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_12
    goto/32 :goto_1bd

    nop

    nop

    nop

    :goto_a3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_a4
    if-lt v6, v0, :cond_13

    nop

    goto/32 :goto_162

    nop

    :cond_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v1, p1, Lojb;->a:Loky;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    goto/16 :goto_162

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v4, v3, Loil;->k:Loio;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object p1, p0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_aa
    monitor-enter p1

    nop

    nop

    :try_start_4
    iget-object v1, p1, Lohy;->d:Ljava/util/ArrayList;

    nop

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast v1, Lohe;

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_ac
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    :goto_ad
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_ae
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    const/16 v1, 0x64

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b2
    iput-object v1, p0, Loio;->q:Loli;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    if-nez v0, :cond_14

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_16b

    nop

    nop

    nop

    :goto_b4
    iget-object v3, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object v0, p1, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    :goto_b6
    iput-wide v2, p0, Loio;->e:J

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

    :goto_b7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-nez v4, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_15
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-static {p1}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_ba
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object p1, p0, Loil;->e:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p1}, Loil;->c()V

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_bd
    goto/16 :goto_162

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_be
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_162

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_c0
    if-ne v7, p1, :cond_16

    nop

    goto/32 :goto_195

    nop

    nop

    :cond_16
    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object p0, p0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_c2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_c5
    iget-object p0, p0, Loio;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_c6
    iget-object v0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_180

    nop

    nop

    :pswitch_9
    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_12a

    nop

    nop

    :goto_cb
    iget-object v2, v0, Loli;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iput-wide v2, p0, Loio;->e:J

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_ce
    iget p0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    if-nez p1, :cond_17

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    const-string v0, "Unknown message id: "

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v0, p1, Lqxk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_d3
    if-nez v3, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    const/4 v7, 0x1

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_ce

    nop

    nop

    :goto_d6
    check-cast v1, Lohw;

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :goto_d7
    invoke-static {v0, p0, p1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d8
    iget-object v1, v1, Lohe;->e:Lohw;

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_da
    check-cast v3, Lohp;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_db
    invoke-direct {v3, p1}, Loho;-><init>(Logb;)V

    goto/32 :goto_1cc

    nop

    nop

    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_de
    if-eqz v0, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :cond_19
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object p0, p0, Loil;->b:Logz;

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_e4
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    iget v0, v0, Loli;->a:I

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v3}, Loil;->d()V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    move-object v5, v2

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {p0}, Loil;->d()V

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-static {v5, p1}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    goto/16 :goto_162

    nop

    :pswitch_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    if-eqz v0, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :cond_1a
    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    :goto_f1
    check-cast p0, Loil;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_f2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    const-string p1, " while trying to fail enqueued calls."

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {p1}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object p0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_f7
    invoke-interface {p1}, Logz;->k()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    check-cast p1, Loil;

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    const-string v1, "Error resolution was canceled by the user, original error message: CANCELED: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    :goto_fa
    const/16 v0, 0xc

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_fb
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_fc
    if-eq v3, v0, :cond_1b

    nop

    nop

    goto/32 :goto_179

    nop

    :cond_1b
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-interface {v3, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    const-string p1, "GoogleApiManager"

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    :goto_ff
    const/4 v5, 0x0

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

    :goto_100
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_c4

    nop

    nop

    :goto_102
    const-string p1, "API failed to connect while resuming due to an unknown error."

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_103
    if-gt v0, v1, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    :cond_1c
    goto/32 :goto_1be

    nop

    nop

    :goto_104
    iget-object v0, p1, Loio;->h:Logd;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_105
    goto/16 :goto_72

    nop

    :goto_106
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_107
    if-nez p1, :cond_1d

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    iget-object p1, p1, Lojb;->a:Loky;

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_10c
    iget-object v0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    :goto_10e
    const-string p1, "Timing out connection while resuming."

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    const-string p1, "Timing out service connection."

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_110
    goto/16 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_112
    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_114
    goto :goto_11f

    nop

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_116
    invoke-virtual {p1, v2, v4, v3}, Lohx;->a(Lohw;Lofz;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    sget-object v0, Lohy;->a:Lohy;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_118
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_119
    iget-object v0, p0, Loil;->a:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_11a
    iget-object v0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    goto/16 :goto_18

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    const/16 v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_11d
    if-nez v0, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    move v4, v6

    nop

    :goto_11f
    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    if-nez v0, :cond_1f

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iput-object v2, v0, Loli;->b:Ljava/util/List;

    nop

    nop

    :goto_122
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_123
    iget-object v2, v3, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-static {v2}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iget-object v3, p0, Loil;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_126
    if-nez v0, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    :cond_20
    goto/32 :goto_d

    nop

    nop

    :goto_127
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    if-nez v0, :cond_21

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_21
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_129
    check-cast v0, Lohe;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_12a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12b
    invoke-virtual {p0, v0}, Lolq;->a(Loli;)V

    goto/32 :goto_184

    nop

    nop

    :goto_12c
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_12d
    iget-object v0, p0, Loio;->q:Loli;

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    if-eqz p1, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_b6

    nop

    nop

    :goto_12f
    goto/16 :goto_162

    nop

    nop

    :goto_130
    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    :goto_131
    invoke-virtual {p1}, Loil;->n()V

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual {p1, v2, p0, v5}, Lohx;->a(Lohw;Lofz;Ljava/lang/String;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    iget-object v1, p1, Loim;->a:Lohw;

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    nop

    :goto_134
    if-nez v0, :cond_23

    nop

    goto/32 :goto_162

    nop

    nop

    :cond_23
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_135
    check-cast v2, Lohv;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_136
    iget v2, p1, Lojb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v0, p0}, Loil;->e(Lohv;)V

    goto/32 :goto_4f

    nop

    nop

    :goto_138
    if-eqz v2, :cond_24

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    :cond_24
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    if-ge v0, v1, :cond_25

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    new-instance v0, Lwv;

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    :goto_13b
    sget-object v4, Lofz;->a:Lofz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    :goto_13c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_13d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_13e
    invoke-virtual {p1}, Loil;->d()V

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_13f
    iget v1, p1, Lojb;->d:I

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_140
    iget-object v1, v0, Loli;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_141
    iget v1, p1, Lqxk;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_142
    invoke-direct {p0, v1}, Lofz;-><init>(I)V

    goto/32 :goto_132

    nop

    nop

    :goto_143
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_144
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_145
    aput-object p1, v2, v6

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_146
    iget-object v1, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_147
    goto/16 :goto_162

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_6c

    nop

    nop

    :goto_148
    iget-object v2, p0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_149
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :goto_14a
    invoke-virtual {p0}, Loil;->m()V

    goto/32 :goto_165

    nop

    nop

    :goto_14b
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    :goto_14c
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    :goto_14d
    iget-object p0, v5, Loil;->c:Lohw;

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_14e
    iget-wide v3, p0, Loio;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_151
    check-cast p0, Lolx;

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    :goto_152
    iget-object p1, p1, Lofz;->e:Ljava/lang/String;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_153
    iget-boolean p1, p0, Loil;->g:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_154
    iget-object v1, p1, Loim;->a:Lohw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_155
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_156
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_157
    check-cast p1, Loim;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    check-cast v0, Lwu;

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

    :goto_159
    iget-object v4, v3, Loil;->b:Logz;

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    :goto_15a
    invoke-direct {p0}, Loio;->33b3102b6558811a7b7629a1e8e59bd2m()Lolq;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :goto_15b
    goto/16 :goto_162

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_168

    nop

    nop

    nop

    :goto_15c
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    :goto_15d
    iget-boolean v4, v1, Lohy;->e:Z

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_15e
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_15f
    if-eqz p1, :cond_26

    nop

    goto/32 :goto_af

    nop

    :cond_26
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_160
    invoke-static {p0, p1}, Loio;->a(Lohw;Lofz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_161
    goto/16 :goto_101

    nop

    nop

    nop

    :goto_162
    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :goto_163
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_164
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_165
    goto/16 :goto_162

    nop

    :pswitch_f
    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_166
    if-eq v0, v2, :cond_27

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_167
    if-nez p1, :cond_28

    nop

    nop

    goto/32 :goto_1ca

    nop

    :cond_28
    goto/32 :goto_17e

    nop

    nop

    :goto_168
    invoke-direct {p0}, Loio;->3fd9578e124c68aa49885b22b61b4ec8m()V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_169
    iget-object p1, p0, Loio;->g:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    :goto_16a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_16b
    iget-object p0, p0, Loio;->k:Ljava/util/Map;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_16c
    iget-boolean p1, p0, Loil;->g:Z

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16d
    if-eqz v0, :cond_29

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_1bf

    nop

    nop

    nop

    :goto_16e
    iget-object p1, p1, Loim;->b:Logb;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    iget p0, p1, Lofz;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_171
    iget-object v0, p1, Lohy;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_172
    check-cast v3, Loil;

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    :goto_173
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_174
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_175
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    :goto_176
    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_177
    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    :goto_178
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_179
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17a
    iget-wide v1, p1, Lojb;->c:J

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_17c
    const-string p0, "Could not find API instance "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_17d
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_17f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_180
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_181
    iget-object v2, v2, Loio;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_182
    iget-object p1, p1, Lohy;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_183
    throw p0

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_6b

    nop

    nop

    :goto_184
    goto/16 :goto_162

    nop

    :goto_185
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_186
    const/16 v1, 0xf

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_187
    check-cast p1, Lww;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_188
    iget-wide v0, p1, Lojb;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_18a
    invoke-static {v4}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_18c
    iget-object v0, p0, Loil;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_18d
    invoke-interface {v4}, Logz;->k()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_18e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_18f
    if-nez v1, :cond_2a

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_190
    const-string v0, "GoogleApiManager"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_191
    iget v0, p1, Landroid/os/Message;->arg1:I

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_192
    goto/32 :goto_1ae

    nop

    nop

    :goto_193
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_194
    goto/16 :goto_1e1

    nop

    nop

    nop

    :goto_195
    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    :goto_196
    check-cast p0, Loil;

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_198
    if-nez p1, :cond_2b

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    :cond_2b
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_199
    check-cast p1, Lofz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_19b
    check-cast p1, Lqxk;

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-direct {v0, v1, p1}, Loli;-><init>(ILjava/util/List;)V

    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_19d
    sget-object v1, Lohy;->a:Lohy;

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_1a0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1a1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    iget-object v0, p1, Lohx;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    invoke-virtual {p1, v2, v4, v5}, Lohx;->a(Lohw;Lofz;Ljava/lang/String;)V

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    if-nez p1, :cond_2c

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_1a6
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_1a7
    goto/32 :goto_fb

    nop

    nop

    :goto_1a8
    if-eqz p1, :cond_2d

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :cond_2d
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    goto/16 :goto_180

    nop

    nop

    nop

    nop

    :goto_1aa
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_1ab
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_1ac
    if-lez v0, :cond_2e

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_192

    nop

    :goto_1ad
    return v7

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_b
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_1
        :pswitch_8
        :pswitch_4
        :pswitch_f
        :pswitch_10
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_2
        :pswitch_e
        :pswitch_d
        :pswitch_6
    .end packed-switch

    :goto_1ae
    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_1af
    iput-boolean v6, p0, Loio;->f:Z

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_1b0
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_119

    nop

    nop

    :goto_1b1
    iget-object v0, p0, Loio;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    throw v5

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_1b1

    nop

    nop

    nop

    :goto_1b3
    invoke-interface {p1}, Logz;->k()Z

    move-result p1

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_1b4
    const/16 v1, 0xd

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    goto/16 :goto_ca

    nop

    :goto_1b6
    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    new-instance v3, Loho;

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_1b8
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    invoke-virtual {p0}, Loil;->d()V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    iget-object v1, p1, Lqxk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_1bb
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_1bc
    invoke-virtual {p0, p1}, Lohv;->d(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1bd
    iget-object p0, p1, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_1be
    iget-object v0, p1, Lohy;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_1bf
    new-instance v0, Loli;

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

    :goto_1c0
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1c1
    if-nez p1, :cond_2f

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_eb

    nop

    nop

    :goto_1c2
    iget-object p1, p0, Loio;->r:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_1c3
    invoke-direct {p0, p1}, Loio;->51550bab6b6440a4fd45f825c221b363m(Lohe;)Loil;

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_1c4
    iget-object v4, v3, Loil;->i:Lofz;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_1c5
    iget-object v0, p0, Loio;->k:Ljava/util/Map;

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    :goto_1c6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    check-cast v2, Loil;

    nop

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

    nop

    :goto_1c8
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_1c9
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    :goto_1ca
    goto/32 :goto_15

    nop

    nop

    :goto_1cb
    invoke-interface {v3}, Logz;->f()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_1cc
    invoke-virtual {v2, v3}, Lohv;->e(Ljava/lang/Exception;)V

    goto/32 :goto_ba

    nop

    nop

    :goto_1cd
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_1ce
    if-eqz v3, :cond_30

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1cf
    if-lez v4, :cond_31

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_7c

    nop

    nop

    :goto_1d0
    check-cast p0, Loil;

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_1d2
    invoke-virtual {p0}, Loil;->o()V

    goto/32 :goto_189

    nop

    nop

    :goto_1d3
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d5
    if-nez p1, :cond_32

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    invoke-virtual {v0, p1}, Loge;->e(Landroid/content/Context;)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_1d8
    if-nez p1, :cond_33

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    check-cast p0, Loil;

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1da
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1db
    check-cast p1, Loil;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_1dc
    if-nez v0, :cond_34

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_5a

    nop

    nop

    :goto_1dd
    check-cast v0, Loil;

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_1de
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_1df
    const/16 v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    const-wide/16 v2, 0x2710

    nop

    :goto_1e1
    goto/32 :goto_cd

    nop

    nop
.end method

.method public final i(Lpic;ILohe;)V
    .locals 10

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x14

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Lpic;->a:Ljava/lang/Object;

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

    :goto_4
    move-wide v6, v4

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

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

    goto/32 :goto_35

    nop

    :cond_1
    goto/32 :goto_34

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_3d

    nop

    :goto_b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v2, p3, Lolh;->b:Z

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p2, v0}, Loqy;->i(Ljava/util/concurrent/Executor;Loqt;)V

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_3d

    nop

    :goto_15
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v4}, Lojy;->l()Z

    move-result v5

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

    :goto_17
    iget v0, v2, Loil;->j:I

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

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_19
    const v1, 0x2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1a
    new-instance p3, Loja;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move v1, p3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1f
    if-nez v5, :cond_3

    nop

    goto/32 :goto_33

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz p3, :cond_4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Lolg;->a()Lolg;

    move-result-object p3

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_22
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v5, :cond_6

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    :goto_24
    move-object v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_25
    move-wide v8, v4

    nop

    nop

    :goto_26
    goto/32 :goto_24

    nop

    nop

    :goto_27
    iget-boolean p3, p3, Lolh;->c:Z

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

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

    nop

    :goto_29
    move-object v1, p0

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2a
    invoke-static {v2, v4, p2}, Loja;->b(Loil;Lojy;I)Loke;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2b
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2d
    iget-boolean v1, p3, Loke;->c:Z

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v3}, Loio;->b(Lohw;)Loil;

    move-result-object v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_35

    nop

    :goto_30
    iget-object p3, p3, Lolg;->a:Lolh;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-wide v8, v0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_f

    nop

    nop

    :goto_35
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez p2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz p3, :cond_8

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Loio;->g()Z

    move-result p3

    nop

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

    nop

    :goto_39
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3b
    if-eqz v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct/range {v0 .. v7}, Loja;-><init>(Loio;ILohw;JJ)V

    :goto_3d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3e
    iget-object v4, v2, Loil;->b:Logz;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v4}, Lojy;->C()Z

    move-result v5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_a
    goto/32 :goto_41

    nop

    nop

    :goto_41
    goto :goto_3d

    nop

    nop

    :goto_42
    goto/32 :goto_27

    nop

    nop

    :goto_43
    iput v0, v2, Loil;->j:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_44
    move-wide v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {p2, p0}, Loik;-><init>(Landroid/os/Handler;)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_46
    check-cast p1, Loqy;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_47
    if-nez p3, :cond_b

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_b
    goto/32 :goto_d

    nop

    nop

    :goto_48
    check-cast v4, Lojy;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_49
    instance-of v5, v4, Lojy;

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

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v1, :cond_c

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1d

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v3, p3, Lohe;->e:Lohw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4e
    new-instance p2, Loik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4f
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_50
    move-wide v6, v8

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop
.end method
