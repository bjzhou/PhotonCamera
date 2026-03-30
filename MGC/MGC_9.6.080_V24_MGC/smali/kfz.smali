.class final Lkfz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkiu;


# instance fields
.field final synthetic a:Lpol;

.field final synthetic b:Lkjj;

.field final synthetic c:J

.field final synthetic d:Lpro;

.field final synthetic e:Lprw;

.field final synthetic f:Lprw;

.field final synthetic g:Lkjb;

.field final synthetic h:Lpcu;

.field final synthetic i:Lkga;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_2
    new-instance v1, Lqwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    invoke-direct {v1, v0, v2, v3, v4}, Lqwy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v1, p1, p2}, Lkhf;->b(Lqwy;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    iget-object p0, p0, Lkga;->a:Lkhf;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lkfz;->i:Lkga;

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
    invoke-static {v3}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v4, v4, Lkjj;->a:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    iget-object v3, p0, Lkfz;->d:Lpro;

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

    :goto_b
    iget-object v0, p0, Lkfz;->b:Lkjj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    iget-object v0, v0, Lkjj;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v2, p0, Lkfz;->c:J

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    iget-object v4, p0, Lkfz;->b:Lkjj;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkga;Lpol;Lkjj;JLpro;Lprw;Lprw;Lkjb;Lpcu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkfz;->a:Lpol;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iput-object p7, p0, Lkfz;->e:Lprw;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p10, p0, Lkfz;->h:Lpcu;

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
    iput-object p1, p0, Lkfz;->i:Lkga;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide p4, p0, Lkfz;->c:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lkfz;->d:Lpro;

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

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p8, p0, Lkfz;->f:Lprw;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Lkfz;->b:Lkjj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iput-object p9, p0, Lkfz;->g:Lkjb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/RuntimeException;)V
    .locals 2

    goto/32 :goto_f

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

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkfz;->f:Lprw;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkfz;->g:Lkjb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lprw;->close()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Lkjb;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lpol;->l()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1, p1}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    iget-object v0, p0, Lkfz;->a:Lpol;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "Couldn\'t retrieve Rgb result from FastMomentsHdr"

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    const v0, 0x1b

    nop

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

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    iget-object v0, p0, Lkfz;->h:Lpcu;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lkfz;->f:Lprw;

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

    :goto_1
    invoke-interface {p0, p1}, Lkjb;->c(Lprw;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkfz;->a:Lpol;

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

    :goto_3
    invoke-virtual {v0}, Lpol;->l()V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-interface {p2}, Lprw;->close()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p2}, Lkfz;->23ce148e54b083367f51e25c7971761em(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lkfz;->g:Lkjb;

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final c(Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkfz;->g:Lkjb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_3
    const v0, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Lkjb;->c(Lprw;)V

    goto/32 :goto_11

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    iget-object v4, p0, Lkfz;->b:Lkjj;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v3}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v3

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

    :goto_8
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Lsgj;->w(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, p0, Lkfz;->d:Lpro;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lpol;->l()V

    goto/32 :goto_d

    nop

    nop

    :goto_d
    iget-object v0, p0, Lkfz;->b:Lkjj;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v2, p0, Lkfz;->c:J

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

    nop

    :goto_f
    new-instance v1, Lqwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    iget-object v0, v0, Lkjj;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Lkfz;->e:Lprw;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    invoke-interface {p2}, Lprw;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Lkga;->a:Lkhf;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lkfz;->a:Lpol;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lkfz;->i:Lkga;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean v4, v4, Lkjj;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    iget-object p2, p0, Lkfz;->f:Lprw;

    nop

    nop

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

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    :goto_1c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, v0, v2, v3, v4}, Lqwy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, v1, p1, v2, p2}, Lkhf;->a(Lqwy;Lcom/google/googlex/gcam/YuvWriteView;Lprw;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;

    move-result-object p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkfz;->g:Lkjb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object v0, p0, Lkfz;->a:Lpol;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lpol;->l()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Lkjb;->c(Lprw;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lkfz;->f:Lprw;

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

    :goto_6
    invoke-interface {p2}, Lprw;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p2}, Lkfz;->23ce148e54b083367f51e25c7971761em(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
