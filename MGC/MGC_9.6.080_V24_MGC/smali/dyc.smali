.class public final Ldyc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final j:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lyo;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/lang/Runnable;

.field public d:J

.field public e:Z

.field public f:F

.field public g:Ldyb;

.field public final h:Leur;

.field public final i:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

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
    sput-object v0, Ldyc;->j:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Leur;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lyo;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1, v2}, Lkd;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v0, 0x0

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lkd;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Ldyc;->c:Ljava/lang/Runnable;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    :goto_15
    iput-object p1, p0, Ldyc;->h:Leur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    iput-object v0, p0, Ldyc;->a:Lyo;

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

    :goto_17
    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    iput-object v0, p0, Ldyc;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    iput-wide v0, p0, Ldyc;->d:J

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Ldyc;->f:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1c
    iput-boolean v0, p0, Ldyc;->e:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x15

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Lyo;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Ldyc;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public static a()Ldyc;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x14

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

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, v3}, Leur;-><init>([B)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    const v1, 0xf

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v2}, Ldyc;-><init>(Leur;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    check-cast v0, Ldyc;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    sget-object v0, Ldyc;->j:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    new-instance v2, Leur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

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

    :goto_12
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ldyc;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

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
.end method


# virtual methods
.method public final b()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v0, p0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ldyc;->h:Leur;

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

    :goto_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

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

    :goto_6
    const/4 p0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Leur;->b:Ljava/lang/Object;

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

    :goto_a
    check-cast p0, Landroid/os/Looper;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
