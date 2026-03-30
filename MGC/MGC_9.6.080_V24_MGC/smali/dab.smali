.class public final Ldab;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbns;


# instance fields
.field public final a:Landroid/view/Choreographer;

.field private final b:Lczw;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Lczw;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ldab;->b:Lczw;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldab;->a:Landroid/view/Choreographer;

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


# virtual methods
.method public final a(Lubk;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

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

    nop

    nop

    :goto_1
    iget-object p1, p0, Ldab;->b:Lczw;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-instance p1, Lczz;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

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

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p2, v1}, Lufa;-><init>(Ltzy;I)V

    goto/32 :goto_f

    nop

    nop

    :goto_8
    iget-object v2, p1, Lczw;->c:Landroid/view/Choreographer;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_17

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

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p2, v0, p1}, Ldaa;-><init>(Luez;Lubk;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const v0, 0x12

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

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1, p0, p2}, Lczz;-><init>(Ldab;Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_16

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lufa;->y()V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_11
    iget-object p0, p1, Lczw;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lufa;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lufa;->i()Ljava/lang/Object;

    move-result-object p0

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

    :goto_15
    const v1, 0x10

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

    :goto_16
    invoke-interface {v0, p1}, Luez;->d(Lubk;)V

    :goto_17
    goto/32 :goto_14

    nop

    nop

    :goto_18
    invoke-interface {v0, p0}, Luez;->d(Lubk;)V

    goto/32 :goto_9

    nop

    nop

    :goto_19
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1a
    monitor-exit p0

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

    :goto_1b
    monitor-exit p0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    invoke-static {p2}, Lrkm;->x(Ltzy;)Ltzy;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    new-instance p0, Lczy;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    iget-object p1, p0, Ldab;->a:Landroid/view/Choreographer;

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

    :goto_20
    iget-object v3, p0, Ldab;->a:Landroid/view/Choreographer;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    invoke-direct {p0, p1, p2}, Lczy;-><init>(Lczw;Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v2, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_25
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p1, Lczw;->f:Ljava/util/List;

    nop

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p1, Lczw;->h:Z

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    iput-boolean v1, p1, Lczw;->h:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p1, Lczw;->c:Landroid/view/Choreographer;

    nop

    iget-object v2, p1, Lczw;->i:Lczv;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p2, Ldaa;

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
.end method

.method public final fold(Ljava/lang/Object;Lubo;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Lrkm;->y(Luab;Ljava/lang/Object;Lubo;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final get(Luac;)Luab;
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

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lrkm;->z(Luab;Luac;)Luab;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic getKey()Luac;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lbns;->e:Lbnr;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final minusKey(Luac;)Luad;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lrkm;->A(Luab;Luac;)Luad;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final plus(Luad;)Luad;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lrkm;->B(Luab;Luad;)Luad;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method
