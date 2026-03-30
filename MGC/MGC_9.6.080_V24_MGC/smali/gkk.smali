.class public final Lgkk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Loxv;

.field public final c:Loyn;

.field public final d:Lgkx;

.field public final e:Ltxm;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Loyd;

.field public final h:Ltbt;

.field public final i:Ltud;

.field public final j:Lphh;

.field public final k:Lpdf;

.field public l:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

.field public m:Lpgh;

.field public n:Lpci;

.field public o:Z

.field public final p:Lpik;

.field public final q:Lrth;

.field public final r:Lfdo;


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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    sput-object v0, Lgkk;->a:Lsdb;

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
    const-string v0, "gkk"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Loxv;Loyn;Lfdo;Lgkx;Ltxm;Ljava/util/concurrent/Executor;Lpik;Loyd;Ltbt;Lrth;Ltud;Lpdf;Lphh;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iput-object p8, p0, Lgkk;->g:Loyd;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lgkk;->l:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lgkk;->d:Lgkx;

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

    :goto_3
    iput-object p1, p0, Lgkk;->b:Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    iput-object p7, p0, Lgkk;->p:Lpik;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iput-boolean v0, p0, Lgkk;->o:Z

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

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    iput-object p11, p0, Lgkk;->i:Ltud;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lgkk;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    iput-object p12, p0, Lgkk;->k:Lpdf;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p6}, Lsut;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const/4 v0, 0x0

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

    nop

    :goto_d
    iput-object p2, p0, Lgkk;->c:Loyn;

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

    :goto_e
    iput-object p13, p0, Lgkk;->j:Lphh;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    iput-object p5, p0, Lgkk;->e:Ltxm;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    iput-object v0, p0, Lgkk;->m:Lpgh;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p9, p0, Lgkk;->h:Ltbt;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p10, p0, Lgkk;->q:Lrth;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    new-instance p1, Lsut;

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

    :goto_15
    iput-object p3, p0, Lgkk;->r:Lfdo;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    new-instance v0, Lghh;

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const v0, 0x11

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0xb

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    return-void

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

    :goto_d
    iget-object p0, p0, Lgkk;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0, v1}, Lghh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method
