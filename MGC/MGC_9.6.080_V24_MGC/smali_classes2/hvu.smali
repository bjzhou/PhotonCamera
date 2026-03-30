.class Lhvu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhws;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:I

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:J

.field public final e:Z

.field private final f:Lkqj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->rrd:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    sput-object v0, Lhvu;->a:Lsdb;

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

    :goto_4
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Lprb;Lkqj;Ljava/util/concurrent/Executor;ILhoh;)V
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lprb;->h()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    sget-object p2, Lhmg;->k:Lhmn;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3
    sget-object p2, Lhmg;->d:Lhmn;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v0, p3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lhvu;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8
    goto :goto_c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lprb;->g()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_6

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1b

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

    :goto_e
    invoke-virtual {p5, p2}, Lhoh;->p(Lhmn;)Z

    move-result v2

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

    :goto_f
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_10
    iput-object p2, p0, Lhvu;->f:Lkqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide p1, p0, Lhvu;->d:J

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_23

    nop

    nop

    :goto_16
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/camera/jni/facebeautification/FaceBeautificationNative;->createHandle(IIZZZZ)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_28

    nop

    nop

    :goto_19
    if-eqz p2, :cond_3

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

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_1a
    sget-object p2, Lhmg;->j:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Lprb;->i()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1e
    iput-boolean v2, p0, Lhvu;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p5, p2}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lprb;->j()Z

    move-result p1

    nop

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

    nop

    :goto_21
    if-eqz p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    :goto_22
    invoke-virtual {p5, p2}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_25
    move v1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_26
    invoke-virtual {p5, p2}, Lhoh;->p(Lhmn;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    :goto_28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_29
    sget-object p2, Lhmg;->l:Lhmn;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Lprb;->f()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2b
    iput p4, p0, Lhvu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2c
    move v0, p1

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


# virtual methods
.method public final a(Lhwy;)Lsui;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iget-object p0, p1, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    check-cast v0, Llyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lkqj;->a(Lkqg;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lhwh;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Llyd;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lhvs;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    :goto_f
    iget-object v0, p0, Lhvu;->f:Lkqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-direct {p1, p0}, Lhwh;-><init>(Lprw;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p1, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, p0, p1}, Lhvs;-><init>(Lhvu;Lhwy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lhvr;-><init>(Lhvu;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    new-instance v0, Lhvr;

    nop

    nop

    nop

    goto/32 :goto_0

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

    :goto_3
    iget-object p0, p0, Lhvu;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
