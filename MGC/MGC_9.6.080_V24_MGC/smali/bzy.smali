.class public abstract Lbzy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcrw;


# instance fields
.field private a:Lufs;

.field private b:Z

.field private c:Z

.field public p:Lbzy;

.field public q:I

.field public r:I

.field public s:Lbzy;

.field public t:Lbzy;

.field public u:Lcvg;

.field public v:Lcva;

.field public w:Z

.field public x:Z

.field public y:Luaz;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p0, p0, Lbzy;->p:Lbzy;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/4 v0, -0x1

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

    :goto_3
    iput v0, p0, Lbzy;->r:I

    nop

    goto/32 :goto_4

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


# virtual methods
.method public A()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lbzy;->z:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "node attached multiple times"

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

    :goto_2
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_3
    goto/32 :goto_5

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

    :goto_5
    iget-object v0, p0, Lbzy;->v:Lcva;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lbzy;->z:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "attach invoked on a node without a coordinator"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lbzy;->b:Z

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public B()V
    .locals 2

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lbzy;->a:Lufs;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    const-string v0, "Cannot detach a node that is not attached"

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Lufv;->j(Lufs;Ljava/util/concurrent/CancellationException;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

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

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lbzy;->z:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lcaa;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    const-string v0, "Must run runAttachLifecycle() before markAsDetached()"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lbzy;->c:Z

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    iget-boolean v0, p0, Lbzy;->b:Z

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    :goto_10
    iput-object v0, p0, Lbzy;->a:Lufs;

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x11

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    :goto_1a
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1}, Lcaa;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1e
    const-string v0, "Must run runDetachLifecycle() before markAsDetached()"

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_20
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    const v0, 0x1f

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    iget-boolean v0, p0, Lbzy;->z:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public C()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lbzy;->z:Z

    nop

    goto/32 :goto_5

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
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lbzy;->cf()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "reset() called on an unattached node"

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

.method public D()V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lbzy;->c:Z

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lbzy;->ce()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lbzy;->b:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const-string v0, "Must run markAsAttached() prior to runAttachLifecycle"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iput-boolean v0, p0, Lbzy;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

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

    :goto_d
    iget-boolean v0, p0, Lbzy;->z:Z

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

    :goto_e
    const-string v0, "Must run runAttachLifecycle() only once after markAsAttached()"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop
.end method

.method public E()V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "node detached multiple times"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lbzy;->c:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lbzy;->ci()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lbzy;->y:Luaz;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    iget-boolean v0, p0, Lbzy;->z:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    const-string v0, "detach invoked on a node without a coordinator"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Luaz;->a()Ljava/lang/Object;

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lbzy;->v:Lcva;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    iget-boolean v0, p0, Lbzy;->c:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Lcnf;->b(Ljava/lang/String;)V

    :goto_16
    goto/32 :goto_5

    nop

    nop
.end method

.method public F(Lbzy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbzy;->p:Lbzy;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public G(Lcva;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbzy;->v:Lcva;

    nop

    nop

    nop

    goto/32 :goto_1

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

.method public ce()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public cf()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public ci()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public cl()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final y()Lbzy;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lbzy;->p:Lbzy;

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
.end method

.method public final z()Lufs;
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v1, Lcxv;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1, v2}, Luad;->get(Luac;)Luab;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Lcxv;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v2, Lugy;->c:Ltzz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Lcrx;->f(Lcrw;)Lcvm;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v1, Lugy;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    invoke-static {v0}, Lufv;->i(Luad;)Lufs;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    iget-object v1, v1, Lcxv;->e:Luad;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lbzy;->a:Lufs;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    new-instance v2, Luha;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_f
    iget-object v0, v0, Lcxv;->e:Luad;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v2}, Luad;->plus(Luad;)Luad;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Lcrx;->f(Lcrw;)Lcvm;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    const v1, 0x15

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v2, v1}, Luha;-><init>(Lugy;)V

    goto/32 :goto_10

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    return-object v0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lbzy;->a:Lufs;

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop
.end method
