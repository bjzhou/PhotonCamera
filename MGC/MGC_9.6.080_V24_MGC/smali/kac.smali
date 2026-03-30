.class final Lkac;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkag;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lkac;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkac;->a:Ljava/lang/Object;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljzx;)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkac;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Ljzz;

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v3, v2, Ljzz;->d:Z

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    check-cast v1, Ljzz;

    nop

    nop

    nop

    iput-object p1, v1, Ljzz;->e:Lrss;

    nop

    nop

    iget-object p0, p0, Lkac;->a:Ljava/lang/Object;

    nop

    nop

    check-cast p0, Ljzz;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljzz;->c()V

    monitor-exit v0

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    iget-object v0, p0, Lkac;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    iget-object p0, p0, Lkac;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Lkac;->b:I

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

    :goto_10
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lkad;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lkad;->b()V

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final b(JLkak;)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lkac;->b:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lkac;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

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
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lkac;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xe

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lkad;->b()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkac;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljzz;

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v3, v2, Ljzz;->b:Z

    nop

    nop

    nop

    invoke-static {p3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p3

    nop

    nop

    nop

    check-cast v1, Ljzz;

    nop

    nop

    nop

    nop

    nop

    iput-object p3, v1, Ljzz;->c:Lrss;

    nop

    iget-object p0, p0, Lkac;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object p3, p0

    nop

    nop

    nop

    nop

    nop

    check-cast p3, Ljzz;

    nop

    nop

    nop

    iput-wide p1, p3, Ljzz;->f:J

    nop

    nop

    check-cast p0, Ljzz;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljzz;->c()V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_f
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_10
    const v0, 0xc

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

    :goto_11
    check-cast p0, Lkad;

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

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
