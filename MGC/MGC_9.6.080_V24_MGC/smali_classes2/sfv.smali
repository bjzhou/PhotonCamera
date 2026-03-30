.class final Lsfv;
.super Lsfm;
.source "PG"


# static fields
.field static final a:Z

.field static final b:Z

.field static final c:Z

.field public static final d:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final e:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final f:Lj$/util/concurrent/ConcurrentLinkedQueue;


# instance fields
.field private volatile g:Lsel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_1
    goto :goto_c

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    sput-object v0, Lsfv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    const-string v0, "ranchu"

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lsfv;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_18

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    :goto_d
    const-string v0, "eng"

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

    :goto_e
    move v0, v2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_11
    goto/16 :goto_4

    nop

    :goto_12
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_15
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_16
    const-string v0, "goldfish"

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_17
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sput-boolean v1, Lsfv;->c:Z

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_2
    :goto_1b
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1c
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_21
    sput-object v0, Lsfv;->f:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x15

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    const v1, 0x2

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

    :goto_25
    move v0, v1

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

    nop

    nop

    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_27
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_28
    new-instance v0, Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_29
    goto/32 :goto_1f

    nop

    :goto_2a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2b
    move v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2c
    if-eqz v0, :cond_4

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

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    :goto_2f
    const-string v0, "robolectric"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_30
    const/4 v1, 0x0

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_31
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_35
    const-string v0, "userdebug"

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_36
    sput-boolean v0, Lsfv;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_37
    sput-boolean v0, Lsfv;->a:Z

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

    :goto_38
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3b
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

    :goto_3c
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3d
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3e
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lsfn;->a(Ljava/lang/String;)Lsel;

    move-result-object p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lsfm;->a()Ljava/lang/String;

    move-result-object p1

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p1, Lsfx;->g:I

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    sget-object v4, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1}, Lsfn;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {v0 .. v7}, Lsfx;-><init>(Ljava/lang/String;ZILjava/util/logging/Level;ZLjava/util/Set;Lsew;)V

    goto/32 :goto_2

    nop

    nop

    :goto_c
    iget-boolean v2, p1, Lsfx;->b:Z

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

    :goto_d
    invoke-direct {p0, p1}, Lsfm;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_e
    iget-boolean v5, p1, Lsfx;->d:Z

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

    :goto_f
    iput-object p1, p0, Lsfv;->g:Lsel;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lsfm;->a()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_12
    goto :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    iget-object v7, p1, Lsfx;->f:Lsew;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p1, Lsfx;->a:Ljava/lang/String;

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

    :goto_18
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    :goto_1a
    sget-boolean p1, Lsfv;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    iget-object v6, p1, Lsfx;->e:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_1d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v8, Lsfx;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    sget-boolean p1, Lsfv;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    move-object v0, v8

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p1, :cond_3

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

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    :goto_23
    sget-object p1, Lsfz;->c:Lsfx;

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

    nop

    :goto_24
    new-instance p1, Lsfn;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_25
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_26
    iput-object p1, p0, Lsfv;->g:Lsel;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_27
    invoke-virtual {v8, p1}, Lsfx;->a(Ljava/lang/String;)Lsel;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_28
    goto/32 :goto_4

    nop

    :goto_29
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-boolean p1, Lsfv;->a:Z

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2c
    iput-object p1, p0, Lsfv;->g:Lsel;

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
.end method

.method public static e()V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lsfv;->f()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_7

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lsfv;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

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

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lsfm;->a()Ljava/lang/String;

    move-result-object v2

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

    :goto_b
    sget-object v0, Lsfu;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

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

    :goto_c
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

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

    :goto_d
    invoke-interface {v1, v2}, Lsfo;->a(Ljava/lang/String;)Lsel;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lsfv;->d:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_12
    check-cast v1, Lsfo;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    iput-object v1, v0, Lsfv;->g:Lsel;

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

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_15
    const v1, 0x1f

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method private static f()V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v3, Lsel;

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

    nop

    :goto_2
    sget-object v0, Lsfv;->f:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {v3, v2}, Lsel;->d(Ljava/util/logging/Level;)Z

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Lsel;->c(Lsej;)V

    goto/32 :goto_14

    nop

    nop

    :goto_5
    invoke-interface {v1}, Lsej;->K()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_f

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

    :goto_8
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Lqay;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    check-cast v0, Lsel;

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

    :goto_d
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    sget-object v1, Lsfv;->e:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_f
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1}, Lsej;->o()Ljava/util/logging/Level;

    move-result-object v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    :goto_18
    move-object v3, v0

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

    :goto_19
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    check-cast v0, Lqay;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    :goto_1d
    iget-object v0, v0, Lqay;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Ljava/lang/RuntimeException;Lsej;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const-string p0, "ProxyAndroidLoggerBackend"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p0, p0, Lsfv;->g:Lsel;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lsfv;->g:Lsel;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Lsel;->b(Ljava/lang/RuntimeException;Lsej;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const-string p2, "Internal logging error before configuration"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(Lsej;)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto/32 :goto_21

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    new-instance v1, Lqay;

    nop

    goto/32 :goto_11

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

    goto/32 :goto_1f

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lsfv;->g:Lsel;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lsfv;->f:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, p0, p1}, Lqay;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lsfv;->g:Lsel;

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

    nop

    :goto_13
    invoke-virtual {p0, p1}, Lsel;->c(Lsej;)V

    goto/32 :goto_f

    nop

    nop

    :goto_14
    sget-object v0, Lsfv;->f:Lj$/util/concurrent/ConcurrentLinkedQueue;

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

    :goto_15
    invoke-static {}, Lsfv;->f()V

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lsfv;->g:Lsel;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    const-string v1, "Too many Flogger logs received before configuration. Dropping old logs."

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

    :goto_1c
    const-wide/16 v2, 0x14

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

    nop

    nop

    :goto_1d
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
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

    :goto_20
    sget-object v0, Lsfv;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_21
    const-string v0, "ProxyAndroidLoggerBackend"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    if-gtz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/util/logging/Level;)Z
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_1
    invoke-virtual {p0, p1}, Lsel;->d(Ljava/util/logging/Level;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lsfv;->g:Lsel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

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

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lsfv;->g:Lsel;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
