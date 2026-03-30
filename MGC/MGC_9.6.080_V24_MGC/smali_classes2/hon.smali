.class public final Lhon;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Loxv;

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

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    :goto_7
    iput-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    new-instance v0, Loxv;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1a

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_13
    new-instance v0, Loxv;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/ContentProvider;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

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

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhon;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lgvg;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const-class v0, Landroid/app/NotificationManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    check-cast p1, Landroid/app/NotificationManager;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhon;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

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
.end method

.method public constructor <init>(Landroid/content/Context;Lhoh;Lpct;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lhon;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p3, p1}, Lpct;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhon;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "ShotFailureHdlr"

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lpdf;Lhoh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput-object p3, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhon;->b:Ljava/lang/Object;

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
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Ljava/util/Set;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2}, Lhyk;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

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
    iput-object p1, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iput-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p2, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Ljha;Ljov;Ljmo;Lfwv;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lhon;->b:Ljava/lang/Object;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lhon;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljip;Ljif;Ljik;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lhon;->c:Ljava/lang/Object;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmjv;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhon;->c:Ljava/lang/Object;

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

    :goto_3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/util/SparseArray;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lojd;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhon;->b:Ljava/lang/Object;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lhon;->c:Ljava/lang/Object;

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

    nop
.end method

.method public constructor <init>(Lojd;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/Runnable;[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Lhon;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

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

    :goto_4
    iput-object p1, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

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
    iput-object p2, p0, Lhon;->c:Ljava/lang/Object;

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
    iput-object p3, p0, Lhon;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lhuh;)V
    .locals 12

    goto/32 :goto_64

    nop

    nop

    :goto_0
    sget-object p0, Lggr;->a:Lsdb;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v10, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v7, 0x149

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_8
    sget-object v4, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->EPs:Ljava/lang/String;

    nop

    nop

    :goto_9
    goto/32 :goto_68

    nop

    nop

    :goto_a
    const-string v1, "Shot Exception!"

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    array-length v5, v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    const/16 v1, 0x148

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_d
    move-object v0, p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v4, v3

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_14
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_15
    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v6, 0x0

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

    :goto_1b
    move v7, v6

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    const-string v1, "Could not find SilentFeedbackService, not sending crash info."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_21
    const-string v2, "com.google.android.apps.camera.app.silentfeedback.SilentFeedbackService.throwingMethod"

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_22
    new-instance v5, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1, v0, v5, v4}, Lggr;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_24
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_25
    const-string v6, "com.google.android.apps.camera.app.silentfeedback.SilentFeedbackService.exceptionClass"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_27
    const v1, 0x6

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

    :goto_28
    iget-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_29
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

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

    nop

    :goto_2c
    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aget-object v9, v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2f
    sget v0, Lhmy;->a:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_31
    const-string v0, "com.google.android.apps.camera.app.silentfeedback.SilentFeedbackService.throwingFile"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_32
    if-eqz v8, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_73

    nop

    :goto_34
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v0, "com.google.android.apps.camera.app.silentfeedback.SilentFeedbackService.categoryTag"

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

    nop

    :goto_36
    add-int v0, v0, v1

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

    :goto_37
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_22

    nop

    nop

    :goto_39
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_e

    nop

    nop

    :goto_3e
    const-string v6, "Could not find our own package. This should never happen. Not sending crash info."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3f
    new-instance v5, Landroid/content/ComponentName;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v0, v1, p0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_41
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_42
    if-eqz v3, :cond_5

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_48

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v8, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    nop

    nop

    :goto_46
    goto/32 :goto_53

    nop

    nop

    :goto_47
    sget-object p0, Lhmq;->a:Ljava/lang/Float;

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

    :goto_48
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_49
    :try_start_0
    move-object v3, p0

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    nop

    nop

    nop

    nop

    move-object v5, p0

    nop

    nop

    check-cast v5, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v5, Lggr;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4b
    const/16 v1, 0x14c

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

    nop

    :goto_4c
    return-void

    nop

    :goto_4d
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

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

    :goto_4f
    array-length v3, v3

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

    :goto_50
    const-string v11, "com.google.android.apps.camera.app.silentfeedback.SilentFeedbackService"

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_52
    const/4 v4, 0x0

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

    :goto_53
    add-int/lit8 v7, v7, 0x1

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

    :goto_54
    sget-object v0, Lggr;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_1
    check-cast p0, Landroid/content/Context;

    nop

    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_58
    aget-object v2, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_59
    iget-object p0, p0, Lhon;->a:Ljava/lang/Object;

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

    :goto_5a
    const-string v5, "com.google.android.apps.camera.app.silentfeedback.SilentFeedbackService.throwingClass"

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_5b
    new-instance v3, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {v6, v7, v5, v3}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_7

    nop

    nop

    :goto_61
    invoke-virtual {p1}, Lhuh;->a()Z

    move-result v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_6f

    nop

    nop

    :goto_63
    const-string v0, "failed to start silent feedback service"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_65
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_66
    const-string v4, "com.google.android.apps.camera.app.silentfeedback.SilentFeedbackService.throwingLine"

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

    :goto_67
    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_68
    const-string v5, ".SILENT_FEEDBACK"

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_69
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

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

    :goto_6b
    if-lt v7, v5, :cond_7

    nop

    goto/32 :goto_1e

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const-string v5, "com.google.android.apps.camera.app.silentfeedback.SilentFeedbackService.stackTrace"

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_6e
    invoke-interface {v0, v1, p1}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_6f
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_9

    nop

    :goto_71
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_41

    nop

    nop

    :catch_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_76
    move-object v8, v4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 12

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v0, "sensor"

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    invoke-static {v0, v1}, Lhyk;->b(Ljava/lang/String;Ljava/util/Collection;)V

    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lhyj;

    nop

    invoke-virtual {v1}, Lhyj;->e()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_0

    nop

    invoke-virtual {v1}, Lhyj;->f()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    nop

    nop

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    move-object v5, v2

    nop

    nop

    nop

    check-cast v5, Landroid/hardware/Sensor;

    nop

    nop

    invoke-virtual {v1, v5}, Lhyj;->h(Landroid/hardware/Sensor;)V

    new-instance v6, Lhzb;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v1, v2}, Lhzb;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    invoke-virtual {v2, v6, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v10, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Leqn;

    nop

    const/4 v7, 0x7

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v2, v11

    nop

    move-object v3, p0

    nop

    nop

    move-object v4, v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v2 .. v8}, Leqn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x8

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x16

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

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

    goto/32 :goto_d

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_d
    rem-int v0, v0, v1

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
.end method

