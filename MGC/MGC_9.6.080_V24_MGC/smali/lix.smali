.class public final Llix;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lljh;


# static fields
.field static final a:Ljava/lang/Long;

.field public static final b:Landroid/util/Range;


# instance fields
.field public final c:Loyn;

.field public final d:Lhoh;

.field private final e:Loyn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    sput-object v0, Llix;->a:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    new-instance v1, Landroid/util/Range;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v1, Llix;->b:Landroid/util/Range;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/high16 v0, -0x8000000000000000L

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const v1, 0xd

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    const v0, 0x12

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhoh;Loyn;Loyd;Lpnv;Lggp;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llix;->d:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-interface {p3, p2, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

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

    :goto_2
    sget-object p2, Llix;->b:Landroid/util/Range;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_b

    nop

    nop

    :goto_5
    sget-object p0, Lstd;->a:Lstd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1, p2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p5, Lggp;->b:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    invoke-direct {p2, p0, p4, p5}, Lliy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Llix;->e:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p5, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    new-instance p2, Lliy;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Llix;->c:Loyn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p1, Loxv;

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
.end method


# virtual methods
.method public final a()Loyd;
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
    iget-object p0, p0, Llix;->c:Loyn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized b(Z)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Llix;->e:Loyn;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Llja;

    nop

    new-instance v1, Llpl;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Llpl;-><init>(Llja;)V

    invoke-virtual {v1, p1}, Llpl;->f(Z)V

    invoke-virtual {v1}, Llpl;->d()Llja;

    move-result-object p1

    nop

    nop

    nop

    iget-object v0, p0, Llix;->e:Loyn;

    nop

    nop

    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(J)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    const v0, 0x14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_7

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

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llix;->e:Loyn;

    nop

    nop

    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Llja;

    nop

    nop

    nop

    nop

    new-instance v1, Llpl;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Llpl;-><init>(Llja;)V

    invoke-virtual {v1, p1, p2}, Llpl;->e(J)V

    invoke-virtual {v1}, Llpl;->d()Llja;

    move-result-object p1

    nop

    iget-object p2, p0, Llix;->e:Loyn;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p1}, Loyn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
