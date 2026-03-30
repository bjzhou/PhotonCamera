.class public Lohe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lohi;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Logy;

.field public final e:Lohw;

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Lohh;

.field protected final i:Loio;

.field public final j:Lpic;

.field public final k:Lnar;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(ILojj;)Loqy;
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    check-cast p0, Loqy;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    const/4 p0, 0x4

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

    :goto_3
    iget-object v2, p0, Lohe;->i:Loio;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p2, Lqxk;

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

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    invoke-direct {v0, v1}, Lpic;-><init>([S)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    iget v1, p2, Lojj;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lpic;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, v2, Loio;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    new-instance v1, Loht;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_e
    const v0, 0xc

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

    :goto_f
    invoke-direct {p2, v1, v2, p0}, Lqxk;-><init>(Lohv;ILohe;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, v2, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    iget-object p0, v0, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    invoke-direct {v1, p1, p2, v0}, Loht;-><init>(ILojj;Lpic;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v0, v1, p0}, Loio;->i(Lpic;ILohe;)V

    goto/32 :goto_c

    nop

    nop

    :goto_1b
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v2, Lohd;->a:Lohd;

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

    :goto_1
    invoke-static {p0}, Lowi;->b(Landroid/content/Context;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v1, 0x7

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
    return-void

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    sget-object v1, Logy;->a:Logx;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    sget-object v0, Lomv;->a:Lnar;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

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
    goto/32 :goto_4

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1, v0, v1, v2}, Lohe;-><init>(Landroid/content/Context;Lnar;Logy;Lohd;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    const v0, 0xd

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lnar;Logy;Lohd;)V
    .locals 5

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p3, p2}, Loio;->f(Loii;)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p4

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance v3, Lpic;

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p1

    nop

    nop

    invoke-direct {v3, p1}, Lpic;-><init>(Landroid/content/AttributionSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p2, Loii;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_4
    iget-object p1, p5, Lohd;->b:Landroid/os/Looper;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p5, v2}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v4, v3

    nop

    nop

    :goto_8
    goto/32 :goto_62

    nop

    nop

    :goto_9
    iget-boolean p5, p4, Lbo;->t:Z

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p4, Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_b
    if-nez p4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v3, p0, Lohe;->j:Lpic;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p5, Loiv;->a:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_e
    const-string v3, "The provided context did not have an application context."

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-static {v2, v3}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_10
    invoke-virtual {p5, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v2}, Loio;->c(Landroid/content/Context;)Loio;

    move-result-object p3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    invoke-direct {v1, p5}, Lai;-><init>(Lcj;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p3, p0, Lohe;->h:Lohh;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    const-string v2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    iput-object p3, p0, Lohe;->i:Loio;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p2, "Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_3
    :goto_19
    goto/32 :goto_30

    nop

    nop

    :goto_1a
    const-string v2, "Null context is not permitted."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_1b
    if-nez p4, :cond_4

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p4, Lojh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    instance-of p4, p2, Lbr;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    throw p1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p5

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p1, Ljava/lang/IllegalStateException;

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

    :goto_22
    if-eqz p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p3, p0}, Loip;-><init>(Lohe;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_29
    goto/32 :goto_d

    nop

    nop

    :goto_2a
    if-eqz p4, :cond_6

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :cond_6
    :goto_2b
    :try_start_1
    invoke-virtual {p2}, Lbr;->dq()Lcj;

    move-result-object p4

    nop

    nop

    nop

    invoke-virtual {p4, v0}, Lcj;->d(Ljava/lang/String;)Lbo;

    move-result-object p4

    nop

    nop

    nop

    check-cast p4, Lojh;

    nop

    nop
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2d
    new-instance p3, Loip;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p5, p4, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2f
    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_30
    new-instance p4, Lojh;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object p5, Lojh;->a:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p4, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

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

    :goto_38
    invoke-direct {p2, p4, p3}, Loii;-><init>(Loiu;Loio;)V

    :goto_39
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v2, p0, Lohe;->b:Landroid/content/Context;

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

    :goto_3b
    if-nez p4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_24

    nop

    :goto_3f
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast p2, Lbr;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_42
    iput-object p1, p0, Lohe;->e:Lohw;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance p1, Lohw;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_44
    iput-object p3, p0, Lohe;->k:Lnar;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_45
    const/4 p2, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_47
    if-eqz p4, :cond_8

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p4, p5, Lohd;->c:Lolx;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_49
    goto :goto_52

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {p4}, Loiv;-><init>()V

    goto/32 :goto_60

    nop

    nop

    :goto_4c
    sget-object p4, Lojh;->a:Ljava/util/WeakHashMap;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_4d
    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_6e

    nop

    nop

    :goto_4e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_4f
    const-class p2, Loii;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_51
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_7f

    nop

    nop

    :goto_53
    goto/16 :goto_6f

    nop

    :catch_1
    move-exception p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_54
    const-string p2, "Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {p4}, Lojh;-><init>()V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_56
    new-instance p4, Loiv;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_34

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_8

    nop

    :goto_59
    goto/32 :goto_7

    nop

    nop

    :goto_5a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p4, p3, Loio;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5c
    if-nez p2, :cond_9

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

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

    :goto_5e
    if-nez p4, :cond_a

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v0, "SLifecycleFragmentImpl"

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_61
    check-cast p2, Loii;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iput-object v4, p0, Lohe;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_63
    sget-object p4, Loiv;->a:Ljava/util/WeakHashMap;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_64
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p4, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_66
    invoke-virtual {p2}, Lbr;->dq()Lcj;

    move-result-object p5

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v1, Lai;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_68
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_b
    goto/32 :goto_23

    nop

    :goto_69
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6a
    if-eq p4, p5, :cond_c

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6b
    if-nez p5, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_d
    :goto_6c
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v1, p4, v0}, Lcp;->m(Lbo;Ljava/lang/String;)V

    goto/32 :goto_74

    nop

    nop

    :goto_6e
    invoke-virtual {p5, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6f
    goto/32 :goto_4f

    nop

    nop

    :goto_70
    invoke-virtual {p4, p1}, Lww;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_72
    const-string v1, "LifecycleFragmentImpl"

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {p1, v2}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1}, Lcp;->g()V

    :goto_75
    goto/32 :goto_35

    nop

    nop

    :goto_76
    if-nez p4, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_e
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_77
    invoke-direct {p1, p3, p4, v4}, Lohw;-><init>(Lnar;Logy;Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-interface {p4, p2}, Loiu;->c(Ljava/lang/Class;)Loit;

    move-result-object p2

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_79
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-eqz p4, :cond_f

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_f
    :goto_7b
    :try_start_2
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p4

    nop

    nop

    invoke-virtual {p4, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p4

    nop

    nop

    nop

    check-cast p4, Loiv;

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iput-object p4, p0, Lohe;->d:Logy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7d
    iget-object p4, p2, Loii;->e:Lww;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7f
    iget-object p1, p3, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iput-object p1, p0, Lohe;->f:Landroid/os/Looper;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_81
    check-cast p4, Loiv;

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

    :goto_82
    invoke-virtual {p4}, Loiv;->isRemoving()Z

    move-result p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_83
    iput p4, p0, Lohe;->g:I

    nop

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

    :goto_84
    check-cast p4, Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lnar;Logy;Lohd;)V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    move-object v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v5, p4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    move-object v4, p3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    move-object v1, p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    move-object v0, p0

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

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-direct/range {v0 .. v5}, Lohe;-><init>(Landroid/content/Context;Landroid/app/Activity;Lnar;Logy;Lohd;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    goto/32 :goto_9

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Loro;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0, p2, v1}, Lohe;-><init>(Landroid/content/Context;Lnar;Logy;Lohd;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    sget-object v0, Lorp;->a:Lnar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

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
    const v1, 0x1d

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lohd;->a:Lohd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static h(Loti;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const-string v0, "channel must not be null"

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final b()Lohw;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lohe;->e:Lohw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final c()Loka;
    .locals 4

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v3, Landroid/accounts/Account;

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

    :goto_1
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2
    goto/16 :goto_37

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Loka;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v2, v1, Logw;

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

    :goto_8
    iget-object v1, p0, Lohe;->d:Logy;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v3, v0, Loka;->a:Landroid/accounts/Account;

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

    :goto_b
    iput-object v2, v0, Loka;->b:Lww;

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    iput-object v1, v0, Loka;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_e
    invoke-direct {v3, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p0, v0, Loka;->c:Ljava/lang/String;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_10
    if-nez v2, :cond_1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_35

    nop

    nop

    :goto_12
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_14
    new-instance v2, Lww;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_15
    const-string v2, "com.google"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    check-cast v1, Logw;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1}, Logw;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of v2, v1, Logw;

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

    nop

    :goto_1d
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->a()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_20
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, v0, Loka;->b:Lww;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lohe;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_23
    iget-object v2, v0, Loka;->b:Lww;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v1, Logw;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lohe;->d:Logy;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lohe;->d:Logy;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_29
    check-cast v1, Logv;

    nop

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

    nop

    :goto_2a
    instance-of v2, v1, Logv;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_6

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

    :cond_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v1}, Logw;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2e
    goto :goto_37

    nop

    nop

    :goto_2f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, v1}, Lww;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_22

    nop

    nop

    :goto_31
    const v1, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3e

    nop

    nop

    :goto_34
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_36
    invoke-interface {v1}, Logv;->a()Landroid/accounts/Account;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lohe;->b:Landroid/content/Context;

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

    :goto_3a
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v2}, Lww;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v0, Loka;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3e
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lojj;)Loqy;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    invoke-direct {p0, v0, p1}, Lohe;->166277962e993c138a6b1f0c9b571cc0m(ILojj;)Loqy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method public final e(Loix;I)Loqy;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0, p2, p0}, Loio;->i(Lpic;ILohe;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    iget-object v1, v1, Loio;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    const v0, 0x17

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    iget-object v1, p0, Lohe;->i:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v2, Lqxk;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 p0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

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

    :goto_d
    new-instance p2, Lohu;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_14

    nop

    nop

    :goto_10
    invoke-virtual {p1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, v0, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Lpic;-><init>([S)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v2, p2, v1, p0}, Lqxk;-><init>(Lohv;ILohe;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Loqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, v1, Loio;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p2, p1, v0}, Lohu;-><init>(Loix;Lpic;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(ILohz;)V
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {v1, p1, p2}, Lohr;-><init>(ILohz;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    iput-boolean v1, p2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    goto :goto_5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_12
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_6

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p2, v1, p1, p0}, Lqxk;-><init>(Lohv;ILohe;)V

    goto/32 :goto_18

    nop

    nop

    :goto_15
    new-instance v1, Lohr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    iget-object p0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, p2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Z

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, v0, Loio;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    new-instance p2, Lqxk;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lohe;->i:Loio;

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

    :goto_22
    rem-int v0, v0, v1

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

    nop
.end method

.method public final g()Loqy;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Loji;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lohe;->d(Lojj;)Loqy;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Lopt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v0, 0x18

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

    :goto_7
    invoke-direct {v1, v2}, Lopt;-><init>(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Loji;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Loji;->a()Lojj;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
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

    :goto_c
    const/16 v1, 0x1195

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    const v1, 0x13

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v1, v0, Loji;->a:Lojf;

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

    :goto_10
    iput v1, v0, Loji;->c:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public final i(Lohz;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, p1}, Lohe;->f(ILohz;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final j(Lojj;)V
    .locals 1

    goto/32 :goto_2

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
    invoke-direct {p0, v0, p1}, Lohe;->166277962e993c138a6b1f0c9b571cc0m(ILojj;)Loqy;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

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
.end method

.method public final k(Lhon;)Loqy;
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_1
    iget-object p0, v0, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2
    invoke-direct {v3, v5, v0}, Lohs;-><init>(Lhon;Lpic;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v6, p1, Lhon;->b:Ljava/lang/Object;

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

    nop

    :goto_4
    const v1, 0x7

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

    :goto_5
    invoke-direct {v0, v1}, Lpic;-><init>([S)V

    goto/32 :goto_6

    nop

    nop

    :goto_6
    iget-object v2, p1, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    check-cast v2, Lojd;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    iget-object v4, p0, Lohe;->i:Loio;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lqxk;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 p0, 0x8

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
    iget v3, v2, Lojd;->d:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, v4, Loio;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v3, v2, p0}, Lqxk;-><init>(Lohv;ILohe;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lojd;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v5, Lhon;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lojd;->a()Loix;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "Listener has already been released."

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

    :goto_18
    goto/32 :goto_23

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p1, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p1, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v5, v2, v6, p1, v1}, Lhon;-><init>(Lojd;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/Runnable;[B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v6, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v3, Lohs;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    return-object p0

    nop

    :goto_23
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_19

    nop

    :goto_25
    iget-object p1, v4, Loio;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Loqy;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4, v0, v3, p0}, Loio;->i(Lpic;ILohe;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop
.end method
