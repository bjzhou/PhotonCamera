.class public final synthetic Lmkb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmkl;


# instance fields
.field public final synthetic a:Lptw;

.field public final synthetic b:Lpdf;

.field public final synthetic c:Lcom/google/android/apps/camera/stats/Instrumentation;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/stats/Instrumentation;Lptw;Lpdf;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lmkb;->a:Lptw;

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
    iput p4, p0, Lmkb;->d:I

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

    :goto_3
    iput-object p3, p0, Lmkb;->b:Lpdf;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput-object p1, p0, Lmkb;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v2, v0}, Lmkn;-><init>(Lpty;Lpdf;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lmkb;->a:Lptw;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    :goto_4
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_6
    iget-object v2, p0, Lmkb;->a:Lptw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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
    invoke-direct {v1, v2, v0}, Lmki;-><init>(Lptw;Lpdf;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    goto/32 :goto_12

    nop

    nop

    :goto_a
    iget-object v0, p0, Lmkb;->b:Lpdf;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lmkb;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lmkb;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lmkb;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v1

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    :goto_14
    iget v0, p0, Lmkb;->d:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lmkb;->b:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v1, Lmki;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    :goto_1d
    new-instance v1, Lmkn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;-><init>(Lptw;Lpdf;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    iget-object v2, p0, Lmkb;->a:Lptw;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    new-instance v1, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lmkb;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method
