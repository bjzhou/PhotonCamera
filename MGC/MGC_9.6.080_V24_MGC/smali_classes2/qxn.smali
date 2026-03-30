.class public final Lqxn;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Z

.field public static final c:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sput-object v0, Lqxn;->c:Ljava/util/concurrent/ConcurrentMap;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

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
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    sput-object v0, Lqxn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_1

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
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3
    sget-object v2, Lqxn;->c:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    const-string p0, "com.google.android.gms.phenotype.PACKAGE_NAME"

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v1, Lrsu;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_16

    nop

    :goto_8
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-interface {p2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object p2

    nop

    goto/32 :goto_2e

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

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_e
    const v0, 0x20

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p1, "../"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_11
    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Lqxd;->b()V

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v2, Lqxd;->i:Lqnt;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p1, "PhUpdateBroadcastRecv"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    if-lt v0, p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_21
    invoke-static {p0, p1, p2}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_22
    sget-object p2, Lqxn;->c:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    :goto_24
    if-nez v2, :cond_4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_26
    const-string p2, ". Exiting."

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v1, Lqxd;

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

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2d
    check-cast v2, Ljava/lang/String;

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

    :goto_2e
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_8

    nop

    nop

    :goto_30
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_31
    const-string p1, "Got an invalid config package for P/H that includes \'..\': "

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_33
    iget-object v2, v1, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_35
    const-string p1, "/.."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_35

    nop

    nop

    nop
.end method
