.class public Lmhs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgpg;


# static fields
.field public static final synthetic d:I

.field private static final e:Lsdb;

.field private static final f:Ljava/lang/Integer;


# instance fields
.field public final a:Ljava/util/Timer;

.field public b:Z

.field public c:Lgpf;

.field private final g:Lgpn;

.field private final h:Lmih;

.field private final i:I

.field private final j:I

.field private final k:Lows;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sput-object v0, Lmhs;->f:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "mhs"

    nop

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

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const/16 v0, 0x1f4

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

    :goto_6
    sput-object v0, Lmhs;->e:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmih;IILgpn;Ljava/util/Timer;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lmhs;->j:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    new-instance p2, Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, p3}, Lmih;->a(Lmig;)Lpci;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p2}, Lows;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p3, p0}, Lmhr;-><init>(Lmhs;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lmhs;->a:Ljava/util/Timer;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Lmhs;->b:Z

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

    :goto_9
    iput-object p1, p0, Lmhs;->h:Lmih;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p3, Lmhr;

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

    nop

    nop

    :goto_b
    iput-object p4, p0, Lmhs;->g:Lgpn;

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

    :goto_c
    iput-object p2, p0, Lmhs;->k:Lows;

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
    return-void

    nop

    :goto_e
    invoke-virtual {p2, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput p3, p0, Lmhs;->i:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a([B)V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Lgpn;->a(I)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_b

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

    nop

    nop

    :goto_2
    invoke-direct {v3, v4}, Lpic;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p0, p0, Lmhs;->c:Lgpf;

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

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_6
    const v0, 0x10

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lmhs;->g:Lgpn;

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

    :goto_8
    iget-object v0, p0, Lmhs;->c:Lgpf;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, v3}, Lgpf;->b(Lpic;)V

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v3, Lpic;

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

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    goto :goto_a

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v4, Lqkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    array-length v0, p1

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

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    :goto_18
    invoke-direct {v4, p1, v0, v1, v2}, Lqkg;-><init>(Ljava/nio/ByteBuffer;IJ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public final b()I
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lmih;->b()Lj$/time/Duration;

    move-result-object v0

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

    nop

    nop

    :goto_1
    iget v2, p0, Lmhs;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    const-string v1, "Insufficient sample number per buffer"

    nop

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

    nop

    :goto_3
    iget-object v0, p0, Lmhs;->h:Lmih;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget v0, v0, Lozc;->f:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

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

    :goto_6
    int-to-long v4, p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lozc;->b:Lozc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    mul-long/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    if-gtz p0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1a

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

    :goto_13
    mul-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_15
    const-wide/16 v0, 0x3e8

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    mul-long/2addr v2, v0

    nop

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

    :goto_17
    invoke-static {v2, v3}, Lrrf;->K(J)I

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    int-to-long v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_8

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    div-long/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    return p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    iget p0, p0, Lmhs;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final c()Lgpk;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lgpk;->b:Lgpk;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object p0, p0, Lmhs;->k:Lows;

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

    :goto_2
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Landroid/media/MicrophoneDirection;)V
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

    nop

    nop

    nop
.end method

.method public final f(Lgpf;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lmhs;->c:Lgpf;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const-wide/16 v1, 0x1f4

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

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lmhs;->f:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lmhq;-><init>(Lmhs;)V

    goto/32 :goto_2

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

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
    goto/32 :goto_4

    nop

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

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_a
    new-instance v0, Lmhq;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lmhs;->a:Ljava/util/Timer;

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

.method public final h()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmhs;->h:Lmih;

    nop

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

    :goto_2
    invoke-interface {p0}, Lmih;->c()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final k(Lpic;)V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lgpn;->b(JI)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lgpn;->b(JI)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x111a

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lmhs;->e:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, v3, v1, v2}, Lscz;->u(Ljava/lang/String;J)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Lpic;->g()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lpic;->g()J

    move-result-wide v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    const/16 v1, 0x111b

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, p1, v0, v1}, Lscz;->u(Ljava/lang/String;J)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lpic;->f()I

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lpic;->h()Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    :goto_14
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lmhs;->g:Lgpn;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_16
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lpic;->h()Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v3, "Audio (%d) isn\'t enhanced."

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    iget-boolean v0, p0, Lmhs;->b:Z

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lpic;->g()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    sget-object p0, Lmhs;->e:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_22
    iget-object p0, p0, Lmhs;->g:Lgpn;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x1e

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

    :goto_26
    invoke-interface {v0, v1}, Lmih;->i(Ljava/nio/ByteBuffer;)Z

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Lmhs;->a([B)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    check-cast v0, Lscz;

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

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lmhs;->h:Lmih;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Lpic;->f()I

    move-result v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Lpic;->g()J

    move-result-wide v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2e
    const-string p1, "Audio (%d) isn\'t provided due to invalid state."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method