.method public final d()Lpci;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->Z()Lpci;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop
.end method

.method public final declared-synchronized e(Ljava/util/Set;)Lsui;
    .locals 16

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    :goto_5
    goto/16 :goto_18

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x8

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

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_b
    move-object v3, v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v2}, Lows;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v2, Lows;

    nop

    invoke-direct {v2}, Lows;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lhon;->d()Lpci;

    move-result-object v0

    nop

    invoke-virtual {v2, v0}, Lows;->d(Lpci;)V

    new-instance v0, Lphu;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lphu;-><init>(Lhon;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_c

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lpip;

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lpip;->a:Lryy;

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    :cond_1
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    const-wide/16 v8, 0x0

    nop

    nop

    if-eqz v6, :cond_7

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lpma;

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v0, Lphu;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    nop

    nop

    nop

    nop

    if-nez v12, :cond_1

    nop

    nop

    nop

    iget-object v12, v0, Lphu;->d:Lhon;

    nop

    nop

    nop

    iget-object v12, v12, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v13, v12

    nop

    nop

    nop

    nop

    check-cast v13, Lnar;

    nop

    invoke-virtual {v13, v6}, Lnar;->D(Lpma;)Lppu;

    move-result-object v13

    nop

    nop

    nop

    nop

    if-nez v13, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v6, Lpma;->e:Lpic;

    nop

    nop

    iget-object v14, v14, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v14, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    const-wide/16 v10, 0x1

    nop

    nop

    invoke-virtual {v14, v10, v11}, Landroidx/wear/ambient/AmbientDelegate;->ac(J)Lsui;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    :cond_2
    const/4 v10, 0x0

    nop

    :goto_11
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lqrg;->B(Z)V

    iget-wide v7, v6, Lpma;->c:J

    nop

    nop

    nop

    nop

    nop

    move-object v9, v12

    nop

    nop

    nop

    check-cast v9, Lnar;

    nop

    nop

    invoke-virtual {v9, v7, v8}, Lnar;->C(J)Lppu;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Lnar;

    nop

    nop

    nop

    iget-object v8, v12, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-wide v14, v6, Lpma;->c:J

    nop

    nop

    check-cast v8, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v14, v15}, Landroidx/wear/ambient/AmbientDelegate;->ac(J)Lsui;

    move-result-object v8

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v8, 0x0

    nop

    nop

    nop

    :goto_12
    if-eqz v13, :cond_4

    nop

    if-eqz v7, :cond_4

    nop

    nop

    invoke-virtual {v6}, Lpma;->k()Z

    move-result v8

    nop

    nop

    nop

    nop

    invoke-static {v7, v13, v8}, Lpmq;->f(Lppu;Lppu;Z)Lpmq;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    :cond_4
    if-nez v10, :cond_5

    nop

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v10

    nop

    nop

    :cond_5
    if-nez v8, :cond_6

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v8

    nop

    :cond_6
    new-instance v7, Lpjm;

    nop

    invoke-direct {v7, v6}, Lpjm;-><init>(Lpma;)V

    invoke-static {v10, v8, v7}, Lolx;->bk(Lsui;Lsui;Lpcb;)Lsui;

    move-result-object v7

    nop

    nop

    nop

    :goto_13
    new-instance v8, Lpht;

    nop

    nop

    const/4 v9, 0x1

    nop

    invoke-direct {v8, v6, v9}, Lpht;-><init>(Ljava/lang/Object;I)V

    sget-object v9, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8, v9}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v0, Lphu;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lphu;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    nop

    nop

    :cond_7
    iget-object v5, v4, Lpip;->b:Lryy;

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    :cond_8
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_b

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lpmb;

    nop

    nop

    nop

    nop

    iget-object v10, v0, Lphu;->b:Ljava/util/List;

    nop

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    nop

    if-nez v10, :cond_8

    nop

    nop

    nop

    iget-wide v10, v6, Lpmb;->b:J

    nop

    nop

    cmp-long v10, v10, v8

    nop

    nop

    nop

    nop

    nop

    if-lez v10, :cond_a

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v0, Lphu;->d:Lhon;

    nop

    nop

    iget-object v10, v10, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lqrg;->B(Z)V

    iget-wide v11, v6, Lpmb;->b:J

    nop

    move-object v13, v10

    nop

    nop

    check-cast v13, Lnar;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v11, v12}, Lnar;->C(J)Lppu;

    move-result-object v11

    nop

    nop

    if-nez v11, :cond_9

    nop

    nop

    check-cast v10, Lnar;

    nop

    nop

    nop

    iget-object v10, v10, Lnar;->b:Ljava/lang/Object;

    nop

    iget-wide v11, v6, Lpmb;->b:J

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    invoke-virtual {v10, v11, v12}, Landroidx/wear/ambient/AmbientDelegate;->ac(J)Lsui;

    move-result-object v10

    nop

    new-instance v11, Lpmy;

    nop

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    invoke-direct {v11, v12}, Lpmy;-><init>(I)V

    sget-object v12, Lstd;->a:Lstd;

    nop

    invoke-static {v10, v11, v12}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v10

    nop

    move-object v11, v10

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_9
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11, v10, v12}, Lpmq;->f(Lppu;Lppu;Z)Lpmq;

    move-result-object v11

    nop

    invoke-static {v11}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v11

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v13, Lpht;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v13, v6, v7}, Lpht;-><init>(Ljava/lang/Object;I)V

    sget-object v14, Lstd;->a:Lstd;

    nop

    nop

    nop

    invoke-static {v11, v13, v14}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v11

    nop

    nop

    nop

    iget-object v13, v0, Lphu;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    nop

    nop

    nop

    nop

    :cond_a
    const/4 v10, 0x0

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    iget-object v11, v0, Lphu;->a:Ljava/util/List;

    nop

    nop

    invoke-static {v6}, Lpmc;->g(Lphh;)Lpmo;

    move-result-object v13

    nop

    nop

    nop

    nop

    invoke-static {v13}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v13

    nop

    nop

    nop

    nop

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_16
    iget-object v11, v0, Lphu;->b:Ljava/util/List;

    nop

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    nop

    nop

    nop

    :cond_b
    iget-object v5, v0, Lphu;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    nop

    :cond_c
    iget-object v3, v0, Lphu;->a:Ljava/util/List;

    nop

    nop

    invoke-static {v3}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    new-instance v4, Lpht;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0, v5}, Lpht;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v0}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Lows;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_0

    nop

    nop

    :goto_17
    move-object v2, v0

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v3

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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
.end method

