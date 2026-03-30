.class public final Lqth;
.super Lqtg;
.source "PG"

# interfaces
.implements Lqpc;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const-string v9, "Warm startup interactive"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "Cold startup interactive from process creation"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    const-string v5, "Cold startup"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    sget-object v2, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->JRcK:Ljava/lang/String;

    nop

    goto/32 :goto_10

    nop

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

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    const-string v10, "Warm startup interactive before onDraw"

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v4, "Cold startup from process creation"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    const-string v7, "Cold startup interactive before onDraw"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    const-string v3, "Cold startup class loading"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    const-string v8, "Warm startup"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    const-string v6, "Cold startup interactive"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    const/4 v2, 0x0

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

    :goto_15
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "Cold startup interactive before onDraw from process creation"

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    invoke-static/range {v5 .. v11}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqpa;Ltud;Ltxm;Lqop;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/4 p3, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p4, p2, p1, p3}, Lhqb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Lhqb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lqtg;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lstd;->a:Lstd;

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

    nop

    :goto_6
    invoke-direct {p0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Lqrg;->H(Lrtm;)Lrtm;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x4

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

    :goto_a
    invoke-virtual {p1, p0, p2, p3}, Lqpa;->a(Ljava/util/concurrent/Executor;Ltud;Ltxm;)Lqoz;

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic U()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method
