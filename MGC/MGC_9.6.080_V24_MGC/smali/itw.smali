.class public Litw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final p:Lsdb;


# instance fields
.field public final a:Lpdf;

.field public final b:Lpcu;

.field public final c:Livg;

.field public final d:Livj;

.field public final e:Lowu;

.field public final f:Loxv;

.field public final g:Lfyu;

.field public h:Landroid/view/Surface;

.field public i:Lphh;

.field public j:Lpgh;

.field public k:Lpgg;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Lpiz;

.field public n:Lpik;

.field public o:Liuh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "itw"

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sput-object v0, Litw;->p:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpiz;Lpcu;Lpdf;Livg;Livj;Lowu;Lfyu;)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Litw;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p7, p0, Litw;->g:Lfyu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Litw;->b:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Litw;->c:Livg;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    iput-object p5, p0, Litw;->d:Livj;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "ImaxFrameServer"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Litw;->m:Lpiz;

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

    :goto_a
    iput-object p3, p0, Litw;->a:Lpdf;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p6, p0, Litw;->e:Lowu;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    :goto_10
    invoke-direct {p1, p2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_12
    const v1, 0x6

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_15
    new-instance p1, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_18
    invoke-interface {p2, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0xb

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Litw;->f:Loxv;

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const-string v0, "Panorama failed to lock 3A."

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    sget-object p1, Litw;->p:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    :try_start_0
    iget-object p0, p0, Litw;->n:Lpik;

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    nop

    nop

    nop

    invoke-virtual {p0, p1, p1, p1}, Lpik;->q(ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_10

    nop

    nop

    :goto_7
    const-string v0, "Panorama failed to unlock 3A."

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p1, Litw;->p:Lsdb;

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

    :goto_a
    const v0, 0x3

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

    :goto_b
    const/16 v1, 0x76e

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

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

    :goto_d
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    :goto_f
    const/16 v1, 0x770

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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
    goto/32 :goto_e

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

    :catch_1
    move-exception p0

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

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    if-nez p1, :cond_1

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

    :cond_1
    :try_start_1
    iget-object p0, p0, Litw;->n:Lpik;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lpik;->w()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_14

    nop

    nop

    :goto_18
    invoke-static {v0, v1, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Litw;->f:Loxv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