.method public final declared-synchronized f(Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    invoke-virtual {p0, p1, v0}, Lhon;->g(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized g(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 18

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    move-object v2, v0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v2, Lows;

    nop

    nop

    nop

    invoke-direct {v2}, Lows;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lhon;->d()Lpci;

    move-result-object v0

    nop

    nop

    invoke-virtual {v2, v0}, Lows;->d(Lpci;)V

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    nop

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_3

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lpir;

    nop

    iget-object v9, v7, Lpir;->b:Ljava/util/Set;

    nop

    nop

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    check-cast v10, Lpmo;

    nop

    invoke-interface {v10}, Lpmo;->d()Lphh;

    move-result-object v11

    nop

    nop

    nop

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    nop

    if-nez v12, :cond_1

    nop

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    nop

    :cond_1
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    invoke-static {v10}, La;->au(Z)V

    goto :goto_9

    nop

    nop

    :cond_2
    iget-object v9, v7, Lpir;->a:Lpgo;

    nop

    nop

    check-cast v9, Lpip;

    nop

    nop

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    nop

    xor-int/2addr v8, v10

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lrrf;->x(Z)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    nop

    nop

    nop

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    :cond_4
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_13

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Lpip;

    nop

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    nop

    if-nez v10, :cond_4

    nop

    nop

    nop

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v7, Lpip;->a:Lryy;

    nop

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    nop

    nop

    const-wide/16 v13, 0x0

    nop

    if-eqz v12, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Lpma;

    nop

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    nop

    nop

    nop

    nop

    if-nez v16, :cond_5

    nop

    nop

    iget-object v15, v12, Lpma;->e:Lpic;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Lpic;->r()Lpci;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v15}, Lows;->d(Lpci;)V

    iget-object v15, v1, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v9, v15

    nop

    nop

    nop

    check-cast v9, Lnar;

    nop

    nop

    nop

    invoke-virtual {v9, v12}, Lnar;->D(Lpma;)Lppu;

    move-result-object v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_6

    nop

    nop

    nop

    :goto_c
    const/4 v8, 0x0

    nop

    nop

    goto :goto_e

    nop

    :cond_6
    move-object/from16 v17, v9

    nop

    nop

    nop

    iget-wide v8, v12, Lpma;->c:J

    nop

    cmp-long v8, v8, v13

    nop

    if-lez v8, :cond_7

    nop

    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    :cond_7
    const/4 v8, 0x0

    nop

    nop

    :goto_d
    invoke-static {v8}, Lqrg;->B(Z)V

    iget-wide v8, v12, Lpma;->c:J

    nop

    nop

    nop

    nop

    move-object v13, v15

    nop

    check-cast v13, Lnar;

    nop

    nop

    nop

    invoke-virtual {v13, v8, v9}, Lnar;->C(J)Lppu;

    move-result-object v8

    nop

    if-nez v8, :cond_8

    nop

    invoke-virtual {v12}, Lpma;->k()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_8

    nop

    check-cast v15, Lnar;

    nop

    iget-object v8, v15, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-wide v13, v12, Lpma;->c:J

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    invoke-virtual {v8, v13, v14}, Landroidx/wear/ambient/AmbientDelegate;->aa(J)Lppu;

    move-result-object v8

    nop

    nop

    :cond_8
    if-nez v8, :cond_9

    nop

    invoke-virtual/range {v17 .. v17}, Lppu;->close()V

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    invoke-virtual {v12}, Lpma;->k()Z

    move-result v9

    nop

    nop

    move-object/from16 v13, v17

    nop

    nop

    nop

    nop

    invoke-static {v8, v13, v9}, Lpmq;->f(Lppu;Lppu;Z)Lpmq;

    move-result-object v8

    nop

    nop

    :goto_e
    if-nez v8, :cond_a

    nop

    goto/16 :goto_11

    nop

    nop

    :cond_a
    invoke-static {v12, v8}, Lpmh;->e(Lphh;Lpmq;)Lpmo;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    nop

    goto/16 :goto_b

    nop

    :cond_b
    iget-object v7, v7, Lpip;->b:Lryy;

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    nop

    :cond_c
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_11

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lpmb;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_c

    nop

    nop

    nop

    nop

    iget-wide v11, v8, Lpmb;->b:J

    nop

    cmp-long v9, v11, v13

    nop

    nop

    if-lez v9, :cond_10

    nop

    nop

    iget-object v9, v1, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    invoke-static {v11}, La;->au(Z)V

    iget-wide v13, v8, Lpmb;->b:J

    nop

    check-cast v9, Lnar;

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v13, v14}, Lnar;->C(J)Lppu;

    move-result-object v9

    nop

    nop

    if-nez v9, :cond_d

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_d
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v12, v11}, Lpmq;->f(Lppu;Lppu;Z)Lpmq;

    move-result-object v9

    nop

    :goto_10
    if-eqz v9, :cond_e

    nop

    invoke-static {v8, v9}, Lpmc;->e(Lphh;Lpmq;)Lpmo;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    nop

    nop

    :cond_e
    :goto_11
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    nop

    const/4 v15, 0x0

    nop

    nop

    :goto_12
    if-ge v15, v7, :cond_12

    nop

    nop

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Lpmo;

    nop

    invoke-interface {v8}, Lpmo;->a()Lpci;

    move-result-object v8

    nop

    nop

    nop

    if-eqz v8, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Lpci;->close()V

    :cond_f
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    :cond_10
    const/4 v12, 0x0

    nop

    nop

    nop

    invoke-static {v8}, Lpmc;->g(Lphh;)Lpmo;

    move-result-object v8

    nop

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    const-wide/16 v13, 0x0

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    :cond_11
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ge v15, v7, :cond_12

    nop

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Lpmo;

    nop

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    xor-int/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9}, Lrrf;->x(Z)V

    invoke-interface {v8}, Lpmo;->d()Lphh;

    move-result-object v9

    nop

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_12
    const/4 v8, 0x1

    nop

    nop

    goto/16 :goto_a

    nop

    :cond_13
    const/4 v12, 0x0

    nop

    iget-object v5, v1, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Landroid/util/ArrayMap;

    nop

    nop

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_14

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v7, Lpmo;

    nop

    invoke-interface {v7}, Lpmo;->d()Lphh;

    move-result-object v8

    nop

    nop

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_14
    new-instance v0, Lryw;

    nop

    invoke-direct {v0}, Lryw;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_1b

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Lpip;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    move-object v9, v12

    nop

    nop

    nop

    nop

    :cond_15
    :goto_17
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    if-eqz v10, :cond_16

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Lpir;

    nop

    nop

    nop

    nop

    iget-object v11, v10, Lpir;->a:Lpgo;

    nop

    nop

    nop

    nop

    nop

    if-ne v11, v7, :cond_15

    nop

    nop

    move-object v9, v10

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    :cond_16
    if-eqz v9, :cond_17

    nop

    nop

    nop

    invoke-virtual {v0, v9}, Lryw;->h(Ljava/lang/Object;)V

    goto :goto_16

    nop

    nop

    nop

    nop

    :cond_17
    new-instance v8, Lryw;

    nop

    nop

    nop

    invoke-direct {v8}, Lryw;-><init>()V

    iget-object v9, v7, Lpip;->c:Lryy;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lryy;->em()Lscp;

    move-result-object v9

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_1a

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    check-cast v10, Lphh;

    nop

    nop

    nop

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    nop

    check-cast v11, Lpmo;

    nop

    if-nez v11, :cond_19

    nop

    nop

    nop

    instance-of v11, v10, Lpma;

    nop

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_18

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lpmq;->g()Lpmq;

    move-result-object v11

    nop

    nop

    nop

    new-instance v13, Lpmh;

    nop

    nop

    nop

    invoke-direct {v13, v10, v11}, Lpmh;-><init>(Lphh;Lpmq;)V

    invoke-virtual {v11, v13}, Lpmq;->e(Lpci;)V

    move-object v11, v13

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    :cond_18
    instance-of v11, v10, Lpmb;

    nop

    nop

    invoke-static {v11}, Lqrg;->B(Z)V

    invoke-static {v10}, Lpmc;->f(Lphh;)Lpmo;

    move-result-object v11

    nop

    nop

    nop

    :goto_19
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-virtual {v8, v11}, Lryw;->h(Ljava/lang/Object;)V

    goto :goto_18

    nop

    nop

    nop

    :cond_1a
    invoke-virtual {v8}, Lryw;->g()Lryy;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    move-object v9, v5

    nop

    nop

    nop

    nop

    check-cast v9, Lpic;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v7, v8}, Lpir;->o(Lpic;Lpgo;Ljava/util/Set;)Lpir;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v0, v7}, Lryw;->h(Ljava/lang/Object;)V

    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    invoke-virtual {v0}, Lryw;->g()Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Lows;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v3, v0

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v2}, Lows;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    :goto_1c
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

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

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    throw v0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final h()Lsln;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget v1, v1, Lpcg;->e:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    check-cast v1, Llad;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    iget p0, p0, Lmyr;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-static {v0, v1, p0}, Lnzk;->aY(ZII)Lsln;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    const v0, 0x17

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lmyr;

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

    :goto_8
    iget-object p0, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

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

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x18

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Llad;->a()Lpcg;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_13
    iget-object v0, p0, Lhon;->c:Ljava/lang/Object;

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

    nop

    nop

    :goto_14
    check-cast v0, Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Lrss;Lrss;Loyd;Z)Lmqu;
    .locals 9

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-object p4

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lhon;->b:Ljava/lang/Object;

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

    nop

    :goto_7
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p4, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    :try_start_0
    iget-object p4, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v0, Lhnq;->e:Lhmn;

    nop

    nop

    nop

    check-cast p4, Lhoh;

    nop

    nop

    invoke-virtual {p4, v0}, Lhoh;->p(Lhmn;)Z

    move-result p4

    nop

    nop

    nop

    if-nez p4, :cond_1

    nop

    nop

    nop

    const/4 p4, 0x0

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 p4, 0x1

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    :goto_9
    iget-object p4, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lhnq;->d:Lhmn;

    nop

    nop

    nop

    nop

    nop

    check-cast p4, Lhoh;

    nop

    nop

    invoke-virtual {p4, v0}, Lhoh;->p(Lhmn;)Z

    move-result p4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v6, p4

    nop

    nop

    nop

    nop

    nop

    new-instance p4, Lmqu;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lhnq;->f:Lhmn;

    nop

    check-cast v0, Lhoh;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    iget-object v0, p0, Lhon;->c:Ljava/lang/Object;

    nop

    sget-object v1, Lhnq;->g:Lhmn;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lhoh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    iget-object v0, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    sget-object v1, Lhnq;->h:Lhmn;

    nop

    check-cast v0, Lhoh;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v7, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Landroid/content/Context;

    nop

    move-object v0, p4

    nop

    nop

    nop

    move-object v1, p1

    nop

    nop

    nop

    move-object v2, p2

    nop

    move-object v8, p3

    nop

    nop

    nop

    invoke-direct/range {v0 .. v8}, Lmqu;-><init>(Lrss;Lrss;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Loyd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_c
    iget-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    const-string v1, "RoiTracker"

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

    :goto_14
    rem-int v0, v0, v1

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
.end method

.method public final declared-synchronized j()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lqdp;

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Lqdp;->b:I

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    return p0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final declared-synchronized k()Lmjq;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    return-object v3

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :cond_1
    :try_start_0
    iget-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lqdp;

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, v0, Lqdp;->a:J

    nop

    nop

    nop

    sub-long v3, v1, v3

    nop

    const-wide/32 v5, 0xea60

    nop

    nop

    nop

    cmp-long v3, v3, v5

    nop

    nop

    nop

    if-gtz v3, :cond_1

    nop

    nop

    nop

    new-instance v3, Lmjq;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Lmjq;-><init>()V

    iget v4, v0, Lqdp;->b:I

    nop

    nop

    nop

    nop

    iput v4, v3, Lmjq;->b:I

    nop

    nop

    nop

    nop

    iget-wide v4, v0, Lqdp;->a:J

    nop

    nop

    nop

    sub-long/2addr v1, v4

    nop

    nop

    nop

    nop

    iput-wide v1, v3, Lmjq;->a:J

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const v1, 0x4

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

    :goto_a
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized l(I)Ljava/util/List;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

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

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v0, Landroid/util/SparseArray;

    nop

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

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

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const v0, 0xb

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final declared-synchronized m(IJ)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Landroid/util/SparseArray;

    nop

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_4
    const v1, 0x14

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

.method public final declared-synchronized n(Lmjn;)V
    .locals 12

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

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

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    const v0, 0x7

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    nop

    new-instance v5, Lqdp;

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v6, v7, v4}, Lqdp;-><init>(JI)V

    iget-object v4, p0, Lhon;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    sget-object v7, Lsob;->f:Lsob;

    nop

    nop

    invoke-virtual {p1}, Lmjn;->b()Ljava/lang/Long;

    move-result-object v11

    nop

    nop

    nop

    iget-object v4, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v6, v4

    nop

    check-cast v6, Lmjv;

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    const/4 v8, 0x0

    nop

    invoke-virtual/range {v6 .. v11}, Lmjv;->a(Lsob;Lsoo;Lsor;Lspj;Ljava/lang/Long;)V

    iget-object v4, p1, Lmjn;->j:Lmjp;

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    iput-wide v0, v4, Lmjp;->c:J

    nop

    nop

    :cond_1
    iput-wide v2, p1, Lmjn;->b:J

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    throw p1

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final o()Landroid/app/NotificationChannel;
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v0, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    const-string v1, "Sideline"

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

    :goto_2
    invoke-direct {v2, v1, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x17

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

    :goto_4
    return-object v0

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

    nop

    :goto_6
    return-object v2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Landroid/app/NotificationManager;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x3

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lhon;->a:Ljava/lang/Object;

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

    :goto_13
    check-cast p0, Landroid/app/NotificationManager;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_15
    iget-object p0, p0, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Landroid/app/NotificationChannel;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_1c
    const v3, 0x7f14046f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final p()V
    .locals 8

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v3, "EXTRA_REQUIRE_BUGREPORT"

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const/4 v4, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    const v1, 0x10

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v3, Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

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

    :goto_7
    new-instance v3, Landroid/content/Intent;

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
    check-cast p0, Landroid/app/NotificationManager;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a
    const-string v4, "EXTRA_DEEPLINK"

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    const/high16 v6, 0x44000000    # 512.0f

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
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_d
    invoke-static {v3, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_e
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    check-cast v2, Landroid/content/Context;

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

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v4, 0x7f14073a

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/32 v6, 0xa833

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

    :goto_13
    goto/32 :goto_23

    nop

    nop

    :goto_14
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_16
    check-cast v3, Landroid/content/Context;

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

    :goto_17
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1123f

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    const v2, 0x7f14073b

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, p0, Lhon;->c:Ljava/lang/Object;

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

    :goto_1b
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_1c
    iget-object v3, v3, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

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

    :goto_1f
    iget-object p0, p0, Lhon;->a:Ljava/lang/Object;

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

    :goto_20
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_24
    const-string v3, "EXTRA_COMPONENT_ID"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2b
    const/high16 v4, 0x10000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2c
    check-cast v3, Landroid/content/Context;

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

    :goto_2d
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_30
    invoke-direct {v1, v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_31
    const-string v3, "EXTRA_HAPPENED_TIME"

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

    :goto_32
    invoke-virtual {p0}, Lhon;->o()Landroid/app/NotificationChannel;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, p0, Lhon;->b:Ljava/lang/Object;

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

    :goto_34
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

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

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v3, Landroid/content/Context;

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

    :goto_37
    const-string v4, "com.google.android.apps.betterbug.intent.FILE_BUG_DEEPLINK"

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

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_39
    const-string v4, "EXTRA_ISSUE_TITLE"

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3a
    const v4, 0x7f060a89

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

    nop

    nop

    :goto_3b
    new-instance v1, Landroid/app/Notification$Builder;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_14

    nop

    :goto_3d
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

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

    :goto_3e
    const v2, 0x7f0802d9

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v2, p0, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_40
    iget-object v3, p0, Lhon;->c:Ljava/lang/Object;

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
.end method
