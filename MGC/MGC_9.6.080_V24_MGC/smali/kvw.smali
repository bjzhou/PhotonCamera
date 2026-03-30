.class public final Lkvw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loyn;


# instance fields
.field public final a:Lkog;

.field private final b:Z

.field private final c:Lkvv;

.field private final d:Lkvv;


# direct methods
.method public constructor <init>(Loyn;Loyn;Lkog;Lkvu;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lkvv;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lkvw;->a:Lkog;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-virtual {p3}, Lpoh;->J()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iput-object v0, p0, Lkvw;->c:Lkvv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p1, p4}, Lkvv;-><init>(Loyn;Lkvu;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lkvw;->b:Z

    nop

    goto/32 :goto_7

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

    :goto_8
    invoke-direct {p1, p2, p4}, Lkvv;-><init>(Loyn;Lkvu;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lkvv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iput-object p1, p0, Lkvw;->d:Lkvv;

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
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_c

    nop

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Loyv;->a(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lkvw;->c:Lkvv;

    nop

    nop

    goto/32 :goto_13

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

    goto/32 :goto_f

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lkvw;->a:Lkog;

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

    :goto_a
    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lpoh;->l()Lpog;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    check-cast p1, Lkvu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Loyv;->a(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lkvw;->d:Lkvv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lkvw;->c:Lkvv;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1, p2}, Loyv;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    new-instance v1, Ljyl;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x15

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

    nop

    :goto_4
    const/4 v2, 0x7

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x11

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, p0, p1, v2, v3}, Ljyl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_14

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

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    const/4 v3, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, v1, p2}, Loyv;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v1, Ljyl;

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

    :goto_12
    new-instance v0, Lows;

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

    :goto_13
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lkvw;->d:Lkvv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, p0, p1, v2, v3}, Ljyl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic cM()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

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

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lkvw;->a:Lkog;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lpog;->a:Lpog;

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

    :goto_a
    iget-object p0, p0, Lkvw;->c:Lkvv;

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

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Lkvu;

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lpoh;->l()Lpog;

    move-result-object v0

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

    :goto_10
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Loyv;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    goto/32 :goto_3

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Loyv;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    check-cast p0, Lkvu;

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

    :goto_17
    iget-boolean v0, p0, Lkvw;->b:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lkvw;->d:Lkvv;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_19
    sget-object p0, Lkvu;->b:Lkvu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_1b
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method
