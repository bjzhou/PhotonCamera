.class public final Ljzv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lilg;
.implements Lilh;
.implements Lilq;


# instance fields
.field public final a:Lsuu;

.field public final b:Lpci;

.field public final c:Llxm;

.field public d:Z

.field final e:Lsuu;

.field final f:Lsuu;

.field public final synthetic g:Lhwy;

.field private final h:Lsuu;


# direct methods
.method public constructor <init>(Lhwy;Llxm;Lpci;)V
    .locals 0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ljzv;->c:Llxm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljzv;->f:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lsuu;

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

    :goto_7
    iput-boolean p1, p0, Ljzv;->d:Z

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

    :goto_8
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    new-instance p1, Lsuu;

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

    nop

    :goto_a
    iput-object p1, p0, Ljzv;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    new-instance p1, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lsuu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Ljzv;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    iput-object p1, p0, Ljzv;->h:Lsuu;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Ljzv;->g:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p3, p0, Ljzv;->b:Lpci;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final d(Linb;IJLpro;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p4, p0, Ljzv;->f:Lsuu;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean p2, p0, Ljzv;->d:Z

    nop

    nop

    monitor-exit p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Ljzv;->g:Lhwy;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Ljzv;->a:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p3, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_6
    iget-object p0, p0, Ljzv;->h:Lsuu;

    nop

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

    :goto_7
    monitor-enter p1

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

    :goto_8
    iget-object p1, p0, Ljzv;->g:Lhwy;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    :goto_c
    iget-object p3, p0, Ljzv;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    iget-object p5, p0, Ljzv;->h:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    invoke-direct {v0, p2, p3, p4, p5}, Ljzs;-><init>(Ljava/util/concurrent/Executor;Lsui;Lsui;Lsuu;)V

    goto/32 :goto_13

    nop

    nop

    :goto_f
    iget-object p2, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1, p3, p4}, Ljvz;->d(J)Lprw;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p2, p3}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    iget-object p2, p2, Lhwy;->d:Ljava/lang/Object;

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

    nop

    nop

    :goto_13
    iget-object p2, p0, Ljzv;->e:Lsuu;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    iget-object p1, p1, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Ljzv;->a:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p2, p3}, Ljrq;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_17
    new-instance v0, Ljzs;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_19
    const/16 p3, 0x9

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    check-cast p2, Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p2, Ljrq;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    iget-object p2, p0, Ljzv;->g:Lhwy;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, p0}, Lsuu;->f(Lsui;)Z

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public final dm(Linb;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_1

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
    iget-object p0, p0, Ljzv;->a:Lsuu;

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
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final dn(Linb;Lilk;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Ljzv;->a:Lsuu;

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

    :goto_2
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final do(Linb;Lmjq;Lscn;)V
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

    nop
.end method

.method public final dp(Linb;Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljzv;->f:Lsuu;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

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
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

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

    :goto_4
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method
