.class public final Lsfs;
.super Lsfj;
.source "PG"


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static final c:Lsfi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_f

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

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lsfq;

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

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    goto :goto_1

    nop

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

    :goto_6
    invoke-static {}, Lsfr;->a()Z

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    sput-boolean v1, Lsfs;->b:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "robolectric"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-class v0, Landroid/util/Log;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

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

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_f
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    invoke-direct {v0}, Lsfq;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lsfs;->c:Lsfi;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

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

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_14
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    sput-boolean v0, Lsfs;->a:Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Lsfj;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static p()Ljava/lang/Class;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method static q()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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
.end method

.method static bridge synthetic r()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-boolean v0, Lsfs;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method static bridge synthetic s()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-boolean v0, Lsfs;->a:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method static t()Z
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    :try_start_0
    const-string v0, "dalvik.system.VMStack"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    const-string v1, "getStackClass2"

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lsfs;->q()Ljava/lang/String;

    move-result-object v0

    nop

    const-class v1, Lsfr;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v1, 0xe

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected e(Ljava/lang/String;)Lsel;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lsfo;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lsfv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    :goto_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lsfo;->a(Ljava/lang/String;)Lsel;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Lsfv;->e()V

    goto/32 :goto_1f

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    :goto_9
    const/16 v3, 0x24

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

    :goto_a
    const/16 v2, 0x2e

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-gez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p1, Lsfu;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p0, Lsfv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_20

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    const v1, 0x4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_4

    nop

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    :goto_17
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_1a
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    sget-object p1, Lsfv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    goto :goto_29

    nop

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    :goto_20
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_1d

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, p1}, Lsfv;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    :goto_24
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    new-instance p0, Lsfv;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_7

    nop

    nop
.end method

.method protected h()Lsfi;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object p0, Lsfs;->c:Lsfi;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method protected j()Lsgj;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    sget-object p0, Lsfw;->a:Lsfw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected m()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string p0, "platform: Android"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method
